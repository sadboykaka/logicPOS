﻿using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.Classes.Gui.Gtk.WidgetsGeneric;
using logicpos.resources.Resources.Localization;
using System;
using System.Collections.Generic;

//Note
//1) To disable navigator butons ex INS,DEL, use privileges

namespace logicpos.Classes.Gui.Gtk.BackOffice
{
    class TreeViewTemplate : GenericTreeViewXPO
    {
        //Public Parametless Constructor Required by Generics
        public TreeViewTemplate() { }

        public TreeViewTemplate(Window pSourceWindow)
            : this(pSourceWindow, null, null, null) { }

        //XpoMode
        public TreeViewTemplate(Window pSourceWindow, XPGuidObject pDefaultValue, CriteriaOperator pXpoCriteria, Type pDialogType, GenericTreeViewMode pGenericTreeViewMode = GenericTreeViewMode.Default, GenericTreeViewNavigatorMode pGenericTreeViewNavigatorMode = GenericTreeViewNavigatorMode.Default)
        {
            //Init Vars
            Type xpoGuidObjectType = typeof(Template);
            //Override Default Value with Parameter Default Value, this way we can have diferent Default Values for GenericTreeView
            Template defaultValue = (pDefaultValue != null) ? pDefaultValue as Template : null;
            //Override Default DialogType with Parameter Dialog Type, this way we can have diferent DialogTypes for GenericTreeView
            Type typeDialogClass = (pDialogType != null) ? pDialogType : null;

            //Configure columnProperties
            List<GenericTreeViewColumnProperty> columnProperties = new List<GenericTreeViewColumnProperty>();
            columnProperties.Add(new GenericTreeViewColumnProperty("Code") { Title = Resx.global_record_code });
            columnProperties.Add(new GenericTreeViewColumnProperty("Designation") { Title = Resx.global_designation });
            //columnProperties.Add(new GenericTreeViewColumnProperty("Disabled") { Title = Resx.global_record_disabled });

            //Configure Criteria/XPCollection/Model
            //CriteriaOperator.Parse("Code >= 100 and Code <= 9999");
            CriteriaOperator criteria = pXpoCriteria;
            SortProperty[] sortProperty = new SortProperty[1];
            sortProperty[0] = new SortProperty("Designation", SortingDirection.Ascending);
            XPCollection xpoCollection = new XPCollection(GlobalFramework.SessionXpo, xpoGuidObjectType, criteria, sortProperty);

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

            //Protected Records
            //ProtectedRecords.Add(GUID);

            /*
            //Events Sample
            this.RecordBeforeDelete += TreeView_RecordBeforeDelete;
            this.RecordBeforeUpdate += TreeView_RecordBeforeUpdate;
            */ 
        }

        /*
        //Override Automatic Protected Records Events
        void TreeView_RecordBeforeDelete(object sender, EventArgs e)
        {
            //Prevent Delete Protected Records, assigning TreeView Base _skipRecordDelete
            _skipRecordDelete = (_protectedRecords.Count > 0 && _protectedRecords.Contains(_dataSourceRow.Oid));
            //Show Message
            if (_skipRecordDelete)
            {
                Utils.ShowMessageTouchProtectedDeleteRecordMessage(_sourceWindow);
            }
        }
          
        void TreeView_RecordBeforeUpdate(object sender, EventArgs e)
        {
            //Prevent Update Protected Records, assigning TreeView Base _skipRecordUpdate
            _skipRecordUpdate = (_protectedRecords.Count > 0 && _protectedRecords.Contains(_dataSourceRow.Oid));
            //Show Message
            if (_skipRecordUpdate)
            {
                Utils.ShowMessageTouchProtectedUpdateRecordMessage(_sourceWindow);
            }
        }
        */ 
    }
}
