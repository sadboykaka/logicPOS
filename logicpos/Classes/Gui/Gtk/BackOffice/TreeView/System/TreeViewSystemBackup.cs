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

namespace logicpos.Classes.Gui.Gtk.BackOffice
{
    class TreeViewSystemBackup : GenericTreeViewXPO
    {
        //Public Parametless Constructor Required by Generics
        public TreeViewSystemBackup() { }

        public TreeViewSystemBackup(Window pSourceWindow)
            : this(pSourceWindow, null, null, null) { }

        //XpoMode
        public TreeViewSystemBackup(Window pSourceWindow, XPGuidObject pDefaultValue, CriteriaOperator pXpoCriteria, Type pDialogType, GenericTreeViewMode pGenericTreeViewMode = GenericTreeViewMode.Default, GenericTreeViewNavigatorMode pGenericTreeViewNavigatorMode = GenericTreeViewNavigatorMode.Default)
        {
            //Init Vars
            Type xpoGuidObjectType = typeof(SYS_SystemBackup);
            //Override Default Value with Parameter Default Value, this way we can have diferent Default Values for GenericTreeView
            SYS_SystemBackup defaultValue = (pDefaultValue != null) ? pDefaultValue as SYS_SystemBackup : null;
            //Override Default DialogType with Parameter Dialog Type, this way we can have diferent DialogTypes for GenericTreeView
            Type typeDialogClass = (pDialogType != null) ? pDialogType : null;

            //Configure columnProperties
            List<GenericTreeViewColumnProperty> columnProperties = new List<GenericTreeViewColumnProperty>();

            columnProperties.Add(new GenericTreeViewColumnProperty("Version")
            {
                Title = Resx.global_version,
                MinWidth = 60,
                CellRenderer = new CellRendererText()
                {
                    Alignment = Pango.Alignment.Right,
                    Xalign = 1.0F
                }
            });
            columnProperties.Add(new GenericTreeViewColumnProperty("CreatedAt") { Title = Resx.global_date, MinWidth = 180 });
            columnProperties.Add(new GenericTreeViewColumnProperty("FileNamePacked") { Title = Resx.global_file, MinWidth = 240 });

            //Sort Order
            SortProperty[] sortProperty = new SortProperty[2];
            sortProperty[0] = new SortProperty("Version", SortingDirection.Descending);
            sortProperty[1] = new SortProperty("CreatedAt", SortingDirection.Ascending);

            //Configure Criteria/XPCollection/Model
            //CriteriaOperator.Parse("Code >= 100 and Code <= 9999");
            CriteriaOperator criteria = pXpoCriteria;
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
        }
    }
}
