﻿using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.financial;
using logicpos.financial.library.Classes.Finance;
using logicpos.Classes.Gui.Gtk.BackOffice;
using logicpos.Classes.Gui.Gtk.Widgets;
using logicpos.Classes.Gui.Gtk.Widgets.Buttons;
using logicpos.Classes.Gui.Gtk.WidgetsXPO;
using logicpos.resources.Resources.Localization;
using logicpos.shared;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;

namespace logicpos.Classes.Gui.Gtk.Pos.Dialogs
{
    class PosEditCompanyDetails : PosBaseDialog
    {
        //Private UI
        private TouchButtonIconWithText _buttonOk;
        private ScrolledWindow _scrolledWindow;
        private EntryBoxValidation _entryBoxFiscalNumber;
        private EntryBoxValidation _entryBoxZipCode;
        private XPOEntryBoxSelectRecordValidation<CFG_ConfigurationCountry, TreeViewConfigurationCountry> _entryBoxSelectSystemCountry;
        private XPOEntryBoxSelectRecordValidation<CFG_ConfigurationCurrency, TreeViewConfigurationCurrency> _entryBoxSelectSystemCurrency;
        //Non UI
        private Dictionary<CFG_ConfigurationPreferenceParameter, EntryBoxValidation> _dictionaryObjectBag;

        public PosEditCompanyDetails(Window pSourceWindow, DialogFlags pDialogFlags)
            : base(pSourceWindow, pDialogFlags, true, false)
        {
            //Init Local Vars
            String windowTitle = Resx.window_title_edit_configurationpreferenceparameter;
            Size windowSize = new Size(600, 600);
            String fileDefaultWindowIcon = FrameworkUtils.OSSlash(GlobalFramework.Path["images"] + @"Icons\Windows\icon_window_system.png");

            //References
            _sourceWindow = pSourceWindow;

            //ActionArea Buttons
            _buttonOk = new TouchButtonIconWithText("touchButtonOk_DialogActionArea", _colorBaseDialogActionAreaButtonBackground, Resx.global_button_label_ok, _fontBaseDialogActionAreaButton, _colorBaseDialogActionAreaButtonFont, _fileActionOK, _sizeBaseDialogActionAreaButtonIcon, _sizeBaseDialogActionAreaButton.Width, _sizeBaseDialogActionAreaButton.Height) { Sensitive = false };

            //ActionArea
            ActionAreaButtons actionAreaButtons = new ActionAreaButtons();
            actionAreaButtons.Add(new ActionAreaButton(_buttonOk, ResponseType.Ok));

            //Init Content
            InitUI();

            //Start Validated
            Validate();

            //Init Object
            this.InitObject(this, pDialogFlags, fileDefaultWindowIcon, windowTitle, windowSize, _scrolledWindow, actionAreaButtons);

            //Set Focus to Window, To Hide Keyboard: Only Used if First SelectionBox are Hiden
            //this.GrabFocus();
        }

        private void InitUI()
        {
            //Get Values from Config
            Guid systemCountry;
            Guid systemCurrency;

            if (GlobalFramework.Settings["xpoOidConfigurationCountrySystemCountry"] != string.Empty)
            {
                systemCountry = new Guid(GlobalFramework.Settings["xpoOidConfigurationCountrySystemCountry"]);
            }
            else
            {
                systemCountry = SettingsApp.XpoOidConfigurationCountryPortugal;
            }

            if (GlobalFramework.Settings["xpoOidConfigurationCurrencySystemCurrency"] != string.Empty)
            {
                systemCurrency = new Guid(GlobalFramework.Settings["xpoOidConfigurationCurrencySystemCurrency"]);
            }
            else
            {
                systemCurrency = SettingsApp.XpoOidConfigurationCurrencyEuro;
            }

            //Init Inital Values
            CFG_ConfigurationCountry intialValueConfigurationCountry = (CFG_ConfigurationCountry)FrameworkUtils.GetXPGuidObject(typeof(CFG_ConfigurationCountry), systemCountry);
            CFG_ConfigurationCurrency intialValueConfigurationCurrency = (CFG_ConfigurationCurrency)FrameworkUtils.GetXPGuidObject(typeof(CFG_ConfigurationCurrency), systemCurrency);

            try
            {
                //Init dictionary for Parameters + Widgets
                _dictionaryObjectBag = new Dictionary<CFG_ConfigurationPreferenceParameter, EntryBoxValidation>();

                //Pack VBOX
                VBox vbox = new VBox(true, 2) { WidthRequest = 300 };

                //Country
                CriteriaOperator criteriaOperatorSystemCountry = CriteriaOperator.Parse("(Disabled IS NULL OR Disabled  <> 1) AND (RegExFiscalNumber IS NOT NULL)");
                _entryBoxSelectSystemCountry = new XPOEntryBoxSelectRecordValidation<CFG_ConfigurationCountry, TreeViewConfigurationCountry>(this, Resx.global_country, "Designation", "Oid", intialValueConfigurationCountry, criteriaOperatorSystemCountry, SettingsApp.RegexGuid, true);
                _entryBoxSelectSystemCountry.EntryValidation.IsEditable = false;
                _entryBoxSelectSystemCountry.EntryValidation.Validate(_entryBoxSelectSystemCountry.Value.Oid.ToString());
                //Disabled, Now Country and Currency are disabled
                _entryBoxSelectSystemCountry.ButtonSelectValue.Sensitive = true;
                _entryBoxSelectSystemCountry.EntryValidation.Sensitive = true;
                _entryBoxSelectSystemCountry.ClosePopup += delegate
                {
                    ////Require to Update RegEx
                    _entryBoxZipCode.EntryValidation.Rule = _entryBoxSelectSystemCountry.Value.RegExZipCode;
                    _entryBoxZipCode.EntryValidation.Validate();
                    //Require to Update RegEx and Criteria to filter Country Clients Only
                    _entryBoxFiscalNumber.EntryValidation.Rule = _entryBoxSelectSystemCountry.Value.RegExFiscalNumber;
                    _entryBoxFiscalNumber.EntryValidation.Validate();
                    if (_entryBoxFiscalNumber.EntryValidation.Validated)
                    {
                        bool isValidFiscalNumber = FiscalNumber.IsValidFiscalNumber(_entryBoxFiscalNumber.EntryValidation.Text, _entryBoxSelectSystemCountry.Value.Code2);
                        _entryBoxFiscalNumber.EntryValidation.Validated = isValidFiscalNumber;
                    }
                    //Call Main Validate
                    Validate();
                };

                //Currency
                CriteriaOperator criteriaOperatorSystemCurrency = CriteriaOperator.Parse("(Disabled IS NULL OR Disabled  <> 1)");
                _entryBoxSelectSystemCurrency = new XPOEntryBoxSelectRecordValidation<CFG_ConfigurationCurrency, TreeViewConfigurationCurrency>(this, Resx.global_currency, "Designation", "Oid", intialValueConfigurationCurrency, criteriaOperatorSystemCurrency, SettingsApp.RegexGuid, true);
                _entryBoxSelectSystemCurrency.EntryValidation.IsEditable = false;
                _entryBoxSelectSystemCurrency.EntryValidation.Validate(_entryBoxSelectSystemCurrency.Value.Oid.ToString());

                //Disabled, Now Country and Currency are disabled
                //_entryBoxSelectSystemCurrency.ButtonSelectValue.Sensitive = false;
                //_entryBoxSelectSystemCurrency.EntryValidation.Sensitive = false;
                _entryBoxSelectSystemCurrency.ClosePopup += delegate
                {
                    //Call Main Validate
                    Validate();
                };

                //Add to Vbox
                vbox.PackStart(_entryBoxSelectSystemCountry, true, true, 0);
                vbox.PackStart(_entryBoxSelectSystemCurrency, true, true, 0);

                //Start Render Dynamic Inputs
                CriteriaOperator criteriaOperator = CriteriaOperator.Parse("(Disabled = 0 OR Disabled is NULL) AND (FormPageNo = 1)");
                SortProperty[] sortProperty = new SortProperty[2];
                sortProperty[0] = new SortProperty("Ord", SortingDirection.Ascending);
                XPCollection xpCollection = new XPCollection(GlobalFramework.SessionXpo, typeof(CFG_ConfigurationPreferenceParameter), criteriaOperator, sortProperty);
                if (xpCollection.Count > 0)
                {
                    string label = string.Empty;
                    string regEx = string.Empty;
                    object regExObj = null;
                    bool required = false;

                    foreach (CFG_ConfigurationPreferenceParameter item in xpCollection)
                    {
                        label = (item.ResourceString != null && Resx.ResourceManager.GetString(item.ResourceString) != null) 
                            ? Resx.ResourceManager.GetString(item.ResourceString)
                            : string.Empty;
                        regExObj = FrameworkUtils.GetFieldValueFromType(typeof(SettingsApp), item.RegEx);
                        regEx = (regExObj != null) ? regExObj.ToString() : string.Empty;
                        required = Convert.ToBoolean(item.Required);

                        //Override Db Regex
                        if (item.Token == "COMPANY_POSTALCODE") regEx = _entryBoxSelectSystemCountry.Value.RegExZipCode;
                        if (item.Token == "COMPANY_FISCALNUMBER") regEx = _entryBoxSelectSystemCountry.Value.RegExFiscalNumber;

                        //Debug
                        //_log.Debug(string.Format("Label: [{0}], RegEx: [{1}], Required: [{2}]", label, regEx, required));

                        EntryBoxValidation entryBoxValidation = new EntryBoxValidation(
                            this,
                            label,
                            KeyboardMode.AlfaNumeric,
                            regEx,
                            required
                        ) { Name = item.Token };

                        //Only Assign Value if Debugger Attached : Now the value for normal user is cleaned in Init Database, we keep this code here, may be usefull
                        if (Debugger.IsAttached == true) { entryBoxValidation.EntryValidation.Text = item.Value; }

                        //Assign shared Event
                        entryBoxValidation.EntryValidation.Changed += EntryValidation_Changed;

                        //If is ZipCode Assign it to _entryBoxZipCode Reference
                        if (item.Token == "COMPANY_POSTALCODE")
                        {
                            _entryBoxZipCode = entryBoxValidation;
                            _entryBoxZipCode.EntryValidation.Rule = _entryBoxSelectSystemCountry.Value.RegExZipCode;
                        }
                        //If is FiscalNumber Assign it to entryBoxSelectCustomerFiscalNumber Reference
                        else if (item.Token == "COMPANY_FISCALNUMBER")
                        {
                            _entryBoxFiscalNumber = entryBoxValidation;
                            _entryBoxFiscalNumber.EntryValidation.Rule = _entryBoxSelectSystemCountry.Value.RegExFiscalNumber;
                        }
                        
                        //Call Validate
                        entryBoxValidation.EntryValidation.Validate();
                        //Pack and Add to ObjectBag
                        vbox.PackStart(entryBoxValidation, true, true, 0);
                        _dictionaryObjectBag.Add(item, entryBoxValidation);
                    }
                }

                Viewport viewport = new Viewport() { ShadowType = ShadowType.None };
                viewport.Add(vbox);

                _scrolledWindow = new ScrolledWindow();
                _scrolledWindow.ShadowType = ShadowType.EtchedIn;
                _scrolledWindow.SetPolicy(PolicyType.Automatic, PolicyType.Automatic);
                _scrolledWindow.Add(viewport);

                viewport.ResizeMode = ResizeMode.Parent;
                _scrolledWindow.ResizeMode = ResizeMode.Parent;
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        void EntryValidation_Changed(object sender, EventArgs e)
        {
            try
            {
                EntryBoxValidation input = ((sender as EntryValidation).Parent.Parent.Parent as EntryBoxValidation);

                input.EntryValidation.Validate();

                if (input.EntryValidation.Validated && input.Name == "COMPANY_FISCALNUMBER")
                {
                    bool isValidFiscalNumber = FiscalNumber.IsValidFiscalNumber(input.EntryValidation.Text, _entryBoxSelectSystemCountry.Value.Code2);
                    input.EntryValidation.Validated = isValidFiscalNumber;
                }
                Validate();
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        private void Validate()
        {
            try
            {
                bool validated = true;
                foreach (var item in _dictionaryObjectBag)
                {
                    if (!item.Value.EntryValidation.Validated) validated = false;
                }
                _buttonOk.Sensitive = validated;
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        protected override void OnResponse(ResponseType pResponse)
        {
            try
            {
                if (pResponse == ResponseType.Ok)
                {
                    bool changed = false;

                    foreach (var item in _dictionaryObjectBag)
                    {
                        changed = Utils.CheckIfFieldChanged(item.Key.Value, item.Value.EntryValidation.Text);
                        //_log.Debug(string.Format("FieldDb:[{0}], FieldInput:[{1}], changed: [{2}]", item.Key.Value, item.Value.EntryValidation.Text, changed));
                        if (changed)
                        {
                            item.Key.Value = item.Value.EntryValidation.Text;
                            item.Key.Save();
                        }
                    }

                    //entryBoxSelect: COMPANY_COUNTRY
                    //Assign and Save Country and Country Code 2 From entryBoxSelectCustomerCountry
                    CFG_ConfigurationPreferenceParameter configurationPreferenceParameterCompanyCountry = (FrameworkUtils.GetXPGuidObjectFromCriteria(typeof(CFG_ConfigurationPreferenceParameter), string.Format("(Disabled IS NULL OR Disabled  <> 1) AND (Token = '{0}')", "COMPANY_COUNTRY")) as CFG_ConfigurationPreferenceParameter);
                    configurationPreferenceParameterCompanyCountry.Value = _entryBoxSelectSystemCountry.Value.Designation;
                    configurationPreferenceParameterCompanyCountry.Save();
                    //entryBoxSelect: COMPANY_COUNTRY_CODE2
                    CFG_ConfigurationPreferenceParameter configurationPreferenceParameterCompanyCountryCode2 = (FrameworkUtils.GetXPGuidObjectFromCriteria(typeof(CFG_ConfigurationPreferenceParameter), string.Format("(Disabled IS NULL OR Disabled  <> 1) AND (Token = '{0}')", "COMPANY_COUNTRY_CODE2")) as CFG_ConfigurationPreferenceParameter);
                    configurationPreferenceParameterCompanyCountryCode2.Value = _entryBoxSelectSystemCountry.Value.Code2;
                    configurationPreferenceParameterCompanyCountryCode2.Save();
                    //entryBoxSelect: SYSTEM_CURRENCY
                    CFG_ConfigurationPreferenceParameter configurationPreferenceParameterSystemCurrency = (FrameworkUtils.GetXPGuidObjectFromCriteria(typeof(CFG_ConfigurationPreferenceParameter), string.Format("(Disabled IS NULL OR Disabled  <> 1) AND (Token = '{0}')", "SYSTEM_CURRENCY")) as CFG_ConfigurationPreferenceParameter);
                    configurationPreferenceParameterSystemCurrency.Value = _entryBoxSelectSystemCurrency.Value.Acronym;
                    configurationPreferenceParameterSystemCurrency.Save();
                    //entryBoxSelect: COMPANY_COUNTRY_OID
                    CFG_ConfigurationPreferenceParameter configurationPreferenceParameterCompanyCountryOid = (FrameworkUtils.GetXPGuidObjectFromCriteria(typeof(CFG_ConfigurationPreferenceParameter), string.Format("(Disabled IS NULL OR Disabled  <> 1) AND (Token = '{0}')", "COMPANY_COUNTRY_OID")) as CFG_ConfigurationPreferenceParameter);
                    configurationPreferenceParameterCompanyCountryOid.Value = _entryBoxSelectSystemCountry.Value.Oid.ToString();
                    configurationPreferenceParameterCompanyCountryOid.Save();
                    //entryBoxSelect: SYSTEM_CURRENCY_OID
                    CFG_ConfigurationPreferenceParameter configurationPreferenceParameterSystemCurrencyOid = (FrameworkUtils.GetXPGuidObjectFromCriteria(typeof(CFG_ConfigurationPreferenceParameter), string.Format("(Disabled IS NULL OR Disabled  <> 1) AND (Token = '{0}')", "SYSTEM_CURRENCY_OID")) as CFG_ConfigurationPreferenceParameter);
                    configurationPreferenceParameterSystemCurrencyOid.Value = _entryBoxSelectSystemCurrency.Value.Oid.ToString();
                    configurationPreferenceParameterSystemCurrencyOid.Save();

                    //Change Configuration : Currently only working outside Debugger, to prevent errors changing config with VS using app.config 
                    //System.ArgumentException: O nome de ficheiro 'c:\svn\logicpos\trunk\src\logicpos\bin\debug\logicpos.exe.config' é inválido porque o mesmo nome de ficheiro já é referido pela hierarquia de configuração aberta
                    Dictionary<string, string> configurationValues = new Dictionary<string, string>();
                    configurationValues.Add("xpoOidConfigurationCountrySystemCountry", _entryBoxSelectSystemCountry.Value.Oid.ToString());
                    configurationValues.Add("xpoOidConfigurationCountrySystemCountryCountryCode2", _entryBoxSelectSystemCountry.Value.Code2);
                    configurationValues.Add("xpoOidConfigurationCurrencySystemCurrency", _entryBoxSelectSystemCurrency.Value.Oid.ToString());
                    Utils.AddUpdateSettings(configurationValues);

                    //Require to assign to SettingsApp Singleton : Now Working in InitPlataformParameters() to prevent save to config catch and this code is never be executed
                    //SettingsApp.ConfigurationSystemCountry = _entryBoxSelectSystemCountry.Value;
                    //SettingsApp.ConfigurationSystemCurrency = _entryBoxSelectSystemCurrency.Value;

                    //UNDER CONSTRUCTION
                    //Call SaveSystemProtection() Here
                    //Utils.SaveSystemProtection();

                    //Proccess Country Scripts
                    string directoryCountry = FrameworkUtils.OSSlash(string.Format(@"{0}/{1}", SettingsApp.FileDatabaseOtherCommonCountry, _entryBoxSelectSystemCountry.Value.Code2));
                    string commandSeparator = ";";
                    Dictionary<string, string> replaceables = logicpos.DataLayer.GetReplaceables(GlobalFramework.DatabaseType);
                    logicpos.DataLayer.ProcessDumpDirectory(GlobalFramework.SessionXpo, directoryCountry, commandSeparator, replaceables);
                }
                else
                {
                    //Prevent ESC
                    this.Run();
                }
            }
            catch (Exception ex)
            {
                // This Error Occurs only id Debugger is Attached
                _log.Error(ex.Message, ex);
            }
        }
    }
}
