﻿using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.Classes.Gui.Gtk.WidgetsGeneric;
using logicpos.resources.Resources.Localization;
using System;
using System.Collections.Generic;

namespace logicpos.Classes.Gui.Gtk.BackOffice
{
    class TreeViewUserProfile : GenericTreeViewXPO
    {
        //Public Parametless Constructor Required by Generics
        public TreeViewUserProfile() { }

        public TreeViewUserProfile(Window pSourceWindow)
            : this(pSourceWindow, null, null, null) { }

        //XpoMode
        public TreeViewUserProfile(Window pSourceWindow, XPGuidObject defaultValue, CriteriaOperator pXpoCriteria, Type pDialogType, GenericTreeViewMode pGenericTreeViewMode = GenericTreeViewMode.Default, GenericTreeViewNavigatorMode pGenericTreeViewNavigatorMode = GenericTreeViewNavigatorMode.Default)
        {
            Type xpoGuidObjectType = typeof(SYS_UserProfile);
            //Override Default Value with Parameter Default Value, this way we can have diferent Default Values for GenericTreeView
            SYS_UserProfile xpoDefaultValue = (defaultValue != null) ? defaultValue as SYS_UserProfile : null;
            //Override Default DialogType with Parameter Dialog Type, this way we can have diferent DialogTypes for GenericTreeView
            Type typeDialogClass = (pDialogType != null) ? pDialogType : typeof(DialogUserProfile);

            // XPO column properties
            List<GenericTreeViewColumnProperty> columnProperties = new List<GenericTreeViewColumnProperty>();
            columnProperties.Add(new GenericTreeViewColumnProperty("Code") { Title = Resx.global_record_code });
            columnProperties.Add(new GenericTreeViewColumnProperty("Designation") { Title = Resx.global_profile, Expand = true });
            //columnProperties.Add(new GenericTreeViewColumnProperty("Disabled") { Title = Resx.global_record_disabled });

            //configure criteria/xpcollection/model
            CriteriaOperator criteria = pXpoCriteria;
            XPCollection xpoCollection = new XPCollection(GlobalFramework.SessionXpo, xpoGuidObjectType, criteria);

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
