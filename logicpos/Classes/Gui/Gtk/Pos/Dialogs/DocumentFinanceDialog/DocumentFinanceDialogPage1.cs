﻿using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.financial;
using logicpos.Classes.Gui.Gtk.BackOffice;
using logicpos.Classes.Gui.Gtk.Widgets;
using logicpos.Classes.Gui.Gtk.WidgetsXPO;
using logicpos.resources.Resources.Localization;
using logicpos.shared;
using logicpos.shared.Classes.Finance;
using System;
using System.Data;

namespace logicpos.Classes.Gui.Gtk.Pos.Dialogs.DocumentFinanceDialog
{
    class DocumentFinanceDialogPage1 : PagePadPage
    {
        private Session _session;
        private DocumentFinanceDialogPagePad _pagePad;
        private PosDocumentFinanceDialog _posDocumentFinanceDialog;
        private CFG_ConfigurationCountry _intialValueConfigurationCountry;
        private VBox _vbox;
        private TreeViewDocumentFinanceArticle _treeViewArticles;
        //UI Object References from other pages
        //Required PagePage1 to be public to be assigned in PosDocumentFinanceDialog InitPages
        private DocumentFinanceDialogPage2 _pagePad2;
        public DocumentFinanceDialogPage2 PagePad2
        {
            set { _pagePad2 = value; }
        }
        //Required PagePage3 to be public to be assigned in PosDocumentFinanceDialog InitPages
        private DocumentFinanceDialogPage3 _pagePad3;
        public DocumentFinanceDialogPage3 PagePad3
        {
            set { _pagePad3 = value; }
        }
        //Required PagePage4 to be public to be assigned in PosDocumentFinanceDialog InitPages
        private DocumentFinanceDialogPage4 _pagePad4;
        public DocumentFinanceDialogPage4 PagePad4
        {
            set { _pagePad4 = value; }
        }
        //Required PagePage5 to be public to be assigned in PosDocumentFinanceDialog InitPages
        private DocumentFinanceDialogPage5 _pagePad5;
        public DocumentFinanceDialogPage5 PagePad5
        {
            set { _pagePad5 = value; }
        }
        //UI EntryBox
        private XPOEntryBoxSelectRecordValidation<FIN_DocumentFinanceType, TreeViewDocumentFinanceType> _entryBoxSelectDocumentFinanceType;
        public XPOEntryBoxSelectRecordValidation<FIN_DocumentFinanceType, TreeViewDocumentFinanceType> EntryBoxSelectDocumentFinanceType
        {
            get { return _entryBoxSelectDocumentFinanceType; }
        }
        private XPOEntryBoxSelectRecordValidation<FIN_ConfigurationPaymentCondition, TreeViewConfigurationPaymentCondition> _entryBoxSelectConfigurationPaymentCondition;
        public XPOEntryBoxSelectRecordValidation<FIN_ConfigurationPaymentCondition, TreeViewConfigurationPaymentCondition> EntryBoxSelectConfigurationPaymentCondition
        {
            get { return _entryBoxSelectConfigurationPaymentCondition; }
        }
        private XPOEntryBoxSelectRecordValidation<FIN_ConfigurationPaymentMethod, TreeViewConfigurationPaymentMethod> _entryBoxSelectConfigurationPaymentMethod;
        public XPOEntryBoxSelectRecordValidation<FIN_ConfigurationPaymentMethod, TreeViewConfigurationPaymentMethod> EntryBoxSelectConfigurationPaymentMethod
        {
            get { return _entryBoxSelectConfigurationPaymentMethod; }
        }
        private XPOEntryBoxSelectRecordValidation<CFG_ConfigurationCurrency, TreeViewConfigurationCurrency> _entryBoxSelectConfigurationCurrency;
        public XPOEntryBoxSelectRecordValidation<CFG_ConfigurationCurrency, TreeViewConfigurationCurrency> EntryBoxSelectConfigurationCurrency
        {
            get { return _entryBoxSelectConfigurationCurrency; }
        }
        private XPOEntryBoxSelectRecordValidation<FIN_DocumentFinanceMaster, TreeViewDocumentFinanceMaster> _entryBoxSelectSourceDocumentFinance;
        public XPOEntryBoxSelectRecordValidation<FIN_DocumentFinanceMaster, TreeViewDocumentFinanceMaster> EntryBoxSelectSourceDocumentFinance
        {
            get { return _entryBoxSelectSourceDocumentFinance; }
        }
        private EntryBoxValidation _entryBoxDocumentMasterNotes;
        public EntryBoxValidation EntryBoxDocumentMasterNotes
        {
            get { return _entryBoxDocumentMasterNotes; }
        }
        private EntryBoxValidation _entryBoxReason;
        public EntryBoxValidation EntryBoxReason
        {
            get { return _entryBoxReason; }
        }

        //Private Initial SelectedValues
        private FIN_DocumentFinanceType _defaultValueDocumentFinanceType;
        private FIN_ConfigurationPaymentCondition _defaultValueConfigurationPaymentCondition;
        private FIN_ConfigurationPaymentMethod _defaultValueConfigurationPaymentMethod;
        private CFG_ConfigurationCurrency _defaultValueConfigurationCurrency;

        //Constructor
        public DocumentFinanceDialogPage1(Window pSourceWindow, String pPageName) 
            : this(pSourceWindow, pPageName, "", null, true) { }
        public DocumentFinanceDialogPage1(Window pSourceWindow, String pPageName, Widget pWidget) 
            : this(pSourceWindow, pPageName, "", pWidget, true) { }
        public DocumentFinanceDialogPage1(Window pSourceWindow, String pPageName, String pPageIcon, Widget pWidget, bool pEnabled = true)
            : base(pSourceWindow, pPageName, pPageIcon, pWidget, pEnabled)
        {
            //Init private vars References
            _pagePad = (_sourceWindow as PosDocumentFinanceDialog).PagePad;
            _session = (_pagePad as DocumentFinanceDialogPagePad).Session;
            _posDocumentFinanceDialog = (_sourceWindow as PosDocumentFinanceDialog);

            //Initial Values
            _intialValueConfigurationCountry = SettingsApp.ConfigurationSystemCountry;

            //Defaults
            Guid initialDocumentFinanceTypeGuid = SettingsApp.XpoOidDocumentFinanceTypeInvoice;
            Guid initialConfigurationPaymentConditionGuid = SettingsApp.XpoOidConfigurationPaymentConditionDefaultInvoicePaymentCondition;
            Guid initialConfigurationPaymentMethodGuid = SettingsApp.XpoOidConfigurationPaymentMethodDefaultInvoicePaymentMethod;
            Guid initialConfigurationCurrencyGuid = SettingsApp.ConfigurationSystemCurrency.Oid;
            _defaultValueDocumentFinanceType = (FIN_DocumentFinanceType)FrameworkUtils.GetXPGuidObject(_session, typeof(FIN_DocumentFinanceType), initialDocumentFinanceTypeGuid);
            _defaultValueConfigurationPaymentCondition = (FIN_ConfigurationPaymentCondition)FrameworkUtils.GetXPGuidObject(_session, typeof(FIN_ConfigurationPaymentCondition), initialConfigurationPaymentConditionGuid);
            _defaultValueConfigurationPaymentMethod = (FIN_ConfigurationPaymentMethod)FrameworkUtils.GetXPGuidObject(_session, typeof(FIN_ConfigurationPaymentMethod), initialConfigurationPaymentMethodGuid);
            _defaultValueConfigurationCurrency = (CFG_ConfigurationCurrency)FrameworkUtils.GetXPGuidObject(_session, typeof(CFG_ConfigurationCurrency), initialConfigurationCurrencyGuid);

            //DocumentFinanceType
            string documentFinanceTypeExtraCriteria = GetDocumentFinanceTypeExtraCriteria();
            CriteriaOperator criteriaOperatorDocumentFinanceType = CriteriaOperator.Parse(string.Format("(Disabled IS NULL OR Disabled  <> 1) AND ({0})", documentFinanceTypeExtraCriteria));
            _entryBoxSelectDocumentFinanceType = new XPOEntryBoxSelectRecordValidation<FIN_DocumentFinanceType, TreeViewDocumentFinanceType>(_sourceWindow, Resx.global_documentfinanceseries_documenttype, "Designation", "Oid", _defaultValueDocumentFinanceType, criteriaOperatorDocumentFinanceType, SettingsApp.RegexGuid, true);
            //_entryBoxSelectDocumentFinanceType.EntryValidation.Changed += DocumentFinanceType_EntryValidation_Changed;//+= delegate { Validate(); };
            _entryBoxSelectDocumentFinanceType.EntryValidation.IsEditable = false;
            //Capture ClosePopup
            _entryBoxSelectDocumentFinanceType.ClosePopup += _entryBoxSelectDocumentFinanceType_ClosePopup;

            //ConfigurationPaymentCondition
            CriteriaOperator criteriaOperatorConfigurationPaymentCondition = CriteriaOperator.Parse("(Disabled IS NULL OR Disabled  <> 1)");
            _entryBoxSelectConfigurationPaymentCondition = new XPOEntryBoxSelectRecordValidation<FIN_ConfigurationPaymentCondition, TreeViewConfigurationPaymentCondition>(_sourceWindow, Resx.global_payment_condition, "Designation", "Oid", _defaultValueConfigurationPaymentCondition, criteriaOperatorConfigurationPaymentCondition, SettingsApp.RegexGuid, true);
            _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Changed += delegate { Validate(); };
            _entryBoxSelectConfigurationPaymentCondition.EntryValidation.IsEditable = false;

            //ConfigurationPaymentMethod
            CriteriaOperator criteriaOperatorConfigurationPaymentMethod = CriteriaOperator.Parse("(Disabled IS NULL OR Disabled  <> 1)");
            _entryBoxSelectConfigurationPaymentMethod = new XPOEntryBoxSelectRecordValidation<FIN_ConfigurationPaymentMethod, TreeViewConfigurationPaymentMethod>(_sourceWindow, Resx.global_payment_method, "Designation", "Oid", null, criteriaOperatorConfigurationPaymentMethod, SettingsApp.RegexGuid, false);
            _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Changed += delegate { Validate(); };
            _entryBoxSelectConfigurationPaymentMethod.EntryValidation.IsEditable = false;
            //Start Disabled and Validated
            _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Sensitive = false;
            _entryBoxSelectConfigurationPaymentMethod.ButtonSelectValue.Sensitive = false;

            //ConfigurationCurrency
            CriteriaOperator criteriaOperatorConfigurationCurrency = CriteriaOperator.Parse(string.Format("(Disabled IS NULL OR Disabled  <> 1) AND (ExchangeRate IS NOT NULL OR Oid = '{0}')", SettingsApp.ConfigurationSystemCurrency.Oid.ToString()));
            _entryBoxSelectConfigurationCurrency = new XPOEntryBoxSelectRecordValidation<CFG_ConfigurationCurrency, TreeViewConfigurationCurrency>(_sourceWindow, Resx.global_currency, "Designation", "Oid", _defaultValueConfigurationCurrency, criteriaOperatorConfigurationCurrency, SettingsApp.RegexGuid, false);
            _entryBoxSelectConfigurationCurrency.EntryValidation.IsEditable = false;
            _entryBoxSelectConfigurationCurrency.EntryValidation.Changed += delegate
            {
                //Update Article Tree, After we change Currency
                ArticleBag articleBag = (_pagePad.Pages[2] as DocumentFinanceDialogPage3).ArticleBag;
                if (articleBag != null)
                {
                    //Update TreeView With Changed Discount
                    (_pagePad.Pages[2] as DocumentFinanceDialogPage3).UpdateTotalFinal();
                    //_posDocumentFinanceDialog.WindowTitle = _posDocumentFinanceDialog.GetPageTitle(_pagePad.CurrentPageIndex);
                }
                Validate();
                //Update Dialog Title with Total
                _posDocumentFinanceDialog.WindowTitle = _posDocumentFinanceDialog.GetPageTitle(_pagePad.CurrentPageIndex);
            };

            //DocumentFinanceSource
            CriteriaOperator criteriaOperatorSourceDocumentFinance = GetDocumentFinanceTypeSourceDocumentCriteria();
            _entryBoxSelectSourceDocumentFinance = new XPOEntryBoxSelectRecordValidation<FIN_DocumentFinanceMaster, TreeViewDocumentFinanceMaster>(_sourceWindow, Resx.global_source_finance_document, "DocumentNumber", "Oid", null, criteriaOperatorSourceDocumentFinance, SettingsApp.RegexGuid, false);
            _entryBoxSelectSourceDocumentFinance.EntryValidation.IsEditable = false;
            //Capture ClosePopup
            _entryBoxSelectSourceDocumentFinance.ClosePopup += _entryBoxSelectSourceDocumentFinance_ClosePopup;

            //Customer Notes
            _entryBoxDocumentMasterNotes = new EntryBoxValidation(_sourceWindow, Resx.global_notes, KeyboardMode.Alfa, SettingsApp.RegexAlfaNumericExtended, false);
            _entryBoxDocumentMasterNotes.EntryValidation.Changed += delegate { Validate(); };

            //Reason
            _entryBoxReason = new EntryBoxValidation(_sourceWindow, Resx.global_reason, KeyboardMode.Alfa, SettingsApp.RegexAlfaNumericExtended, false);
            _entryBoxReason.EntryValidation.Changed += delegate { Validate(); };

            //Pack VBOX
            _vbox = new VBox(false, 2);
            _vbox.PackStart(_entryBoxSelectDocumentFinanceType, false, false, 0);
            _vbox.PackStart(_entryBoxSelectConfigurationPaymentCondition, false, false, 0);
            _vbox.PackStart(_entryBoxSelectConfigurationPaymentMethod, false, false, 0);
            _vbox.PackStart(_entryBoxSelectConfigurationCurrency, false, false, 0);
            _vbox.PackStart(_entryBoxSelectSourceDocumentFinance, false, false, 0);
            _vbox.PackStart(_entryBoxDocumentMasterNotes, false, false, 0);
            PackStart(_vbox);
        }

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //Override Base

        //Override Base Validate
        public override void Validate()
        {
            _validated = (
                _entryBoxSelectDocumentFinanceType.EntryValidation.Validated &&
                _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Validated &&
                _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Validated &&
                _entryBoxSelectSourceDocumentFinance.EntryValidation.Validated &&
                _entryBoxReason.EntryValidation.Validated
            );

            //Enable Next Button, If not In Last Page
            if (_pagePad.CurrentPageIndex < _pagePad.Pages.Count - 1 && _pagePad.CurrentPageIndex == 0)
            {
                _pagePad.ButtonNext.Sensitive = _validated;
            }

            //Validate Dialog (All Pages must be Valid)
            _posDocumentFinanceDialog.Validate();
        }

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //Events

        private void _entryBoxSelectDocumentFinanceType_ClosePopup(object sender, EventArgs e)
        {
            try
            {
                //Get Required Object References : TreeViewArticles
                if (_treeViewArticles == null) { _treeViewArticles = (_pagePad.Pages[2] as DocumentFinanceDialogPage3).TreeViewArticles; }

                //Restore normal Edit/Unprotected Mode
                UnProtectChildDocumentChanges();
                
                //Get and Update WayBill Mode
                bool wayBillMode = GetAndUpdateUIWayBillMode();

                //Always Clear Articles when change DocumentType
                _treeViewArticles.DeleteRecords();
                //Always Clear ArticleBag when change DocumentType
                (_pagePad.Pages[2] as DocumentFinanceDialogPage3).ArticleBag = new ArticleBag();

                //When Change DocumentFinanceType always Clean EntryBoxSelectSourceDocumentFinance, EntryBoxDocumentMasterNotes and EntryBoxReason
                if (_entryBoxSelectSourceDocumentFinance.Value != null) { _entryBoxSelectSourceDocumentFinance.Value = null; _entryBoxSelectSourceDocumentFinance.EntryValidation.Text = string.Empty; };
                if (_entryBoxDocumentMasterNotes.EntryValidation.Text != string.Empty) { _entryBoxDocumentMasterNotes.EntryValidation.Text = string.Empty; };
                if (_entryBoxReason.EntryValidation.Text != string.Empty) { _entryBoxReason.EntryValidation.Text = string.Empty; };

                //Update Criteria for Customers
                string filterBaseCustomer = "(Disabled IS NULL OR Disabled  <> 1) AND (Hidden IS NULL OR Hidden = 0)";

                //If Not SimplifiedInvoice
                if (_entryBoxSelectDocumentFinanceType.Value.Oid != SettingsApp.XpoOidDocumentFinanceTypeSimplifiedInvoice)
                {
                    filterBaseCustomer = filterBaseCustomer + string.Format(" AND Oid <> '{0}'", SettingsApp.XpoOidDocumentFinanceMasterFinalConsumerEntity);
                    //If FinalConsumerEntity, Clean it
                    if (_pagePad2.EntryBoxSelectCustomerName != null || _pagePad2.EntryBoxSelectCustomerName.Value.Oid == SettingsApp.XpoOidDocumentFinanceMasterFinalConsumerEntity)
                    {
                        _pagePad2.ClearCustomerAndWayBill();
                    }
                }
                //If SimplifiedInvoice
                else
                {
                    //If SimplifiedInvoice Update to it, If not FinalConsumerEntity, Update to it (Consumidor Final)
                    if (_pagePad2.EntryBoxSelectCustomerName.Value == null || _pagePad2.EntryBoxSelectCustomerName.Value.Oid != SettingsApp.XpoOidDocumentFinanceMasterFinalConsumerEntity)
                    {
                        ERP_Customer customer = (ERP_Customer)GlobalFramework.SessionXpo.GetObjectByKey(typeof(ERP_Customer), SettingsApp.XpoOidDocumentFinanceMasterFinalConsumerEntity);
                        //Assign Value From FiscalNumber
                        _pagePad2.GetCustomerDetails("Oid", customer.Oid.ToString());
                    }
                }

                //Call Method to Apply Criteria for SelectCustomerName and for SelectCustomerCardNumber
                _pagePad2.ApplyCriteriaToCustomerInputs();

                //When Change DocumentFinanceType always Clean EntryBoxSelectSourceDocumentFinance, EntryBoxDocumentMasterNotes and EntryBoxReason
                //if (_entryBoxSelectSourceDocumentFinance.Value != null) { _entryBoxSelectSourceDocumentFinance.Value = null; _entryBoxSelectSourceDocumentFinance.EntryValidation.Text = string.Empty; };
                //if (_entryBoxDocumentMasterNotes.EntryValidation.Text != string.Empty) { _entryBoxDocumentMasterNotes.EntryValidation.Text = string.Empty; };
                //if (_entryBoxReason.EntryValidation.Text != string.Empty) { _entryBoxReason.EntryValidation.Text = string.Empty; };

                //ConfigurationPaymentCondition
                if (
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeInvoice ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeConsignationInvoice ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeBudget ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeProformaInvoice ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeCurrentAccountInput
                )
                {
                    //Enable Widget
                    _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Sensitive = true;
                    _entryBoxSelectConfigurationPaymentCondition.ButtonSelectValue.Sensitive = true;

                    //Set Defaults
                    if (_entryBoxSelectConfigurationPaymentCondition.Value == null)
                    {
                        _entryBoxSelectConfigurationPaymentCondition.Value = _defaultValueConfigurationPaymentCondition;
                        _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Text = _defaultValueConfigurationPaymentCondition.Designation;
                    }
                    //Set Null
                    if (_entryBoxSelectConfigurationPaymentMethod.Value != null)
                    {
                        _entryBoxSelectConfigurationPaymentMethod.Value = null;
                        _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Text = string.Empty;
                        _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Sensitive = false;
                        _entryBoxSelectConfigurationPaymentMethod.ButtonSelectValue.Sensitive = false;
                        _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Required = false;
                        _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Validate();
                    }
                }
                //ConfigurationPaymentMethod
                else if (
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeSimplifiedInvoice ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeInvoiceAndPayment
                )
                {
                    //Enable Widget
                    _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Sensitive = true;
                    _entryBoxSelectConfigurationPaymentMethod.ButtonSelectValue.Sensitive = true;

                    //Set Defaults
                    if (_entryBoxSelectConfigurationPaymentMethod.Value == null)
                    {
                        _entryBoxSelectConfigurationPaymentMethod.Value = _defaultValueConfigurationPaymentMethod;
                        _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Text = _defaultValueConfigurationPaymentMethod.Designation;
                    }
                    //Set Null
                    if (_entryBoxSelectConfigurationPaymentCondition.Value != null)
                    {
                        _entryBoxSelectConfigurationPaymentCondition.Value = null;
                        _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Text = string.Empty;
                        _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Sensitive = false;
                        _entryBoxSelectConfigurationPaymentCondition.ButtonSelectValue.Sensitive = false;
                        _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Required = false;
                        _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Validate();
                    }
                }
                else
                {
                    //Set Null:EntryBoxSelectConfigurationPaymentCondition
                    _entryBoxSelectConfigurationPaymentCondition.Value = null;
                    _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Text = string.Empty;
                    _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Sensitive = false;
                    _entryBoxSelectConfigurationPaymentCondition.ButtonSelectValue.Sensitive = false;
                    _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Required = false;
                    _entryBoxSelectConfigurationPaymentCondition.EntryValidation.Validate();
                    //Set Null:EntryBoxSelectConfigurationPaymentMethod
                    _entryBoxSelectConfigurationPaymentMethod.Value = null;
                    _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Text = string.Empty;
                    _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Sensitive = false;
                    _entryBoxSelectConfigurationPaymentMethod.ButtonSelectValue.Sensitive = false;
                    _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Required = false;
                    _entryBoxSelectConfigurationPaymentMethod.EntryValidation.Validate();
                    //Set UnRequired:EntryBoxSelectSourceDocumentFinance
                    _entryBoxSelectSourceDocumentFinance.EntryValidation.Required = false;
                    _entryBoxSelectSourceDocumentFinance.EntryValidation.Validate();
                };

                //Detected SourceDocumentFinance:CreditNote
                if (
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeCreditNote
                )
                {
                    //Set Required EntryBoxSelectSourceDocumentFinance
                    if (_entryBoxSelectSourceDocumentFinance.EntryValidation.Required != true)
                    {
                        _entryBoxSelectSourceDocumentFinance.EntryValidation.Required = true;
                        _entryBoxSelectSourceDocumentFinance.EntryValidation.Validate();
                    }

                    //Exchange Notes with Reason
                    if (_vbox.Children[5] == _entryBoxDocumentMasterNotes)
                    {
                        _vbox.Remove(_entryBoxDocumentMasterNotes);
                        _vbox.PackStart(_entryBoxReason, false, false, 0);
                        _entryBoxReason.EntryValidation.Required = true;
                        _entryBoxReason.EntryValidation.Validate();
                        _entryBoxReason.ShowAll();
                    }

                    //TreeViewArticles Work
                    _treeViewArticles.Navigator.ButtonInsert.Sensitive = false;
                    _treeViewArticles.AllowRecordUpdate = false;
                }
                else
                {
                    //Unset Required EntryBoxSelectSourceDocumentFinance
                    if (_entryBoxSelectSourceDocumentFinance.EntryValidation.Required != false)
                    {
                        _entryBoxSelectSourceDocumentFinance.EntryValidation.Required = false;
                        _entryBoxSelectSourceDocumentFinance.EntryValidation.Validate();
                    }

                    //Exchange Reason with Notes
                    if (_vbox.Children[5] == _entryBoxReason)
                    {
                        _vbox.Remove(_entryBoxReason);
                        _vbox.PackStart(_entryBoxDocumentMasterNotes, false, false, 0);
                        _entryBoxReason.EntryValidation.Required = false;
                        _entryBoxReason.EntryValidation.Validate();
                        _entryBoxReason.ShowAll();
                    }

                    //TreeViewArticles Work
                    _treeViewArticles.Navigator.ButtonInsert.Sensitive = true;
                    _treeViewArticles.AllowRecordUpdate = true;
                };

                //Detected SourceDocumentFinance:WayBill
                if (
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeInvoice ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeDeliveryNote ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeTransportationGuide ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeOwnAssetsDriveGuide ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeConsignmentGuide ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeReturnGuide
                )
                {
                    //Assign Default Values from Customer
                    _pagePad5.AssignShipFromDefaults();
                }

                //Detected SourceDocumentFinance:Budget/ProForma Invoice
                if (
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeBudget ||
                    _entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeProformaInvoice
                )
                {
                    _entryBoxSelectSourceDocumentFinance.EntryValidation.Sensitive = false;
                    _entryBoxSelectSourceDocumentFinance.ButtonSelectValue.Sensitive = false;
                }
                else
                {
                    _entryBoxSelectSourceDocumentFinance.EntryValidation.Sensitive = true;
                    _entryBoxSelectSourceDocumentFinance.ButtonSelectValue.Sensitive = true;
                }

                //Get and Assign Criteria for Source Documents
                _entryBoxSelectSourceDocumentFinance.CriteriaOperator = GetDocumentFinanceTypeSourceDocumentCriteria();

                //Update Dialog Title
                _posDocumentFinanceDialog.WindowTitle = _posDocumentFinanceDialog.GetPageTitle(_pagePad.CurrentPageIndex);
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }

            //Finally 
            Validate();
        }

        void _entryBoxSelectSourceDocumentFinance_ClosePopup(object sender, EventArgs e)
        {
            try 
            {
                //Update Data from Document Source
                UpdateFromDocumentSource();
                //Call Update Customer Edit Mode
                _pagePad2.UpdateCustomerEditMode();
                //Read Only Extra Protection to Protect Changes in Child Documents, ex When SourceDocument is ConsignationInvoice we Cant Change Child Document Properties, ex Articles etc
                ProtectChildDocumentChanges();

                //Finally 
                Validate();

                //Always Call MainDialog Validate when we change DocumentFinance Source
                _posDocumentFinanceDialog.Validate();
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //UI Work

        //Get WayBillMode : Called from other pages and base dialog
        public bool GetAndUpdateUIWayBillMode()
        {
            bool result = _entryBoxSelectDocumentFinanceType.Value.WayBill;

            //Update UI

            //Enable/Disable WayBillMode Pages
            _pagePad4.Enabled = result;
            _pagePad5.Enabled = result;

            //Toggle Validation
            ToggleWayBillValidation(result);

            return result;
        }

        public void ToggleWayBillValidation(bool pEnable)
        {
            //Dont use _pagePad4 and _pagePad5 References here, this method is called prior to References assign, from PosDocumentFinanceDialog Constructor
            (_pagePad.Pages[3] as DocumentFinanceDialogPage4).ToggleValidation(pEnable);
            (_pagePad.Pages[4] as DocumentFinanceDialogPage5).ToggleValidation(pEnable);
            (_pagePad.Pages[3] as DocumentFinanceDialogPage4).Validate();
            (_pagePad.Pages[4] as DocumentFinanceDialogPage5).Validate();
        }

        //Get Criteria of Excluded DocumentTypes for EntryBoxSelectDocumentFinanceType
        private string GetDocumentFinanceTypeExtraCriteria()
        {
            String result = string.Empty;

            Guid[] excludedDocumentTypes = new Guid[] { 
                SettingsApp.XpoOidDocumentFinanceTypeCurrentAccountInput,
                //SettingsApp.XpoOidDocumentFinanceTypeInvoiceAndPayment,
                SettingsApp.XpoOidDocumentFinanceTypeConferenceDocument,
                SettingsApp.XpoOidDocumentFinanceTypePayment,
                SettingsApp.XpoOidDocumentFinanceTypeDebitNote
            };

            for (int i = 0; i < excludedDocumentTypes.Length; i++)
            {
                result += string.Format("Oid <> '{0}'", excludedDocumentTypes[i]);
                if (i < excludedDocumentTypes.Length - 1) result += " AND ";
            }

            return result;
        }

        //Get Criteria of included DocumentTypes for EntryBoxSelectSourceDocumentFinance related to EntryBoxSelectDocumentFinanceType
        private CriteriaOperator GetDocumentFinanceTypeSourceDocumentCriteria()
        {
            bool debug = false;

            //Hide Cancelled and Invoiced Documents from Source
            string filterBase = "(Disabled IS NULL OR Disabled  <> 1) AND (DocumentStatusStatus <> 'A' AND DocumentStatusStatus <> 'F') {0}";
            string filterDocs = string.Empty;
            string filter = string.Empty;
            Guid[] listDocumentTypes = FrameworkUtils.GetDocumentTypeValidSourceDocuments(_entryBoxSelectDocumentFinanceType.Value.Oid);

            //Generate Filter Docs from listDocumentTypes Array
            for (int i = 0; i < listDocumentTypes.Length; i++)
            {
                string filterDocumentType = string.Empty;

//COMMENTED, now all documents use "AND DocumentChild IS NULL" - Leave this Block Here, May be usefull to Use in Future
//
//              //Specific Extra Filter for ConsignationInvoice, When Document Type is Invoice, Must add DocumentChild IS NULL to DocumentType filter
//              if (listDocumentTypes[i] == _xpoOidDocumentFinanceTypeConsignationInvoice)
//              {
//                  //If DocumentFinanceTypeInvoice or WayBill, Show ConsignationInvoices, if not Invoiced Yet
//                  if (
//                      _entryBoxSelectDocumentFinanceType.Value.Oid.ToString() == _xpoOidDocumentFinanceTypeInvoice
//                      //|| (int) _entryBoxSelectDocumentFinanceType.Value.SaftDocumentType == 2
//                  )
//                  {
//                      filterDocumentType = string.Format("(DocumentType = '{0}' AND DocumentChild IS NULL)", listDocumentTypes[i]);
//                      filterDocs += filterDocumentType;
//                  }
//              }
//              //Default for all listDocumentTypes
//              else
//              {
                    filterDocumentType += string.Format("DocumentType = '{0}'", listDocumentTypes[i]);
                    filterDocs += filterDocumentType;
//              }

                if (filterDocumentType != string.Empty && i < listDocumentTypes.Length - 1) filterDocs += " OR ";
            }

            //Add filterDocs if filterDocs is not Empty
            if (filterDocs != string.Empty) filterDocs = string.Format("AND ({0})", filterDocs);

            filter = string.Format(filterBase, filterDocs);
            if (debug) _log.Debug(string.Format("GetDocumentFinanceTypeSourceDocumentCriteria.Filter: [{0}]", filter));

            //Generate Final Result Criteria
            CriteriaOperator result = CriteriaOperator.Parse(filter);

            return result;
        }

        //Update UI from DocumentSource, TreeView, Pages etc
        private void UpdateFromDocumentSource()
        {
            try
            {
                //Disable calls to this function when we trigger ".Changed" events, creating recursive calls to this function
                _pagePad2.EnableGetCustomerDetails = false;

                FIN_DocumentFinanceMaster sourceDocument = _entryBoxSelectSourceDocumentFinance.Value;

                //Initialize DocumentFinanceDetail XPCollection to store items to add to Tree
                XPCollection<FIN_DocumentFinanceDetail> addToTree = null;

                //If Working on a CreditNote Document(Target), we must Check Already Credited Items in Reference Table, to prevent to Add same items to TreeView 
                if (_entryBoxSelectDocumentFinanceType.Value.Oid == SettingsApp.XpoOidDocumentFinanceTypeCreditNote)
                {
                    string creditedDocuments;
                    addToTree = FrameworkUtils.GetUnCreditedItemsFromSourceDocument(sourceDocument, out creditedDocuments);
                    if (addToTree.Count <= 0)
                    {
                        //Restore Old Value
                        //if all items are already credited in another CreditNote (Count=0), we must keep entryBoxSelectSourceDocumentFinance with old value
                        //and show Info Message alerting user that current invoice is already credited in CreditNote DocumentNumber
                        _entryBoxSelectSourceDocumentFinance.Value = _entryBoxSelectSourceDocumentFinance.PreviousValue;
                        if (_entryBoxSelectSourceDocumentFinance.PreviousValue != null)
                        {
                            _entryBoxSelectSourceDocumentFinance.EntryValidation.Text = _entryBoxSelectSourceDocumentFinance.PreviousValue.DocumentNumber;
                            _entryBoxSelectSourceDocumentFinance.EntryValidation.Validate(_entryBoxSelectSourceDocumentFinance.Value.Oid.ToString());
                        }
                        else
                        {
                            _entryBoxSelectSourceDocumentFinance.EntryValidation.Text = string.Empty;
                            _entryBoxSelectSourceDocumentFinance.EntryValidation.Validate(new Guid().ToString());
                        }
                        //Show Message and Return
                        Utils.ShowMessageTouch(this.SourceWindow.TransientFor, DialogFlags.Modal, new System.Drawing.Size(550, 450), MessageType.Info, ButtonsType.Close, Resx.global_information, string.Format(Resx.dialog_message_info_all_lines_from_this_document_was_already_credited, creditedDocuments));
                        return;
                    }
                    //Clear entryBoxReason when change SourceDocument (Disabled)
                    //if (_entryBoxReason.EntryValidation.Text != string.Empty) { _entryBoxReason.EntryValidation.Text = string.Empty; };
                }
                else
                {
                    addToTree = sourceDocument.DocumentDetail;
                }

                //Procceed with DocumentSource Work

                //Get Required Object References : TreeViewArticles
                if (_treeViewArticles == null) { _treeViewArticles = (_pagePad.Pages[2] as DocumentFinanceDialogPage3).TreeViewArticles; }

                //If SourceDocument is diferent from Selected Currency Update It to SourceDocument Currency, And Validate it
                if (_entryBoxSelectConfigurationCurrency.Value != sourceDocument.Currency)
                {
                    _entryBoxSelectConfigurationCurrency.Value = sourceDocument.Currency;
                    _entryBoxSelectConfigurationCurrency.EntryValidation.Text = sourceDocument.Currency.Acronym;
                    _entryBoxSelectConfigurationCurrency.EntryValidation.Validate(sourceDocument.Currency.Oid.ToString());
                }

                //Page2:Customer
                ERP_Customer customer = (ERP_Customer)GlobalFramework.SessionXpo.GetObjectByKey(typeof(ERP_Customer), sourceDocument.EntityOid);
                //Require to assign DocumentFinanceDialogPagePad Customer
                _pagePad.Customer = (customer != null) ? customer : null;
                _pagePad2.EntryBoxSelectCustomerName.Value = (customer != null) ? customer : null;
                Guid guidCustomer = (customer != null) ? customer.Oid : new Guid();
                _pagePad2.EntryBoxSelectCustomerName.EntryValidation.Validate(guidCustomer.ToString());
                _pagePad2.EntryBoxSelectCustomerName.EntryValidation.Text = (customer.Name != null) ? customer.Name : string.Empty;
                _pagePad2.EntryBoxSelectCustomerName.EntryValidation.Validate();
                //Page2:Address etc
                _pagePad2.EntryBoxCustomerAddress.EntryValidation.Text = (customer.Address != null) ? customer.Address : string.Empty;
                _pagePad2.EntryBoxCustomerLocality.EntryValidation.Text = (customer.Locality != null) ? customer.Locality : string.Empty;
                _pagePad2.EntryBoxCustomerZipCode.EntryValidation.Text = (customer.ZipCode != null) ? customer.ZipCode : string.Empty;
                _pagePad2.EntryBoxCustomerCity.EntryValidation.Text = (customer.City != null) ? customer.City : string.Empty;
                //Page2:Country
                _pagePad2.EntryBoxSelectCustomerCountry.Value = (customer.Country != null) ? customer.Country : null;
                Guid guidCountry = (customer.Country != null) ? customer.Country.Oid : new Guid();
                _pagePad2.EntryBoxSelectCustomerCountry.EntryValidation.Validate(guidCountry.ToString());
                _pagePad2.EntryBoxSelectCustomerCountry.EntryValidation.Text = (customer.Country != null) ? customer.Country.Designation : string.Empty;
                //Page2:FiscalNumber
                _pagePad2.EntryBoxSelectCustomerFiscalNumber.Value = null;
                _pagePad2.EntryBoxSelectCustomerFiscalNumber.EntryValidation.Text = (sourceDocument.EntityFiscalNumber != null) ? sourceDocument.EntityFiscalNumber : string.Empty;
                _pagePad2.EntryBoxSelectCustomerFiscalNumber.EntryValidation.Rule = customer.Country.RegExFiscalNumber;
                _pagePad2.EntryBoxSelectCustomerFiscalNumber.EntryValidation.Validate();
                //Page2:CardNumber
                _pagePad2.EntryBoxSelectCustomerCardNumber.Value = null;
                _pagePad2.EntryBoxSelectCustomerCardNumber.EntryValidation.Text = (customer != null && customer.CardNumber != null && customer.CardNumber != string.Empty) ? customer.CardNumber : string.Empty;
                _pagePad2.EntryBoxSelectCustomerCardNumber.EntryValidation.Validate();
                //Page2:Discount - Remove from here, moved to bottom after construct ArticleBag to work with TotalDiscount
                _pagePad2.EntryBoxCustomerDiscount.EntryValidation.Text = FrameworkUtils.DecimalToString(sourceDocument.Discount);

                //Page4:ShiptTo
                //Removed: **Triggered** by EntryBoxCustomerFiscalNumber.EntryValidation.Text  
                _pagePad2.AssignShipToDetails();
                //Page5:ShiptFrom Always fill defaults to ShipFrom
                _pagePad5.AssignShipFromDefaults();

                //Clear Articles Before Add from Source Document
                _treeViewArticles.DeleteRecords();
                //Add Articles from Source Document
                DataRow dataRow;

                //Require same Order as SourceDocument - Line
                SortingCollection sortCollection = new SortingCollection();
                sortCollection.Add(new SortProperty("Ord", DevExpress.Xpo.DB.SortingDirection.Ascending));
                sourceDocument.DocumentDetail.Sorting = sortCollection;
                //Star Loop
                foreach (var item in addToTree)
                {
                    //Create Row
                    dataRow = _treeViewArticles.DataSourceRowGetNewRecord();
                    dataRow["Oid"] = item.Article.Oid;
                    dataRow["Article.Code"] = item.Article;
                    dataRow["Article.Designation"] = item.Article;
                    dataRow["Quantity"] = item.Quantity;
                    dataRow["Price"] = item.Price;
                    dataRow["PriceDisplay"] = item.Price * _entryBoxSelectConfigurationCurrency.Value.ExchangeRate;
                    dataRow["ConfigurationVatRate.Value"] = item.VatRate;
                    dataRow["VatExemptionReason.Acronym"] = item.VatExemptionReason;
                    dataRow["Discount"] = item.Discount;
                    dataRow["TotalNet"] = item.TotalGross * _entryBoxSelectConfigurationCurrency.Value.ExchangeRate;
                    dataRow["TotalFinal"] = item.TotalFinal * _entryBoxSelectConfigurationCurrency.Value.ExchangeRate;
                    dataRow["PriceFinal"] = item.PriceFinal * _entryBoxSelectConfigurationCurrency.Value.ExchangeRate;
                    dataRow["PriceType"] = item.PriceType;
                    dataRow["Token1"] = item.Token1;
                    dataRow["Token2"] = item.Token2;
                    //Insert DataRow into DataTable
                    _treeViewArticles.DataSourceRowInsert<DataRow>(dataRow);
                    //Insert DataRow into Model
                    _treeViewArticles.ModelRowInsert(dataRow);
                }

                //Required to initialize ArticleBag from Treeview
                (_pagePad.Pages[2] as DocumentFinanceDialogPage3).ArticleBag = _posDocumentFinanceDialog.GetArticleBag();
                //Update Dialog Title with Total
                _posDocumentFinanceDialog.WindowTitle = _posDocumentFinanceDialog.GetPageTitle(_pagePad.CurrentPageIndex);
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
            finally
            {
                //Re Enable GetCustomerDetails
                _pagePad2.EnableGetCustomerDetails = true;
            }
        }

        /// <summary>
        /// Unprotect Child Document Changes
        /// Called from entryBoxSelectDocumentFinanceType_ClosePopup
        /// </summary>
        public void UnProtectChildDocumentChanges()
        {
            _entryBoxSelectConfigurationCurrency.ButtonSelectValue.Sensitive = true;
            _pagePad3.TreeViewArticles.ReadOnly = false;
            _pagePad3.TreeViewArticles.AllowRecordUpdate = true;
            _pagePad3.TreeViewArticles.AllowRecordInsert = true;
        }

        /// <summary>
        /// Protect Child Document Changes
        /// Called from entryBoxSelectSourceDocumentFinance_ClosePopup
        /// </summary>
        public void ProtectChildDocumentChanges()
        {
            //Commented, Now put in ReadOnly all Except NDs and NCs
            //If Consignation Invoice enable ReadOny Mode
            //if (_entryBoxSelectSourceDocumentFinance.Value.DocumentType.Oid == SettingsApp.XpoOidDocumentFinanceTypeConsignationInvoice)
            //Protect Edits all Documents Articled Except Credit and Debit Notes
            if (
                _entryBoxSelectDocumentFinanceType.Value.Oid != SettingsApp.XpoOidDocumentFinanceTypeDebitNote
                && _entryBoxSelectDocumentFinanceType.Value.Oid != SettingsApp.XpoOidDocumentFinanceTypeCreditNote
            )
            {
                _entryBoxSelectConfigurationCurrency.ButtonSelectValue.Sensitive = false;
                //_pagePad2.EntryBoxCustomerDiscount.EntryValidation.Sensitive = false;
                _pagePad3.TreeViewArticles.ReadOnly = true;
            }
            else
            {
                _entryBoxSelectConfigurationCurrency.ButtonSelectValue.Sensitive = true;
                //_pagePad2.EntryBoxCustomerDiscount.EntryValidation.Sensitive = true;
                _pagePad3.TreeViewArticles.ReadOnly = false;
                //Disable Insert and Update
                _pagePad3.TreeViewArticles.AllowRecordUpdate = false;
                _pagePad3.TreeViewArticles.AllowRecordInsert = false;
            }
        }
    }
}
