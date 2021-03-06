﻿using logicpos.datalayer.DataLayer.Xpo;
using logicpos.datalayer.Enums;
using System;

namespace logicpos.datalayer.App
{
    public abstract class SettingsApp
    {
        // Application Mode
        public static AppOperationMode AppMode = FrameworkUtils.GetAppMode();

        //Used in Application : Assigned on InitPlataformParameters()
        public static CFG_ConfigurationCountry ConfigurationSystemCountry = null;

        //Default Xpo Values

        //Article
        public static Guid XpoOidArticleDefaultType = new Guid("edf4841e-e451-4c7b-9bd0-ee02860ba937");
        public static Guid XpoOidArticleDefaultClass = new Guid("6924945d-f99e-476b-9c4d-78fb9e2b30a3");
        public static Guid XpoOidArticleDefaultVatDirectSelling = new Guid("cee00590-7317-41b8-af46-66560401096b");
        public static Guid XpoOidArticleDefaultVatOnTable = new Guid("cee00590-7317-41b8-af46-66560401096b");
        public static Guid XpoOidArticleDefaultUnitMeasure = new Guid("4c81aa20-98ec-4497-b740-165cdb5fa395");
        public static Guid XpoOidArticleDefaultUnitSize = new Guid("18f564aa-7da5-4a1c-9091-8014638b818c");
        public static Guid XpoOidArticleDefaultTemplate = new Guid("a537cad3-ebf4-4df4-bd8d-28009ad226a2");

        public static string DefaultValueUserDetailButtonImage = @"Images\Icons\Users\icon_user_default.png";
        public static string DefaultValueUserDetailAccessPin = "0000";

        //Templates
        //Modelo para impressão de Ticket
        public static Guid XpoOidConfigurationPrintersTemplateTicket = new Guid("a537cad3-ebf4-4df4-bd8d-74209ad226a2");
        //Modelo para impressão de Consulta de Mesa
        public static Guid XpoOidConfigurationPrintersTemplateTableConsult = new Guid("f6a25476-40b0-46d7-9104-d5db3f50d7f1");
    }
}
