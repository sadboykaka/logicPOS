﻿using System;
using Gtk;
using logicpos.Classes.Gui.Gtk.WidgetsXPO;
using logicpos.resources.Resources.Localization;

namespace logicpos.Classes.Gui.Gtk.BackOffice
{
    public class BackOfficeReportWindow : BackOfficeBaseWindow
    {
        public BackOfficeReportWindow()
        {
            //Info
            _log.Info("ReportsMainWindow(): Create object ReportsMainWindow");

            Title = Utils.GetWindowTitle(Resx.window_title_reports);
            InitUI();
            ShowAll();
        }

        private void InitUI()
        {
            //Init XPOAccordion
            XPOAccordion _accordion = new XPOAccordion("reporttype", "report", "ReportType") { WidthRequest = _widthAccordion };
            _fixAccordion.Add(_accordion);
            _accordion.Clicked += accordion_Clicked;
            //Define Start Content
            _nodeContent = _accordion.CurrentChildButton.Content;
            _hboxContent.PackEnd(_nodeContent);
        }
    }
}
