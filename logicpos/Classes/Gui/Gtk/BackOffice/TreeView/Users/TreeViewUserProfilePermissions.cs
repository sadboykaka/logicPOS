﻿using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.financial;
using logicpos.Classes.Gui.Gtk.Widgets.Buttons;
using logicpos.Classes.Gui.Gtk.WidgetsGeneric;
using logicpos.resources.Resources.Localization;
using logicpos.shared;
using System;
using System.Collections.Generic;

namespace logicpos.Classes.Gui.Gtk.BackOffice
{
    class TreeViewUserProfilePermissions : GenericTreeViewXPO
    {
        //Settings
        private String _fontGenericTreeViewColumnTitle = GlobalFramework.Settings["fontGenericTreeViewColumnTitle"];
        private String _fontGenericTreeViewColumn = GlobalFramework.Settings["fontGenericTreeViewColumn"];

        private TreeView _treeViewPermissionItem = new TreeView();
        private ListStore _listStoreModelPermissionItem = new ListStore(typeof(string), typeof(string), typeof(bool));
        private CellRendererToggle _cellRendererTogglePermissionItem = new CellRendererToggle();

        private Type _xpObjectTypeUserPermissionItem = typeof(SYS_UserPermissionItem);
        private Type _xpObjectTypeUserPermissionProfile = typeof(SYS_UserPermissionProfile);
        private XPCollection _xpCollectionUserPermissionItem;
        private XPCollection _xpCollectionUserPermissionProfile;

        private Pango.FontDescription _fontDescTitle;
        private Pango.FontDescription _fontDesc;

        //Public Parametless Constructor Required by Generics
        public TreeViewUserProfilePermissions() { }

        public TreeViewUserProfilePermissions(Window pSourceWindow)
        {
            _fontDescTitle = Pango.FontDescription.FromString(_fontGenericTreeViewColumnTitle);
            _fontDesc = Pango.FontDescription.FromString(_fontGenericTreeViewColumn);

            CriteriaOperator criteria = null;

            bool showStatusBar = false;
            Type xPGuidObjectType = typeof(SYS_UserProfile);
            Type typeDialogClass = typeof(DialogUserProfile);

            Type xpObjectTypeUserProfile = typeof(SYS_UserProfile);

            XPCollection xpCollectionUserProfile = new XPCollection(GlobalFramework.SessionXpo, xpObjectTypeUserProfile, criteria);

            List<GenericTreeViewColumnProperty> columnPropertiesUserProfile = new List<GenericTreeViewColumnProperty>();
            columnPropertiesUserProfile.Add(new GenericTreeViewColumnProperty("Code") { Title = Resx.global_record_code });
            columnPropertiesUserProfile.Add(new GenericTreeViewColumnProperty("Designation") { Title = Resx.global_user_profiles, MaxWidth = 150 });

            InitObject(pSourceWindow, xpCollectionUserProfile, xPGuidObjectType, typeDialogClass, columnPropertiesUserProfile, showStatusBar);
            this.ShowAll();
        }

        protected void InitObject(Window pSourceWindow, XPCollection pXPCollection, Type pXPGuidObjectType, Type pDialogType, List<GenericTreeViewColumnProperty> pColumnProperties, bool pShowStatusBar = false)
        {
            SortProperty sortPropertyPermissionItem = new SortProperty("Ord", DevExpress.Xpo.DB.SortingDirection.Ascending);

            _xpCollectionUserPermissionItem = new XPCollection(GlobalFramework.SessionXpo, _xpObjectTypeUserPermissionItem, null, sortPropertyPermissionItem);
            _xpCollectionUserPermissionProfile = new XPCollection(GlobalFramework.SessionXpo, _xpObjectTypeUserPermissionProfile, null);

            //Parameters
            _sourceWindow = pSourceWindow;
            DialogType = pDialogType;
            _columnProperties = pColumnProperties;
            _showStatusBar = pShowStatusBar;
            _dataSource = pXPCollection;

            //Get First Custom Field Position ex OID
            _modelFirstCustomFieldIndex = (_treeViewMode == GenericTreeViewMode.Default) ? 1 : 2;

            //Sorting
            _dataSource.Sorting = FrameworkUtils.GetXPCollectionDefaultSortingCollection();
            //Prepare listStoreModel 
            //_listStoreModel = GenericTreeViewModel.XPCollectionToModel(_dataSource, _columnProperties);
            InitDataModel(_dataSource, _columnProperties, GenericTreeViewMode.Default);

            //Assign ListStoreModelFilter with ListStoreModel
            _listStoreModelFilter = new TreeModelFilter(ListStoreModel, null);
            //Assign ListStoreModelFilterSort with ListStoreModelFilter
            _listStoreModelFilterSort = new TreeModelSort(_listStoreModelFilter);

            InitUI();

            LoadRefreshView();
        }

        new protected void InitUI()
        {
            VBox vbox = new VBox(false, 1);

            //ScrolledWindow
            ScrolledWindow scrolledWindowProfile = new ScrolledWindow();
            scrolledWindowProfile.ShadowType = ShadowType.EtchedIn;
            scrolledWindowProfile.SetPolicy(PolicyType.Automatic, PolicyType.Automatic);

            //StatusBar
            if (_showStatusBar)
            {
                _statusbar = new Statusbar() { HasResizeGrip = false };
                _statusbar.Push(0, Resx.global_statusbar);
            };

            //Treeview
            treeViewProfile = new TreeView(_listStoreModelFilterSort);

            //_treeView.RulesHint = true;
            treeViewProfile.EnableSearch = true;
            treeViewProfile.SearchColumn = 1;
            treeViewProfile.ModifyCursor(new Gdk.Color(100, 100, 100), new Gdk.Color(200, 200, 200));
            //Add Columns
            AddColumns();

            //Navigator
            Navigator = new GenericTreeViewNavigator<XPCollection, XPGuidObject>(_sourceWindow, this, _navigatorMode);


            //TODO:THEME
            if (GlobalApp.ScreenSize.Width >= 800)
            {
                TouchButtonIconWithText buttonApplyPrivileges = Navigator.GetNewButton("touchButtonApplyPrivileges_DialogActionArea", Resx.global_user_apply_privileges, @"Icons/icon_pos_nav_refresh.png");
                buttonApplyPrivileges.WidthRequest = 110;
                //Apply Permissions
                buttonApplyPrivileges.Sensitive = FrameworkUtils.HasPermissionTo("BACKOFFICE_MAN_USER_PRIVILEGES_APPLY");
                //Event
                buttonApplyPrivileges.Clicked += delegate { 
                    GlobalApp.WindowBackOffice.Accordion.UpdateMenuPrivileges(); 
                };
                //Add to Extra Slot
                Navigator.ExtraSlot.PackStart(buttonApplyPrivileges, false, false, 0);
            }

            //Pack components
            scrolledWindowProfile.Add(treeViewProfile);

            HBox hbox = new HBox(false, 1);
            hbox.PackStart(scrolledWindowProfile);

            vbox.PackStart(hbox, true, true, 0);
            vbox.PackStart(Navigator, false, false, 0);

            if (_showStatusBar)
            {
                vbox.PackStart(_statusbar, false, false, 0);
            }

            //Final Pack      
            PackStart(vbox);

            //Required Always Start in First Record, and get Iter XPGuidObject, Ready for Update Action
            try
            {
                if (_dataSource.Count > 0)
                {
                    treeViewProfile.Model.GetIterFirst(out _treeIter);
                    _treePath = ListStoreModelFilter.GetPath(_treeIter);
                    treeViewProfile.SetCursor(_treePath, null, false);
                    _dataSourceRow = (SYS_UserProfile)_dataSource.Lookup(new Guid(Convert.ToString(treeViewProfile.Model.GetValue(_treeIter, _modelFirstCustomFieldIndex))));
                }
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }

            //Events
            treeViewProfile.CursorChanged += _treeView_CursorChanged;
            treeViewProfile.RowActivated += delegate { Update(); };
            treeViewProfile.Vadjustment.ValueChanged += delegate { UpdatePages(); };
            treeViewProfile.Vadjustment.Changed += delegate { UpdatePages(); };

            //****************************************************************************

            _treeViewPermissionItem.Model = _listStoreModelPermissionItem;

            TreeViewColumn tmpColId = _treeViewPermissionItem.AppendColumn("ID", new CellRendererText(), "text", 0);
            tmpColId.Visible = false;

            TreeViewColumn tmpColProperty = _treeViewPermissionItem.AppendColumn(Resx.global_privilege_property, new CellRendererText() { FontDesc = _fontDesc }, "text", 1);
            //Config Column Title
            Label labelPropertyTitle = new Label(tmpColProperty.Title);
            labelPropertyTitle.Show();
            labelPropertyTitle.ModifyFont(_fontDescTitle);
            tmpColProperty.Widget = labelPropertyTitle;

            TreeViewColumn tmpColActivo = _treeViewPermissionItem.AppendColumn(Resx.global_privilege_active, _cellRendererTogglePermissionItem, "active", 2);
            tmpColActivo.MaxWidth = 100;
            //Config Column Title
            Label labelActivoTitle = new Label(tmpColActivo.Title);
            labelActivoTitle.Show();
            labelActivoTitle.ModifyFont(_fontDescTitle);
            tmpColActivo.Widget = labelActivoTitle;
            //Event
            _cellRendererTogglePermissionItem.Toggled += ToggleEvent;

            ScrolledWindow scrolledWindowPermissionItem = new ScrolledWindow() { WidthRequest = 500 };
            scrolledWindowPermissionItem.Add(_treeViewPermissionItem);

            hbox.Add(scrolledWindowPermissionItem);
        }

        void ToggleEvent(object o, ToggledArgs args)
        {
            TreeIter iter;
            if (_listStoreModelPermissionItem.GetIter(out iter, new TreePath(args.Path)))
            {
                _listStoreModelPermissionItem.SetValue(iter, 2, !_cellRendererTogglePermissionItem.Active);
                UpdateState("" + _listStoreModelPermissionItem.GetValue(iter, 0), _cellRendererTogglePermissionItem.Active);
            }
        }

        private void UpdateState(string pOid, bool pNewValue)
        {
            //UserProfile _currentXPObject = (UserProfile)_dataSource.Lookup(new Guid("" + TreeView.Model.GetValue(_treeIter, _modelFirstCustomFieldIndex)));
            SYS_UserProfile _currentXPObject = (SYS_UserProfile)FrameworkUtils.GetXPGuidObject(GlobalFramework.SessionXpo, typeof(SYS_UserProfile), new Guid("" + treeViewProfile.Model.GetValue(_treeIter, _modelFirstCustomFieldIndex)));

            SYS_UserPermissionProfile tmpUserPermissionProfileUpdate = null;// (UserPermissionProfile)_xpCollection2.Lookup(new Guid("" + pOid));

            bool needToInsert = true;
            for (int i = 0; i < _xpCollectionUserPermissionItem.Count; i++)
            {
                SYS_UserPermissionItem tmpUserPermissionItem = ((SYS_UserPermissionItem)_xpCollectionUserPermissionItem[i]);

                try
                {
                    if (tmpUserPermissionItem.Oid == new Guid("" + pOid))
                    {
                        for (int j = 0; j < _xpCollectionUserPermissionProfile.Count; j++)
                        {
                            SYS_UserPermissionProfile tmpUserPermissionProfile = ((SYS_UserPermissionProfile)_xpCollectionUserPermissionProfile[j]);

                            if ((tmpUserPermissionProfile.UserProfile != null) && (tmpUserPermissionProfile.PermissionItem != null))
                            {
                                if ((tmpUserPermissionProfile.UserProfile.Oid == _currentXPObject.Oid) &&
                                   (tmpUserPermissionProfile.PermissionItem.Oid == tmpUserPermissionItem.Oid))
                                {
                                    needToInsert = true;
                                    //((UserPermissionProfile)_xpCollection3[j]).Disabled = !pNewValue;
                                    //((UserPermissionProfile)_xpCollectionUserPermissionProfile[j]).Delete();
                                    //Mario Fix: Get Fresh Object else Gives Object Deleted Stress
                                    tmpUserPermissionProfile = (SYS_UserPermissionProfile)FrameworkUtils.GetXPGuidObject(GlobalFramework.SessionXpo, typeof(SYS_UserPermissionProfile), tmpUserPermissionProfile.Oid);
                                    tmpUserPermissionProfile.Delete();
                                    _xpCollectionUserPermissionProfile.Reload();
                                }
                            }
                        }

                        if (needToInsert)
                        {
                            tmpUserPermissionProfileUpdate = (SYS_UserPermissionProfile)Activator.CreateInstance(_xpObjectTypeUserPermissionProfile, GlobalFramework.SessionXpo);
                            tmpUserPermissionProfileUpdate.Reload();
                            tmpUserPermissionProfileUpdate.UserProfile = _currentXPObject;
                            //Mario Fix: Get Fresh Object else Gives Object Deleted Stress
                            tmpUserPermissionItem = (SYS_UserPermissionItem)FrameworkUtils.GetXPGuidObject(GlobalFramework.SessionXpo, typeof(SYS_UserPermissionItem), tmpUserPermissionItem.Oid);
                            tmpUserPermissionProfileUpdate.PermissionItem = tmpUserPermissionItem;
                            tmpUserPermissionProfileUpdate.Granted = !pNewValue;
                            tmpUserPermissionProfileUpdate.Save();
                            _xpCollectionUserPermissionProfile.Reload();
                        }
                        else
                        {
                        }
                    }
                }
                catch (Exception ex)
                {
                    _log.Error(ex.Message, ex);
                }
            }
        }

        // Detect cursor changes, from mouse or keyboard
        new protected void _treeView_CursorChanged(object sender, EventArgs e)
        {
            base._treeView_CursorChanged(sender, e);
            LoadRefreshView();
        }

        private void LoadRefreshView()
        {
            _listStoreModelPermissionItem.Clear();

            //UserProfile _currentXPObject = (UserProfile)_dataSource.Lookup(new Guid("" + TreeView.Model.GetValue(_treeIter, _modelFirstCustomFieldIndex)));
            SYS_UserProfile _currentXPObject = (SYS_UserProfile)FrameworkUtils.GetXPGuidObject(GlobalFramework.SessionXpo, typeof(SYS_UserProfile), new Guid("" + treeViewProfile.Model.GetValue(_treeIter, _modelFirstCustomFieldIndex)));

            for (int i = 0; i < _xpCollectionUserPermissionItem.Count; i++)
            {
                bool tmpCurrentValue = false;
                SYS_UserPermissionItem tmpUserPermissionItem = ((SYS_UserPermissionItem)_xpCollectionUserPermissionItem[i]);

                try
                {
                    for (int j = 0; j < _xpCollectionUserPermissionProfile.Count; j++)
                    {
                        SYS_UserPermissionProfile tmpUserPermissionProfile = ((SYS_UserPermissionProfile)_xpCollectionUserPermissionProfile[j]);
                        if (tmpUserPermissionProfile.UserProfile != null && tmpUserPermissionProfile.PermissionItem != null)
                        {
                            if ((tmpUserPermissionProfile.UserProfile.Oid == _currentXPObject.Oid) &&
                                (tmpUserPermissionProfile.PermissionItem.Oid == tmpUserPermissionItem.Oid))
                            {
                                tmpCurrentValue = tmpUserPermissionProfile.Granted;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    _log.Error(ex.Message, ex);
                }
                _listStoreModelPermissionItem.AppendValues("" + tmpUserPermissionItem.Oid, tmpUserPermissionItem.Designation, tmpCurrentValue);
            }
        }
    }
}
