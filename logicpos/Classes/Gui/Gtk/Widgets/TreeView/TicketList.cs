﻿using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.financial;
using logicpos.Classes.Enums.TicketList;
using logicpos.Classes.Gui.Gtk.Pos.Dialogs;
using logicpos.Classes.Gui.Gtk.Widgets.Buttons;
using logicpos.resources.Resources.Localization;
using logicpos.shared;
using logicpos.datalayer.Enums;
using logicpos.shared.Classes.Finance;
using logicpos.shared.Classes.Orders;
using logicpos.shared.Enums;
using System;
using System.Drawing;

namespace logicpos.Classes.Gui.Gtk.Widgets
{
    public partial class TicketList : Box
    {
        //Log4Net
        private log4net.ILog _log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        //Settings: App
        private string _appOperationModeToken = GlobalFramework.Settings["appOperationModeToken"];
        //Settings: Colors
        private Color _colorPosTicketListModeTicketBackground = FrameworkUtils.StringToColor(GlobalFramework.Settings["colorPosTicketListModeTicketBackground"]);
        private Color _colorPosTicketListModeOrderMainBackground = FrameworkUtils.StringToColor(GlobalFramework.Settings["colorPosTicketListModeOrderMainBackground"]);
        //SessionApp
        private Guid _currentOrderMainOid;
        private int _currentTicketId;
        private Guid _currentDetailArticleOid;
        private int _listStoreModelSelectedIndex = -1;
        //Global For Both Models, Tickets and OrderMain
        private int _listStoreModelTotalItems = 0;
        private int _listStoreModelTotalItemsTicketListMode = 0;
        private OrderDetail _currentOrderDetails;
        private ArticleBag _articleBag;
        //TreeView
        private TreeIter _treeIter;
        private TreePath _treePath;
        //UI
        private TreeView _treeView;
        private Label _labelTotal;
        private Label _labelLabelTotal;

        //Public Properties
        private PosMainWindow _sourceWindow;
        public PosMainWindow SourceWindow
        {
            get { return _sourceWindow; }
            set { _sourceWindow = value; }
        }
        private ListStore _listStoreModel;
        public ListStore ListStoreModel
        {
            get { return _listStoreModel; }
            set { _listStoreModel = value; }
        }
        private TicketListMode _listMode = TicketListMode.Ticket;
        internal TicketListMode ListMode
        {
            get { return _listMode; }
            set { _listMode = value; }
        }

        //TicketPad Button References
        TouchButtonIconWithText _buttonKeyPrev;
        public TouchButtonIconWithText ButtonKeyPrev
        {
            set { _buttonKeyPrev = value; _buttonKeyPrev.Clicked += _buttonKeyPrev_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyNext;
        public TouchButtonIconWithText ButtonKeyNext
        {
            set { _buttonKeyNext = value; _buttonKeyNext.Clicked += _buttonKeyNext_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyDelete;
        public TouchButtonIconWithText ButtonKeyDelete
        {
            set { _buttonKeyDelete = value; _buttonKeyDelete.Clicked += _buttonKeyDelete_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyChangeQuantity;
        public TouchButtonIconWithText ButtonKeyChangeQuantity
        {
            set { _buttonKeyChangeQuantity = value; _buttonKeyChangeQuantity.Clicked += _buttonKeyChangeQuantity_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyChangePrice;
        public TouchButtonIconWithText ButtonKeyChangePrice
        {
            set { _buttonKeyChangePrice = value; _buttonKeyChangePrice.Clicked += _buttonKeyChangePrice_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyWeight;
        public TouchButtonIconWithText ButtonKeyWeight
        {
            set { _buttonKeyWeight = value; _buttonKeyWeight.Clicked += _buttonKeyWeight_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyGifts;
        public TouchButtonIconWithText ButtonKeyGifts
        {
            set { _buttonKeyGifts = value; _buttonKeyGifts.Clicked += _buttonKeyGifts_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyFinishOrder;
        public TouchButtonIconWithText ButtonKeyFinishOrder
        {
            set { _buttonKeyFinishOrder = value; _buttonKeyFinishOrder.Clicked += _buttonKeyFinishOrder_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyPayments;
        public TouchButtonIconWithText ButtonKeyPayments
        {
            set { _buttonKeyPayments = value; _buttonKeyPayments.Clicked += _buttonKeyPayments_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyBarCode;
        public TouchButtonIconWithText ButtonKeyBarCode
        {
            set { _buttonKeyBarCode = value; _buttonKeyBarCode.Clicked += _buttonKeyBarCode_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyListOrder;
        public TouchButtonIconWithText ButtonKeyListOrder
        {
            set { _buttonKeyListOrder = value; _buttonKeyListOrder.Clicked += _buttonKeyListOrder_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyChangeTable;
        public TouchButtonIconWithText ButtonKeyChangeTable
        {
            set { _buttonKeyChangeTable = value; _buttonKeyChangeTable.Clicked += _buttonKeyChangeTable_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyListMode;
        public TouchButtonIconWithText ButtonKeyListMode
        {
            set { _buttonKeyListMode = value; _buttonKeyListMode.Clicked += _buttonKeyListMode_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyDecrease;
        public TouchButtonIconWithText ButtonKeyDecrease
        {
            set { _buttonKeyDecrease = value; _buttonKeyDecrease.Clicked += _buttonKeyDecrease_Clicked; }
        }

        TouchButtonIconWithText _buttonKeyIncrease;
        public TouchButtonIconWithText ButtonKeyIncrease
        {
            set { _buttonKeyIncrease = value; _buttonKeyIncrease.Clicked += _buttonKeyIncrease_Clicked; }
        }

        //Toolbar Button References
        TouchButtonIconWithText _toolbarApplicationClose;
        public TouchButtonIconWithText ToolbarApplicationClose
        {
            set { _toolbarApplicationClose = value; }
        }

        TouchButtonIconWithText _toolbarLogoutUser;
        public TouchButtonIconWithText ToolbarLogoutUser
        {
            set { _toolbarLogoutUser = value; }
        }

        TouchButtonIconWithText _toolbarShowSystemDialog;
        public TouchButtonIconWithText ToolbarShowSystemDialog
        {
            set { _toolbarShowSystemDialog = value; }
        }

        TouchButtonIconWithText _toolbarShowChangeUserDialog;
        public TouchButtonIconWithText ToolbarShowChangeUserDialog
        {
            set { _toolbarShowChangeUserDialog = value; }
        }

        TouchButtonIconWithText _toolbarBackOffice;
        public TouchButtonIconWithText ToolbarBackOffice
        {
            set { _toolbarBackOffice = value; }
        }

        TouchButtonIconWithText _toolbarReports;
        public TouchButtonIconWithText ToolbarReports
        {
            set { _toolbarReports = value; }
        }

        TouchButtonIconWithText _toolbarCashDrawer;
        public TouchButtonIconWithText ToolbarCashDrawer
        {
            set { _toolbarCashDrawer = value; }
        }

        TouchButtonIconWithText _toolbarFinanceDocuments;
        public TouchButtonIconWithText ToolbarFinanceDocuments
        {
            set { _toolbarFinanceDocuments = value; }
        }

        TouchButtonIconWithText _toolbarNewFinanceDocument;
        public TouchButtonIconWithText ToolbarNewFinanceDocument
        {
            set { _toolbarNewFinanceDocument = value; }
        }

        //Constructor
        public TicketList(dynamic pThemeObject)
        {
            InitUI(pThemeObject);
        }

        private void InitUI(dynamic pThemeObject)
        {
            try
            {
                //Objects:EventBoxPosTicketList:EventBoxTotal
                Gdk.Color eventBoxTotalBackgroundColor = Utils.StringToGdkColor(pThemeObject.EventBoxTotal.BackgroundColor);
                //Objects:Columns
                Pango.FontDescription columnsFontTitle = Pango.FontDescription.FromString(pThemeObject.Columns.FontTitle);
                Pango.FontDescription columnsFontData = Pango.FontDescription.FromString(pThemeObject.Columns.FontData);

                //Objects:EventBoxPosTicketList:EventBoxTotal:LabelLabelTotal
                Pango.FontDescription labelLabelTotalFont = Pango.FontDescription.FromString(pThemeObject.EventBoxTotal.LabelLabelTotal.Font);
                Gdk.Color labelLabelTotalFontColor = Utils.StringToGdkColor(pThemeObject.EventBoxTotal.LabelLabelTotal.FontColor);
                float labelLabelTotalAlignmentX = Convert.ToSingle(pThemeObject.EventBoxTotal.LabelLabelTotal.AlignmentX);
                //Objects:EventBoxPosTicketList:EventBoxTotal:LabelTotal
                Pango.FontDescription labelTotalFont = Pango.FontDescription.FromString(pThemeObject.EventBoxTotal.LabelTotal.Font);
                Gdk.Color labelTotalFontColor = Utils.StringToGdkColor(pThemeObject.EventBoxTotal.LabelTotal.FontColor);
                float labelTotalAlignmentX = Convert.ToSingle(pThemeObject.EventBoxTotal.LabelTotal.AlignmentX);

                //scrolledWindow
                ScrolledWindow scrolledWindow = new ScrolledWindow();
                scrolledWindow.SetPolicy(PolicyType.Never, PolicyType.Always);

                //Label LabelTotal
                _labelLabelTotal = new Label(Resx.global_total_ticket);
                _labelLabelTotal.ModifyFont(labelLabelTotalFont);
                _labelLabelTotal.ModifyFg(StateType.Normal, labelLabelTotalFontColor);
                _labelLabelTotal.SetAlignment(labelLabelTotalAlignmentX, 0.0F);

                //Label Total
                _labelTotal = new Label();
                //_labelTotal.SetAlignment(0.0F, 0.0F);
                _labelTotal.ModifyFont(labelTotalFont);
                _labelTotal.ModifyFg(StateType.Normal, labelTotalFontColor);
                _labelTotal.SetAlignment(labelTotalAlignmentX, 0.0F);
                _labelTotal.Text = FrameworkUtils.DecimalToStringCurrency(0);

                HBox hboxTotal = new HBox(false, 4);
                hboxTotal.PackStart(_labelLabelTotal, true, true, 5);
                hboxTotal.PackStart(_labelTotal, false, false, 5);

                //eventBoxTotal
                EventBox eventBoxTotal = new EventBox() { BorderWidth = 0/*, VisibleWindow = false*/ };
                //REPLACED BY THEME BACKGROUNDS
                eventBoxTotal.ModifyBg(StateType.Normal, eventBoxTotalBackgroundColor);
                eventBoxTotal.Add(hboxTotal);

                //_treeView
                //Init TreeView Model
                _listStoreModel = new ListStore(typeof(Guid), typeof(string), typeof(string), typeof(string), typeof(string), typeof(string), typeof(string), typeof(ArticleBagKey));
                //Assign TreeView Model Reference to TreeView Model
                _treeView = new TreeView(_listStoreModel) { RulesHint = false, CanFocus = false };
                InitColumns(_treeView, columnsFontTitle, columnsFontData);
                //Events, before working on Model
                _treeView.CursorChanged += _treeView_CursorChanged;
                _listStoreModel.RowInserted += _listStoreModel_RowInserted;

                //Only UpdateModel if has a CurrentOrderMainId
                if (GlobalFramework.SessionApp.OrdersMain.Count > 0) UpdateModel();
                scrolledWindow.Add(_treeView);

                //Update ArticleBag
                UpdateArticleBag();

                //Pack in VBox
                VBox vbox = new VBox(false, 0);
                vbox.PackStart(scrolledWindow, true, true, 0);
                vbox.PackStart(eventBoxTotal, false, false, 2);

                //Pack in Box
                PackStart(vbox, true, true, 0);
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        private void InitColumns(TreeView pTreeView, Pango.FontDescription pColumnTitleFontDesc, Pango.FontDescription pColumnDataFontDesc)
        {
            CellRendererText rendererText;
            TreeViewColumn column;
            int sharedWidth = 65;

            int widthDesignation = (FrameworkUtils.OSVersion() != "unix") ? 106 : 116;

            Pango.FontDescription fontDescTitle = pColumnTitleFontDesc;
            Pango.FontDescription fontDesc = pColumnDataFontDesc;

            Label labelDesignation = new Label(Resx.pos_ticketlist_label_designation) { Visible = true };
            Label labelPrice = new Label(Resx.pos_ticketlist_label_price) { Visible = true };
            Label labelQuantity = new Label(Resx.pos_ticketlist_label_quantity) { Visible = true };
            Label labelDiscount = new Label(Resx.pos_ticketlist_label_discount) { Visible = true };
            Label labelVat = new Label(Resx.pos_ticketlist_label_vat) { Visible = true };
            Label labelTotal = new Label(Resx.pos_ticketlist_label_total) { Visible = true };
            labelDesignation.ModifyFont(fontDescTitle);
            labelPrice.ModifyFont(fontDescTitle);
            labelQuantity.ModifyFont(fontDescTitle);
            labelDiscount.ModifyFont(fontDescTitle);
            labelVat.ModifyFont(fontDescTitle);
            labelTotal.ModifyFont(fontDescTitle);

            //TicketListColumns.ArticleId
            rendererText = new CellRendererText() { FontDesc = fontDesc };
            column = new TreeViewColumn("Index", rendererText, "text", 0)
            {
                Visible = false
            };
            pTreeView.AppendColumn(column);

            //TicketListColumns.Designation
            rendererText = new CellRendererText() { FontDesc = fontDesc };
            column = new TreeViewColumn(null, rendererText, "text", TicketListColumns.Designation)
            {
                Widget = labelDesignation,
                MinWidth = widthDesignation,
                MaxWidth = widthDesignation
            };
            pTreeView.AppendColumn(column);

            //TicketListColumns.Price
            rendererText = new CellRendererText() { FontDesc = fontDesc, Xalign = 1.0F };
            column = new TreeViewColumn(null, rendererText, "text", TicketListColumns.Price)
            {
                Widget = labelPrice,
                Alignment = 1.0F,
                MinWidth = sharedWidth,
                MaxWidth = sharedWidth
            };
            pTreeView.AppendColumn(column);

            //TicketListColumns.Quantity
            rendererText = new CellRendererText() { FontDesc = fontDesc, Xalign = 1.0F };
            column = new TreeViewColumn(null, rendererText, "text", TicketListColumns.Quantity)
            {
                Widget = labelQuantity,
                Alignment = 1.0F,
                MinWidth = sharedWidth - 10,
                MaxWidth = sharedWidth - 10
            };
            pTreeView.AppendColumn(column);

            //TicketListColumns.Discount
            rendererText = new CellRendererText() { FontDesc = fontDesc, Xalign = 1.0F };
            column = new TreeViewColumn(null, rendererText, "text", TicketListColumns.Discount)
            {
                Widget = labelDiscount,
                Alignment = 1.0F,
                MinWidth = sharedWidth,
                MaxWidth = sharedWidth,
                Visible = false
            };
            pTreeView.AppendColumn(column);

            //TicketListColumns.Vat
            rendererText = new CellRendererText() { FontDesc = fontDesc, Xalign = 1.0F };
            column = new TreeViewColumn(null, rendererText, "text", TicketListColumns.Vat)
            {
                Widget = labelVat,
                Alignment = 1.0F,
                MinWidth = sharedWidth,
                MaxWidth = sharedWidth,
                Visible = false
            };
            pTreeView.AppendColumn(column);

            //TicketListColumns.Total
            rendererText = new CellRendererText() { FontDesc = fontDesc, Xalign = 1.0F };
            column = new TreeViewColumn(null, rendererText, "text", TicketListColumns.Total)
            {
                Widget = labelTotal,
                Alignment = 1.0F,
                MinWidth = sharedWidth + 10,
                MaxWidth = sharedWidth + 10
            };
            pTreeView.AppendColumn(column);
        }

        public void UpdateModel()
        {
            //Always Init a New Model, and Init Values
            _listStoreModel.Clear();
            _listStoreModelSelectedIndex = -1;
            _listStoreModelTotalItems = 0;

            //Init Values from SessionApp
            _currentOrderMainOid = GlobalFramework.SessionApp.CurrentOrderMainOid;
            _currentTicketId = GlobalFramework.SessionApp.OrdersMain[_currentOrderMainOid].CurrentTicketId;
            _currentOrderDetails = GlobalFramework.SessionApp.OrdersMain[_currentOrderMainOid].OrderTickets[_currentTicketId].OrderDetails;

            //Change BackGround Color ListMode
            Gdk.Color colorListMode = (_listMode == TicketListMode.Ticket) ? colorListMode = Utils.ColorToGdkColor(_colorPosTicketListModeTicketBackground) : colorListMode = Utils.ColorToGdkColor(_colorPosTicketListModeOrderMainBackground);
            _treeView.ModifyBase(StateType.Normal, colorListMode);

            //Ticket Mode
            if (_listMode == TicketListMode.Ticket)
            {
                //Reset TicketList Mode, only if is in TicketList Mode, else keep unchanged
                _listStoreModelTotalItemsTicketListMode = 0;

                //Start Append Items to Model
                foreach (OrderDetailLine line in _currentOrderDetails.Lines)
                {
                    _listStoreModel.AppendValues(
                      line.ArticleOid,
                      line.Designation,
                      FrameworkUtils.DecimalToString(line.Properties.PriceFinal),
                      FrameworkUtils.DecimalToString(line.Properties.Quantity),
                      line.Properties.DiscountArticle.ToString(),
                      line.Properties.Vat.ToString(),
                      FrameworkUtils.DecimalToString(line.Properties.TotalFinal)
                    );
                    //Store Current TreeIter in Session (Non Public)
                    line.TreeIter = _treeIter;
                }
            }
            //OrderMain Mode
            else
            {
                //Update Global Article Bag, from DB
                UpdateArticleBag();

                //Reset listIndex to store Index position in Dictionary
                int listIndex = 0;

                //Loop ArticleBag, and create new FinanceDetail Document lines
                foreach (var item in _articleBag)
                {
                    ArticleBagKey articleBagKey = new ArticleBagKey(item.Key.ArticleOid, item.Key.Designation, item.Key.Price, item.Key.Discount, item.Key.Vat);

                    //Detect and Assign VatExemptionReason to ArticleBak Key
                    if (item.Key.VatExemptionReasonOid != null && item.Key.VatExemptionReasonOid != Guid.Empty)
                    {
                        articleBagKey.VatExemptionReasonOid = item.Key.VatExemptionReasonOid;
                    }

                    _listStoreModel.AppendValues(
                      item.Key.ArticleOid,
                      item.Key.Designation,
                      FrameworkUtils.DecimalToString(item.Value.PriceFinal),
                      FrameworkUtils.DecimalToString(item.Value.Quantity),
                      item.Key.Discount.ToString(),
                      item.Key.Vat.ToString(),
                      FrameworkUtils.DecimalToString(item.Value.TotalFinal),
                      //Add ArticleBag Key to Model
                      articleBagKey
                    );
                    //Store Current TreeIter in Session (Non Public)
                    item.Value.TreeIter = _treeIter;
                    //Assign / Increment listIndex
                    item.Value.ListIndex = listIndex++;
                }
            }

            //Required Always Start in Last Record, After initialize TreeView Model
            _treeView.SetCursor(_treePath, null, false);
            _treeView.ScrollToCell(_treePath, _treeView.Columns[0], false, 0, 0);

            //Init _currentDetailArticleOid, If Model is Empty the Value 0 is Assigned
            if (_listStoreModel.Data.Count > 0) _currentDetailArticleOid = (Guid)_listStoreModel.GetValue(_treeIter, 0);

            UpdateTicketListButtons();
            UpdateTicketListTotal();
        }

        public void InsertOrUpdate(string pArticleEAN)
        {
            //public static XPGuidObject GetXPGuidObjectFromCriteria(Session pSession, Type pXPGuidObjectType, string pCriteriaFilter)
            string sql = string.Format("SELECT Oid FROM fin_article WHERE BarCode = '{0}';", pArticleEAN);
            Guid articleGuid = FrameworkUtils.GetGuidFromQuery(sql);

            if (articleGuid != Guid.Empty)
            {
                InsertOrUpdate(articleGuid);
            }
        }

        public void InsertOrUpdate(Guid pArticleOid)
        {
            bool requireToChooseVatExemptionReason = true;

            try
            {
                // Override Default with Config Value
                requireToChooseVatExemptionReason = Convert.ToBoolean(GlobalFramework.Settings["requireToChooseVatExemptionReason"]);
            }
            catch (Exception)
            {
                _log.Error("Error Missing Config Parameter Key: [requireToChooseVatExemptionReason]");
            }

            try
            {
                //Get Article
                FIN_Article article = (FIN_Article)FrameworkUtils.GetXPGuidObject(typeof(FIN_Article), pArticleOid);

                //Get Article defaultQuantity
                decimal defaultQuantity = GetArticleDefaultQuantity(pArticleOid);
                decimal price = 0.0m;

                //Get current Index with LINQ : To Get OrderDetail articleId Index, If Exists
                _listStoreModelSelectedIndex = _currentOrderDetails.Lines.FindIndex(item => item.ArticleOid == pArticleOid);

                //Check if is a TaxDutyFree(Isento) Article, and Show Info Message.
                //TODO
                //Create Protection for Invalid Product, ex Product Without Vat, Create a Shared Method to check if is a Valid Article
                if (requireToChooseVatExemptionReason && article.VatDirectSelling.Oid == SettingsApp.XpoOidConfigurationVatRateDutyFree && article.VatExemptionReason == null)
                {
                    //TODO: Implement VatExemptionReason in TicketList (Both Modes) 
                    //Guid vatExemptionReasonGuid = GetVatExemptionReason();
                    Utils.ShowMessageTouch(_sourceWindow, DialogFlags.DestroyWithParent, new Size(400, 300), MessageType.Error, ButtonsType.Ok, Resx.window_title_dialog_vatrate_free_article_detected, Resx.dialog_message_article_without_vat_exception_reason_detected);
                    return;
                }

                //Update
                if (_listStoreModelSelectedIndex != -1)
                {
                    //Update orderDetails SessionApp
                    _currentOrderDetails.Update(_listStoreModelSelectedIndex, _currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.Quantity += defaultQuantity);

                    //Update TreeView Model
                    _treeIter = (TreeIter)_currentOrderDetails.Lines[_listStoreModelSelectedIndex].TreeIter;
                    //Update Quantity
                    _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Quantity, FrameworkUtils.DecimalToString(_currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.Quantity));
                    //Update Total
                    _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Total, FrameworkUtils.DecimalToString(_currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.TotalFinal));
                }
                //Insert
                else
                {
                    //Get Place Object to extract TaxSellType Normal|TakeWay
                    OrderMain currentOrderMain = GlobalFramework.SessionApp.OrdersMain[GlobalFramework.SessionApp.CurrentOrderMainOid];
                    POS_ConfigurationPlace configurationPlace = (POS_ConfigurationPlace)GlobalFramework.SessionXpo.GetObjectByKey(typeof(POS_ConfigurationPlace), currentOrderMain.Table.PlaceId);
                    //Use VatDirectSelling if in Retail or in TakeWay mode
                    TaxSellType taxSellType = (configurationPlace.MovementType.VatDirectSelling || SettingsApp.AppMode == AppOperationMode.Retail) ? TaxSellType.TakeAway : TaxSellType.Normal;
                    decimal priceTax = (taxSellType == TaxSellType.Normal) ? article.VatOnTable.Value : article.VatDirectSelling.Value;

                    //Get PriceFinal to Request Price Dialog
                    PriceProperties priceProperties = FrameworkUtils.GetArticlePrice(article, taxSellType);
                    price = priceProperties.PriceFinal;
                    PricePropertiesSourceMode sourceMode;

                    //If article dont have price or article has a variable price defined, request final price
                    if (price <= 0.0m || article.PVPVariable == true)
                    {
                        MoneyPadResult result = PosMoneyPadDialog.RequestDecimalValue(_sourceWindow, Resx.window_title_dialog_moneypad_product_price, price);
                        if (result.Response == ResponseType.Cancel) return;
                        sourceMode = PricePropertiesSourceMode.FromTotalFinal;
                        price = result.Value;
                    }
                    //If Article has Price, Use its PriceNet
                    else
                    {
                        sourceMode = PricePropertiesSourceMode.FromPriceNet;
                        price = priceProperties.PriceNet;
                    }

                    //TODO: Be sure that Money Dialog dont Permit <= 0 Values
                    if (price <= 0.0m)
                    {
                        throw new Exception("defaultPrice <= 0.0m");
                    }

                    //Get PriceFinal Here
                    priceProperties = PriceProperties.GetPriceProperties(
                      sourceMode,
                      article.PriceWithVat,
                      price,
                      1.0m,
                      article.Discount,
                      FrameworkUtils.GetDiscountGlobal(),
                      priceTax
                    );

                    //Add VatExemptionReason to VatExemptionReason
                    if (article.VatExemptionReason != null) priceProperties.VatExemptionReason = article.VatExemptionReason.Oid;

                    //Insert into orderDetails SessionApp
                    _currentOrderDetails.Insert(article.Oid, article.Designation, priceProperties);

                    //Insert into TreeView Model : [0]ArticleId,[1]Designation,[2]Price,[3]Quantity,[4]Discount,[5]Vat,[6]Total
                    System.Object[] columnValues = new System.Object[Enum.GetNames(typeof(TicketListColumns)).Length];
                    columnValues[0] = article.Oid;
                    columnValues[1] = article.Designation;
                    columnValues[2] = FrameworkUtils.DecimalToString(_currentOrderDetails.Lines[_currentOrderDetails.Lines.Count - 1].Properties.PriceFinal);
                    columnValues[3] = FrameworkUtils.DecimalToString(defaultQuantity);
                    columnValues[4] = _currentOrderDetails.Lines[_currentOrderDetails.Lines.Count - 1].Properties.DiscountArticle.ToString();
                    columnValues[5] = _currentOrderDetails.Lines[_currentOrderDetails.Lines.Count - 1].Properties.Vat.ToString();
                    columnValues[6] = FrameworkUtils.DecimalToString(_currentOrderDetails.Lines[_currentOrderDetails.Lines.Count - 1].Properties.TotalFinal);

                    //Assign Global TreeIter
                    _treeIter = _listStoreModel.AppendValues(columnValues);

                    //Assign SessionApp TreeIter, get ArticleId with LINQ
                    _listStoreModelSelectedIndex = _currentOrderDetails.Lines.FindIndex(item => item.ArticleOid == pArticleOid);
                    _currentOrderDetails.Lines[_listStoreModelSelectedIndex].TreeIter = _treeIter;
                };

                //Shared SetCursor
                _treeView.SetCursor(_listStoreModel.GetPath(_treeIter), null, false);
                _treeView.ScrollToCell(_listStoreModel.GetPath(_treeIter), null, false, 0, 0);

                //Update Total
                UpdateTicketListTotal();
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        public void ChangeQuantity(decimal pQuantity)
        {
            decimal oldValueQnt = _currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.Quantity;

            //If oldValue is diferent from New One
            if (oldValueQnt != pQuantity)
            {
                //Update orderDetails SessionApp
                _currentOrderDetails.Update(_listStoreModelSelectedIndex, pQuantity);
                //Update TreeView Model: Quantity
                _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Quantity, FrameworkUtils.DecimalToString(pQuantity));
                //Update TreeView Model: Total
                _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Total, FrameworkUtils.DecimalToString(_currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.TotalFinal));
                //Update Total
                UpdateTicketListTotal();
            }
        }

        //Used from events in Button _buttonKeyDelete_Clicked & _buttonKeyDecrease_Clicked and 
        //DeleteLine Quantity, Ore Decrease Line Quantity
        public void DeleteItem_Event(TicketListDeleteMode pMode)
        {
            if (_listMode == TicketListMode.Ticket)
            {
                try
                {
                    //WIP: Put Quantity to Work, to Delete all Items in Line
                    //if (pMode == TicketListDeleteMode.Delete)
                    //{
                    //Delete Line Sending all Quantity in Line
                    //DeleteItem_ListModeTicket(_currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.Quantity);
                    //}
                    //  else
                    //{
                    //Decrease, Without sending Quantity
                    DeleteItem_ListModeTicket();
                    //}
                }
                catch (Exception ex)
                {
                    _log.Error(ex.Message, ex);
                }
            }
            else
            {
                try
                {
                    //WIP: Put Quantity to Work, to Delete all Items in Line
                    //if (pMode == TicketListDeleteMode.Delete)
                    //{
                    //Get articleBagKey from Model
                    //  ArticleBagKey articleBagKey = (ArticleBagKey)_listStoreModel.GetValue(_treeIter, 7);
                    //Delete Line Sending all Quantity in Line
                    //  DeleteItem_ListModeOrderMain(_articleBag[articleBagKey].Quantity);
                    //}
                    //else
                    //{
                    //Decrease, Without sending Quantity
                    DeleteItem_ListModeOrderMain();
                    //}
                }
                catch (Exception ex)
                {
                    _log.Error(ex.Message, ex);
                }
            }
        }

        public void DeleteItem_ListModeTicket()
        {
            //Get Article defaultQuantity
            decimal defaultQuantity = GetArticleDefaultQuantity(_currentDetailArticleOid);
            DeleteItem_ListModeTicket(defaultQuantity);
        }

        public void DeleteItem_ListModeTicket(decimal pRemoveQuantity)
        {
            //Decrease Quantity by defaultQuantity
            _currentOrderDetails.Update(_listStoreModelSelectedIndex, _currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.Quantity -= pRemoveQuantity);

            //If Quantity <= 0 Remove Article From Model and SessionApp
            if (_currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.Quantity <= 0)
            {
                //Remove from SessionApp
                _currentOrderDetails.Delete(_listStoreModelSelectedIndex);

                //Remove from TreviewModel
                _listStoreModel.Remove(ref _treeIter);

                //Update Total Items Member
                _listStoreModelTotalItems = _listStoreModel.IterNChildren();

                if (_listMode == TicketListMode.Ticket) _listStoreModelTotalItemsTicketListMode = _listStoreModel.IterNChildren();

                Prev();

                //Update Buttons
                UpdateTicketListButtons();
            }
            //Update Model Quantity
            else
            {
                //Update Quantity
                _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Quantity, FrameworkUtils.DecimalToString(_currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.Quantity));
                //Update Total
                _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Total, FrameworkUtils.DecimalToString(_currentOrderDetails.Lines[_listStoreModelSelectedIndex].Properties.TotalFinal));
            }

            //Update Total
            UpdateTicketListTotal();
        }

        public void DeleteItem_ListModeOrderMain()
        {
            //Get Article defaultQuantity
            decimal defaultQuantity = GetArticleDefaultQuantity(_currentDetailArticleOid);
            DeleteItem_ListModeOrderMain(defaultQuantity);
        }

        public void DeleteItem_ListModeOrderMain(decimal pRemoveQuantity)
        {
            bool canDeleteItem = true;

            //Get articleBagKey from Model
            ArticleBagKey articleBagKey = (ArticleBagKey)_listStoreModel.GetValue(_treeIter, 7);

            if (canDeleteItem)
            {
                //Call ArticleBag Delete, without PartialPayment Items
                decimal currentTotalQuantity = _articleBag.DeleteFromDocumentOrder(articleBagKey, pRemoveQuantity);
                //REQUIRE to ReCalc Line TotalFinal Without PartialPayment Items
                decimal currentTotalFinal = currentTotalQuantity * _articleBag[articleBagKey].PriceFinal;

                if (currentTotalQuantity <= 0)
                {
                    //Remove from TreviewModel
                    _listStoreModel.Remove(ref _treeIter);

                    //Update Total Items Member
                    _listStoreModelTotalItems = _listStoreModel.IterNChildren();

                    Prev();

                    //Update Buttons
                    UpdateTicketListButtons();
                }
                else
                {
                    //Update Quantity
                    _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Quantity, FrameworkUtils.DecimalToString(currentTotalQuantity));
                    //Update Total
                    _listStoreModel.SetValue(_treeIter, (int)TicketListColumns.Total, FrameworkUtils.DecimalToString(currentTotalFinal));
                }

                UpdateOrderStatusBar();
            }
        }

        public void Prev()
        {
            try
            {
                _treePath.Prev();
                _treeView.SetCursor(_treePath, null, false);
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        public void Next()
        {
            try
            {
                _treePath.Next();
                _treeView.SetCursor(_treePath, null, false);
            }
            catch (Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }

        public void UpdateArticleBag()
        {
            if (GlobalFramework.SessionApp.CurrentOrderMainOid != Guid.Empty && GlobalFramework.SessionApp.OrdersMain.ContainsKey(GlobalFramework.SessionApp.CurrentOrderMainOid))
                _articleBag = ArticleBag.TicketOrderToArticleBag(GlobalFramework.SessionApp.OrdersMain[_currentOrderMainOid]);
        }

        public void UpdateTicketListButtons()
        {
            //Debug
            //_log.Debug(String.Format("Message: [{0}] [{1}]", Enum.GetName(typeof(TicketListMode), TicketListMode.Ticket), _listStoreModelTotalItems));

            //No Items, always disable All actions
            if (_listStoreModelTotalItems == 0)
            {
                if (_buttonKeyPrev != null && _buttonKeyPrev.Sensitive) _buttonKeyPrev.Sensitive = false;
                if (_buttonKeyNext != null && _buttonKeyNext.Sensitive) _buttonKeyNext.Sensitive = false;
                if (_buttonKeyIncrease != null && _buttonKeyIncrease.Sensitive) _buttonKeyIncrease.Sensitive = false;
                if (_buttonKeyDecrease != null && _buttonKeyDecrease.Sensitive) _buttonKeyDecrease.Sensitive = false;
                if (_buttonKeyDelete != null && _buttonKeyDelete.Sensitive) _buttonKeyDelete.Sensitive = false;
                if (_buttonKeyChangeQuantity != null && _buttonKeyChangeQuantity.Sensitive) _buttonKeyChangeQuantity.Sensitive = false;
                if (_buttonKeyChangePrice != null && _buttonKeyChangePrice.Sensitive) _buttonKeyChangePrice.Sensitive = false;
                if (_buttonKeyWeight != null && _buttonKeyWeight.Sensitive) _buttonKeyWeight.Sensitive = false;
                if (_buttonKeyGifts != null && _buttonKeyGifts.Sensitive) _buttonKeyGifts.Sensitive = false;
            }
            else
            {
                //If has Items always enable default actions
                if (_listMode == TicketListMode.Ticket && _listStoreModelSelectedIndex > -1)
                {
                    if (_buttonKeyIncrease != null && !_buttonKeyIncrease.Sensitive) _buttonKeyIncrease.Sensitive = true;
                    if (_buttonKeyDecrease != null && !_buttonKeyDecrease.Sensitive) _buttonKeyDecrease.Sensitive = true;
                    //Only Enabled in TicketListMode.Ticket
                    if (_buttonKeyDelete != null && _listStoreModelSelectedIndex > -1) _buttonKeyDelete.Sensitive = FrameworkUtils.HasPermissionTo("TICKETLIST_DELETE");
                    if (_buttonKeyChangePrice != null && !_buttonKeyChangePrice.Sensitive) _buttonKeyChangePrice.Sensitive = FrameworkUtils.HasPermissionTo("TICKETLIST_CHANGE_PRICE");
                    if (_buttonKeyChangeQuantity != null && !_buttonKeyChangeQuantity.Sensitive) _buttonKeyChangeQuantity.Sensitive = true;
                    //if (_buttonKeyWeight != null && !_buttonKeyWeight.Sensitive) _buttonKeyWeight.Sensitive = true;
                    //if (_buttonKeyGifts != null && !_buttonKeyGifts.Sensitive) _buttonKeyGifts.Sensitive = true;
                }
                else
                {
                    if (_buttonKeyIncrease != null && _buttonKeyIncrease.Sensitive) _buttonKeyIncrease.Sensitive = false;
                    if (_buttonKeyDecrease != null && _buttonKeyDecrease.Sensitive) _buttonKeyDecrease.Sensitive = false;
                    //Always Disabled in Orders
                    //_buttonKeyDelete.Sensitive = false;
                    //Enabled Again
                    if (_buttonKeyDelete != null && _listStoreModelSelectedIndex > -1) _buttonKeyDelete.Sensitive = FrameworkUtils.HasPermissionTo("TICKETLIST_DELETE");
                    if (_buttonKeyChangePrice != null && _buttonKeyChangePrice.Sensitive) _buttonKeyChangePrice.Sensitive = false;
                    if (_buttonKeyChangeQuantity != null && _buttonKeyChangeQuantity.Sensitive) _buttonKeyChangeQuantity.Sensitive = false;
                    //if (_buttonKeyWeight != null && _buttonKeyWeight.Sensitive) _buttonKeyWeight.Sensitive = false;
                    //if (_buttonKeyGifts != null && _buttonKeyGifts.Sensitive) _buttonKeyGifts.Sensitive = false;
                }

                //In First Item with One Item
                if (_listStoreModelSelectedIndex == 0)
                {
                    if (_buttonKeyPrev != null && _buttonKeyPrev.Sensitive) _buttonKeyPrev.Sensitive = false;
                    if (_buttonKeyNext != null)
                    {
                        //If has more than One Item Enable Next
                        if (_listStoreModelTotalItems > 1)
                        {
                            if (!_buttonKeyNext.Sensitive) _buttonKeyNext.Sensitive = true;
                        }
                        //If has One Item Disable Next
                        else
                        {
                            if (_buttonKeyNext.Sensitive) _buttonKeyNext.Sensitive = false;
                        }
                    }
                }
                //Last Item
                else if (_listStoreModelSelectedIndex == _listStoreModelTotalItems - 1)
                {
                    if (_buttonKeyPrev != null && !_buttonKeyPrev.Sensitive) _buttonKeyPrev.Sensitive = true;
                    if (_buttonKeyNext != null && _buttonKeyNext.Sensitive) _buttonKeyNext.Sensitive = false;
                }
                //Middle Items
                else
                {
                    if (_buttonKeyPrev != null && !_buttonKeyPrev.Sensitive) _buttonKeyPrev.Sensitive = true;
                    if (_buttonKeyNext != null && !_buttonKeyNext.Sensitive) _buttonKeyNext.Sensitive = true;
                };
            };

            //Toolbar Buttons
            if (_listStoreModelTotalItemsTicketListMode == 0)
            {
                if (_buttonKeyFinishOrder != null && _buttonKeyFinishOrder.Sensitive) _buttonKeyFinishOrder.Sensitive = false;
                //Toolbar Buttons
                //Commented to Always Leave app event when have articles in session
                //if (_toolbarApplicationClose != null) _toolbarApplicationClose.Sensitive = true;

                //TODO: PRIVILEGIOS
                if (_toolbarBackOffice != null /*&& !_toolbarBackOffice.Sensitive*/) _toolbarBackOffice.Sensitive = FrameworkUtils.HasPermissionTo("BACKOFFICE_ACCESS");
                if (_toolbarReports != null /*&& !_toolbarReports.Sensitive*/) _toolbarReports.Sensitive = FrameworkUtils.HasPermissionTo("REPORT_ACCESS");
                if (_toolbarShowSystemDialog != null && !_toolbarShowSystemDialog.Sensitive) _toolbarShowSystemDialog.Sensitive = FrameworkUtils.HasPermissionTo("SYSTEM_ACCESS");
                if (_toolbarLogoutUser != null && !_toolbarLogoutUser.Sensitive) _toolbarLogoutUser.Sensitive = true;
                if (_toolbarShowChangeUserDialog != null && !_toolbarShowChangeUserDialog.Sensitive) _toolbarShowChangeUserDialog.Sensitive = true;
                if (_toolbarCashDrawer != null /*&& !_toolbarCashDrawer.Sensitive*/) _toolbarCashDrawer.Sensitive = FrameworkUtils.HasPermissionTo("WORKSESSION_ALL");
                if (_toolbarFinanceDocuments != null && !_toolbarFinanceDocuments.Sensitive) _toolbarFinanceDocuments.Sensitive = true;
                //With Valid Open WorkSessionPeriodTerminal
                if (GlobalFramework.WorkSessionPeriodTerminal != null && GlobalFramework.WorkSessionPeriodTerminal.SessionStatus == WorkSessionPeriodStatus.Open)
                {
                    if (_toolbarNewFinanceDocument != null && !_toolbarNewFinanceDocument.Sensitive) _toolbarNewFinanceDocument.Sensitive = true;
                }
            }
            else
            {
                if (_buttonKeyFinishOrder != null && !_buttonKeyFinishOrder.Sensitive) _buttonKeyFinishOrder.Sensitive = true;
                //Toolbar Buttons
                //Commented to Always Leave app event when have articles in session
                //if (_toolbarApplicationClose != null && _toolbarApplicationClose.Sensitive) _toolbarApplicationClose.Sensitive = false;
                if (_toolbarBackOffice != null && _toolbarBackOffice.Sensitive) _toolbarBackOffice.Sensitive = false;
                if (_toolbarReports != null && _toolbarReports.Sensitive) _toolbarReports.Sensitive = false;
                if (_toolbarShowSystemDialog != null && _toolbarShowSystemDialog.Sensitive) _toolbarShowSystemDialog.Sensitive = false;
                if (_toolbarLogoutUser != null && _toolbarLogoutUser.Sensitive) _toolbarLogoutUser.Sensitive = false;
                if (_toolbarShowChangeUserDialog != null && _toolbarShowChangeUserDialog.Sensitive) _toolbarShowChangeUserDialog.Sensitive = false;
                if (_toolbarCashDrawer != null && _toolbarCashDrawer.Sensitive) _toolbarCashDrawer.Sensitive = false;
                if (_toolbarFinanceDocuments != null && _toolbarFinanceDocuments.Sensitive) _toolbarFinanceDocuments.Sensitive = false;
                if (_toolbarNewFinanceDocument != null && _toolbarNewFinanceDocument.Sensitive) _toolbarNewFinanceDocument.Sensitive = false;
            }

            UpdateTicketListOrderButtons();
        }

        public void UpdateTicketListOrderButtons()
        {
            //Check if Buttons are already created
            if (_buttonKeyPayments != null)
            {
                //If has a Working Order
                if (GlobalFramework.SessionApp.CurrentOrderMainOid != Guid.Empty && GlobalFramework.SessionApp.OrdersMain.ContainsKey(GlobalFramework.SessionApp.CurrentOrderMainOid))
                {
                    if (_listStoreModelTotalItemsTicketListMode > 0)
                    {
                        _buttonKeyPayments.Sensitive = true;
                        _buttonKeyChangeTable.Sensitive = false;
                        if (GlobalFramework.SessionApp.OrdersMain[GlobalFramework.SessionApp.CurrentOrderMainOid].OrderStatus == OrderStatus.Open)
                        {
                            _buttonKeyListOrder.Sensitive = true;
                        }
                        else
                        {
                            _buttonKeyListOrder.Sensitive = false;
                        }
                    }
                    else if (_listStoreModelTotalItemsTicketListMode == 0)
                    {
                        if (GlobalFramework.SessionApp.OrdersMain[GlobalFramework.SessionApp.CurrentOrderMainOid].OrderStatus == OrderStatus.Open)
                        {
                            _buttonKeyPayments.Sensitive = true;
                            _buttonKeyChangeTable.Sensitive = true;
                            _buttonKeyListOrder.Sensitive = true;
                        }
                        else
                        {
                            _buttonKeyPayments.Sensitive = false;
                            _buttonKeyChangeTable.Sensitive = false;
                            _buttonKeyListOrder.Sensitive = false;
                        }
                    }
                }
                else
                {
                    _buttonKeyPayments.Sensitive = false;
                    _buttonKeyChangeTable.Sensitive = false;
                    _buttonKeyListOrder.Sensitive = false;
                }

                //Force Update Article Bag Count in TicketMode, Required to Update ListMode Button, for Sync MultiUser
                if (_listMode == TicketListMode.Ticket) UpdateArticleBag();

                if (_articleBag != null && _articleBag.Count > 0)
                {
                    _buttonKeyListMode.Sensitive = true;
                }
                else
                {
                    _buttonKeyListMode.Sensitive = false;
                }
            }
        }

        //Update TicketList Widget Total
        private void UpdateTicketListTotal()
        {
            decimal TotalFinal;
            string labelTotalFinal;

            if (_listMode == TicketListMode.Ticket)
            {
                labelTotalFinal = Resx.global_total_ticket;
                TotalFinal = _currentOrderDetails.TotalFinal;
            }
            else
            {
                labelTotalFinal = Resx.global_total_table_tickets;
                //Toatal From ArticleBag and Not From OrderMain, This way we can check if ArticleBag is equal to OrderMain Totals, in Both Status Bars
                TotalFinal = _articleBag.TotalFinal;
            }
            _labelLabelTotal.Text = labelTotalFinal;
            _labelTotal.Text = FrameworkUtils.DecimalToStringCurrency(TotalFinal);

            //Update Display
            if (GlobalApp.HWUsbDisplay != null) GlobalApp.HWUsbDisplay.ShowOrder(_currentOrderDetails, _listStoreModelSelectedIndex);
        }

        public void UpdateOrderStatusBar()
        {
            //If CashDrawer Open
            if (GlobalFramework.WorkSessionPeriodTerminal != null && GlobalFramework.WorkSessionPeriodTerminal.SessionStatus == WorkSessionPeriodStatus.Open)
            {
                //If has Working Order
                if (
                    GlobalFramework.SessionApp.OrdersMain != null &&
                    GlobalFramework.SessionApp.CurrentOrderMainOid != null &&
                    GlobalFramework.SessionApp.OrdersMain.ContainsKey(GlobalFramework.SessionApp.CurrentOrderMainOid)
                )
                {
                    OrderMain orderMain = GlobalFramework.SessionApp.OrdersMain[GlobalFramework.SessionApp.CurrentOrderMainOid];
                    orderMain.UpdateTotals();

                    string labelCurrentTableFormat = "{0} {1} ({2}%) {3}";
                    string labelTotalTableFormat = "{0} : #{1}";
                    string lastUserName = (orderMain != null && orderMain.GlobalLastUser != null) ? string.Format(": {0}", orderMain.GlobalLastUser.Name) : string.Empty;
                    string global_table = Resx.ResourceManager.GetString(string.Format("global_table_appmode_{0}", _appOperationModeToken).ToLower());

                    _sourceWindow.LabelCurrentTable.Text =
                      string.Format(labelCurrentTableFormat
                        , global_table
                        , orderMain.Table.Name
                        , FrameworkUtils.GetDiscountGlobal()
                        , lastUserName
                        );

                    _sourceWindow.LabelTotalTable.Text =
                      string.Format(labelTotalTableFormat,
                        //Totals From OrderMain and Not From ArticleBag
                        FrameworkUtils.DecimalToStringCurrency(orderMain.GlobalTotalFinal),
                        orderMain.GlobalTotalTickets
                      );

                    //If in OrderMain Mode Update Total
                    if (_listMode == TicketListMode.OrderMain)
                        _labelTotal.Text = FrameworkUtils.DecimalToStringCurrency(orderMain.GlobalTotalFinal);
                }
                else
                {
                    _sourceWindow.LabelCurrentTable.Text = Resx.ResourceManager.GetString(string.Format("status_message_select_order_or_table_appmode_{0}", _appOperationModeToken).ToLower());
                }
            }
            //If CashDrawer Close
            else
            {
                _sourceWindow.LabelCurrentTable.Text = Resx.status_message_open_cashdrawer;
            }
        }

        private decimal GetArticleDefaultQuantity(Guid pArticleOid)
        {
            //Get Article
            FIN_Article article = (FIN_Article)FrameworkUtils.GetXPGuidObject(typeof(FIN_Article), pArticleOid);
            //Get Default Article Quantity
            decimal defaultQuantity;
            if (article.DefaultQuantity > 0) { defaultQuantity = article.DefaultQuantity; } else { defaultQuantity = 1.00m; };

            return defaultQuantity;
        }

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //Events

        //Used to assign _treePath to last Inserted Item in listStore, ex get _treePath to last, to start in last Item in Model
        void _listStoreModel_RowInserted(object o, RowInsertedArgs args)
        {
            ListStore listStore = (ListStore)o;
            _treeIter = args.Iter;
            _treePath = listStore.GetPath(args.Iter);

            //Update Total Items Member
            _listStoreModelTotalItems = listStore.IterNChildren();
            if (_listMode == TicketListMode.Ticket) _listStoreModelTotalItemsTicketListMode = listStore.IterNChildren();

            //Assign current index to _listStoreModelTotalItems - 1
            _listStoreModelSelectedIndex = _listStoreModelTotalItems - 1;
        }

        void _treeView_CursorChanged(object sender, EventArgs e)
        {
            TreeView treeView = (TreeView)sender;
            TreeSelection selection = treeView.Selection;
            TreeModel model;

            // The _treeIter will point to the selected row
            if (selection.GetSelected(out model, out _treeIter))
            {
                _treePath = model.GetPath(_treeIter);
                try
                {
                    _currentDetailArticleOid = (Guid)_listStoreModel.GetValue(_treeIter, 0);

                    //Ticket List Mode
                    if (_listMode == TicketListMode.Ticket)
                    {
                        //Get ArticleId from OrderDetails with LINQ
                        _listStoreModelSelectedIndex = _currentOrderDetails.Lines.FindIndex(item => item.ArticleOid == _currentDetailArticleOid);
                    }
                    //OrderMain List Mode
                    else
                    {
                        ArticleBagKey articleBagKey = (ArticleBagKey)_listStoreModel.GetValue(_treeIter, 7);
                        if (articleBagKey != null)
                        {
                            _listStoreModelSelectedIndex = _articleBag[articleBagKey].ListIndex;
                        }
                    }
                    //Debug
                    //_log.Debug(string.Format("_treeView_CursorChanged(): _currentDetailArticleId [{0}], _listStoreModelSelectedIndex [{1}]", _currentDetailArticleOid, _listStoreModelSelectedIndex));
                }
                catch (Exception ex)
                {
                    _log.Error(ex.Message, ex);
                }
            }
            else
            {
                _listStoreModelSelectedIndex = -1;
            }
            //Update Button State
            UpdateTicketListButtons();
        }
    }
}
