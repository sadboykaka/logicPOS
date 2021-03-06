﻿using Gtk;
using logicpos.financial.library.Classes.Utils;
using logicpos.Classes.Gui.Gtk.BackOffice;
using logicpos.Classes.Gui.Gtk.Pos.Dialogs;
using logicpos.Classes.Logic.Hardware;
using System;
using System.Collections.Generic;

namespace logicpos.App
{
    public class GlobalApp
    {
        //Windows
        public static StartupWindow WindowStartup;
        public static PosMainWindow WindowPos;
        //Windows
        public static BackOfficeMainWindow WindowBackOffice;
        public static BackOfficeReportWindow WindowReports;
        //Dialogs/Thread
        public static Dialog DialogThreadWork;
        public static ThreadNotify DialogThreadNotify;
        //Windows.Forms
        //public static System.Windows.Forms.Form WindowReportsWinForm;
        //Dialogs
        public static PosKeyboardDialog DialogPosKeyboard;
        //Application Notifications
        public static Dictionary<string, bool> Notifications;
        //Other
        public static Boolean MultiUserEnvironment;
        public static Boolean UseVirtualKeyBoard;
        //Theme
        public static dynamic Theme;
        public static System.Drawing.Size ScreenSize;
        public static System.Drawing.Size MaxWindowSize;
        //System
        public static string FilePickerStartPath;
        //Hardware
        public static UsbDisplayDevice HWUsbDisplay;
        public static InputReader HWBarCodeReader;

//Removed Protected Files
public static ProtectedFiles ProtectedFiles;
    }
}
