﻿using Gtk;
using logicpos.App;
using logicpos.financial;
using logicpos.Classes.Gui.Gtk.Widgets.Buttons;
using logicpos.resources.Resources.Localization;
using logicpos.shared;
using System;
using System.Drawing;
using System.IO;

namespace logicpos.Classes.Gui.Gtk.Pos.Dialogs
{
    class PosFilePickerDialog : PosBaseDialog
    {
        //Private Members
        private FileFilter _fileFilter;
        private FileChooserAction _fileChooserAction;
        //UI
        private Fixed _fixedContent;
        //Public Properties
        private FileChooserWidget _filePicker;
        public FileChooserWidget FilePicker
        {
            get { return _filePicker; }
            set { _filePicker = value; }
        }

        public PosFilePickerDialog(Window pSourceWindow, DialogFlags pDialogFlags)
            : this(pSourceWindow, pDialogFlags, null, FileChooserAction.Open)
        {
        }

        public PosFilePickerDialog(Window pSourceWindow, DialogFlags pDialogFlags, FileFilter pFileFilter, FileChooserAction pFileChooserAction)
            : base(pSourceWindow, pDialogFlags)
        {
            //Parameters
            _fileFilter = pFileFilter;
            _fileChooserAction = pFileChooserAction;

            //Init Local Vars
            String windowTitle = Resx.window_title_dialog_filepicker;
            _windowSize = new Size(700, 473);
            String fileDefaultWindowIcon = FrameworkUtils.OSSlash(GlobalFramework.Path["images"] + @"Icons\Windows\icon_window_select_record.png");

            //Init Content
            _fixedContent = new Fixed();

            //Call Init UI
            InitUI();

            //ActionArea Buttons
            TouchButtonIconWithText buttonOk = ActionAreaButton.FactoryGetDialogButtonType(ActionAreaButton.PosBaseDialogButtonType.Ok);
            TouchButtonIconWithText buttonCancel = ActionAreaButton.FactoryGetDialogButtonType(ActionAreaButton.PosBaseDialogButtonType.Cancel);

            //ActionArea
            ActionAreaButtons actionAreaButtons = new ActionAreaButtons();
            actionAreaButtons.Add(new ActionAreaButton(buttonOk, ResponseType.Ok));
            actionAreaButtons.Add(new ActionAreaButton(buttonCancel, ResponseType.Cancel));

            //Init Object
            this.InitObject(this, pDialogFlags, fileDefaultWindowIcon, windowTitle, _windowSize, _fixedContent, actionAreaButtons);
        }

        private void InitUI()
        {
            //Init Font Description
            Pango.FontDescription fontDescription = Pango.FontDescription.FromString(GlobalFramework.Settings["fontEntryBoxValue"]);
            //Init FileChooserWidget
            _filePicker = new FileChooserWidget(_fileChooserAction, "none");
            if (_fileFilter != null) _filePicker.Filter = _fileFilter;
            //Assign FilePicker StartPath
            if(Directory.Exists(GlobalApp.FilePickerStartPath)) _filePicker.SetCurrentFolder(GlobalApp.FilePickerStartPath);
            //Size and Put
            _filePicker.SetSizeRequest(_windowSize.Width - 13, _windowSize.Height - 120);
            _fixedContent.Put(_filePicker, 0, 0);
            //Events
            _filePicker.CurrentFolderChanged += delegate { GlobalApp.FilePickerStartPath = _filePicker.CurrentFolder; };
        }
    }
}
