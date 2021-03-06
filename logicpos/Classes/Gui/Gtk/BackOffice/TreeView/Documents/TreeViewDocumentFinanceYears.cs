﻿using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.financial;
using logicpos.financial.library.Classes.Finance;
using logicpos.Classes.Gui.Gtk.WidgetsGeneric;
using logicpos.resources.Resources.Localization;
using logicpos.shared;
using System;
using System.Collections.Generic;
using System.Drawing;

namespace logicpos.Classes.Gui.Gtk.BackOffice
{
    class TreeViewDocumentFinanceYears : GenericTreeViewXPO
    {
        //Public Parametless Constructor Required by Generics
        public TreeViewDocumentFinanceYears() { }

        public TreeViewDocumentFinanceYears(Window pSourceWindow)
            : this(pSourceWindow, null, null, null) { }

        //XpoMode
        public TreeViewDocumentFinanceYears(Window pSourceWindow, XPGuidObject pDefaultValue, CriteriaOperator pXpoCriteria, Type pDialogType, GenericTreeViewMode pGenericTreeViewMode = GenericTreeViewMode.Default, GenericTreeViewNavigatorMode pGenericTreeViewNavigatorMode = GenericTreeViewNavigatorMode.Default)
        {
            //Init Vars
            Type xpoGuidObjectType = typeof(FIN_DocumentFinanceYears);
            //Override Default Value with Parameter Default Value, this way we can have diferent Default Values for GenericTreeView
            FIN_DocumentFinanceYears defaultValue = (pDefaultValue != null) ? pDefaultValue as FIN_DocumentFinanceYears : null;
            //Override Default DialogType with Parameter Dialog Type, this way we can have diferent DialogTypes for GenericTreeView
            Type typeDialogClass = (pDialogType != null) ? pDialogType : typeof(DialogDocumentFinanceYears);

            //Configure columnProperties
            List<GenericTreeViewColumnProperty> columnProperties = new List<GenericTreeViewColumnProperty>();
            columnProperties.Add(new GenericTreeViewColumnProperty("FiscalYear") { Title = Resx.global_fiscal_year });
            columnProperties.Add(new GenericTreeViewColumnProperty("Designation") { Title = Resx.global_designation });
            //columnProperties.Add(new GenericTreeViewColumnProperty("Disabled") { Title = Resx.global_record_disabled });

            //Configure Criteria/XPCollection/Model : Use Default Filter
            CriteriaOperator criteria = (ReferenceEquals(pXpoCriteria, null)) ? CriteriaOperator.Parse("(Disabled = 0 OR Disabled IS NULL)") : pXpoCriteria;
            XPCollection xpoCollection = new XPCollection(GlobalFramework.SessionXpo, xpoGuidObjectType, criteria);

            //Protection to Disable Series Before Creating Year
            this.RecordBeforeInsert += TreeViewDocumentFinanceYears_RecordBeforeInsert;
            this.RecordAfterInsert += TreeViewDocumentFinanceYears_RecordAfterInsert;

            //Call Base Initializer
            base.InitObject(
              pSourceWindow,                  //Pass parameter 
              defaultValue,                   //Pass parameter
              pGenericTreeViewMode,           //Pass parameter
              pGenericTreeViewNavigatorMode,  //Pass parameter
              columnProperties,               //Created Here
              xpoCollection,                  //Created Here
              typeDialogClass                 //Created Here
            );
        }

        void TreeViewDocumentFinanceYears_RecordBeforeInsert(object sender, EventArgs e)
        {
            try
            {
                //Get Current Active FinanceYear
                FIN_DocumentFinanceYears currentDocumentFinanceYear = ProcessFinanceDocumentSeries.GetCurrentDocumentFinanceYear();

                //If has Active FiscalYear, Show Warning Request to Close/Open
                if (currentDocumentFinanceYear != null)
                {
                    ResponseType responseType = Utils.ShowMessageTouch(
                        GlobalApp.WindowStartup,
                        DialogFlags.Modal,
                        new Size(600, 400),
                        MessageType.Question,
                        ButtonsType.YesNo,
                        Resx.window_title_series_fiscal_year_close_current,
                        string.Format(Resx.dialog_message_series_fiscal_year_close_current, currentDocumentFinanceYear.Designation)
                    );

                    //Override Insert CRUD ShowDialog using SkipRecordInsert
                    _skipRecordInsert = (responseType == ResponseType.No);

                    if (responseType == ResponseType.Yes)
                    {
                        //Disable All Related Year Series and TerminalSeries
                        bool resultDisableFiscalYear = ProcessFinanceDocumentSeries.DisableActiveYearSeriesAndTerminalSeries(currentDocumentFinanceYear);
                        //Now we can disable currentDocumentFinanceYear
                        if (resultDisableFiscalYear)
                        {
                            //Disable Object
                            currentDocumentFinanceYear.Disabled = true;
                            currentDocumentFinanceYear.Save();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        void TreeViewDocumentFinanceYears_RecordAfterInsert(object sender, EventArgs e)
        {
            try
            {
                //Get References to TreeViewDocumentFinanceSeries and TreeViewDocumentFinanceYearSerieTerminal
                TreeViewDocumentFinanceSeries treeViewDocumentFinanceSeries = ((_sourceWindow as BackOfficeMainWindow).Accordion.Nodes["TopMenuDocuments"].Childs["DocumentFinanceSeries"].Content as TreeViewDocumentFinanceSeries);
                //Store Reference to BackOffice TreeViewDocumentFinanceYearSerieTerminal
                TreeViewDocumentFinanceYearSerieTerminal treeViewDocumentFinanceYearSerieTerminal = 
                    ((_sourceWindow as BackOfficeMainWindow).Accordion.Nodes["TopMenuDocuments"].Childs.ContainsKey("DocumentFinanceYearSerieTerminal"))
                    ? ((_sourceWindow as BackOfficeMainWindow).Accordion.Nodes["TopMenuDocuments"].Childs["DocumentFinanceYearSerieTerminal"].Content as TreeViewDocumentFinanceYearSerieTerminal)
                    : null;
                //Refresh TreeViews after Insert Record
                Refresh();
                treeViewDocumentFinanceSeries.Refresh();
                if (treeViewDocumentFinanceYearSerieTerminal != null) treeViewDocumentFinanceYearSerieTerminal.Refresh();
                //Apply Permissions ButtonCreateDocumentFinanceSeries
                treeViewDocumentFinanceSeries.ButtonCreateDocumentFinanceSeries.Sensitive = FrameworkUtils.HasPermissionTo("BACKOFFICE_MAN_DOCUMENTFINANCESERIES_MANAGE_SERIES");

                //Request Create Series for all Type of Finance Documents
                ResponseType responseType = Utils.ShowMessageTouch(
                    _sourceWindow,
                    DialogFlags.Modal,
                    new Size(600, 400),
                    MessageType.Question,
                    ButtonsType.YesNo,
                    Resx.window_title_series_create_series,
                    Resx.dialog_message_series_create_document_type_series
                );

                if (responseType == ResponseType.Yes)
                {
                    //Get Current Active FinanceYear
                    FIN_DocumentFinanceYears currentDocumentFinanceYear = ProcessFinanceDocumentSeries.GetCurrentDocumentFinanceYear();
                    bool result = TreeViewDocumentFinanceSeries.UICreateDocumentFinanceYearSeriesTerminal(_sourceWindow, currentDocumentFinanceYear);
                }
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }
    }
}
