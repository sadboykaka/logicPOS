/****** 
NOTES: DONT REPLACE ABOVE BOTTOM > "Required Changes for XPO Defaults" 
RESPECT "BOF GENERATED SCRIPT" to "EOF GENERATED SCRIPT" to paste GENERATED SCRIPT from Sql Server Management
******/

/****** BOF GENERATED SCRIPT ******/

/****** Object:  Table [dbo].[CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFG_ConfigurationCountry](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Code2] [nvarchar](5) NULL,
	[Code3] [nvarchar](6) NULL,
	[Designation] [nvarchar](100) NULL,
	[Capital] [nvarchar](100) NULL,
	[TLD] [nvarchar](10) NULL,
	[Currency] [nvarchar](20) NULL,
	[CurrencyCode] [nvarchar](3) NULL,
	[RegExFiscalNumber] [nvarchar](255) NULL,
	[RegExZipCode] [nvarchar](255) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_CFG_ConfigurationCountry] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFG_ConfigurationCurrency](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Acronym] [nvarchar](100) NULL,
	[Symbol] [nvarchar](10) NULL,
	[Entity] [nvarchar](512) NULL,
	[ExchangeRate] [money] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_CFG_ConfigurationCurrency] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFG_ConfigurationHolidays](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[Fixed] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_CFG_ConfigurationHolidays] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFG_ConfigurationPreferenceParameter](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Token] [nvarchar](100) NULL,
	[Value] [nvarchar](255) NULL,
	[ResourceString] [nvarchar](100) NULL,
	[FormPageNo] [int] NULL,
	[RegEx] [nvarchar](255) NULL,
	[Required] [bit] NULL,
	[Info] [nvarchar](255) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_CFG_ConfigurationPreferenceParameter] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFG_ConfigurationUnitMeasure](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Acronym] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_CFG_ConfigurationUnitMeasure] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFG_ConfigurationUnitSize](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_CFG_ConfigurationUnitSize] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP_Customer](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[CodeInternal] [nvarchar](30) NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[Locality] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[DateOfBirth] [nvarchar](100) NULL,
	[Phone] [nvarchar](100) NULL,
	[Fax] [nvarchar](100) NULL,
	[MobilePhone] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[WebSite] [nvarchar](255) NULL,
	[FiscalNumber] [nvarchar](100) NULL,
	[CardNumber] [nvarchar](100) NULL,
	[DiscountType] [nvarchar](100) NULL,
	[Discount] [money] NULL,
	[CardCredit] [money] NULL,
	[TotalDebt] [money] NULL,
	[TotalCredit] [money] NULL,
	[CurrentBalance] [money] NULL,
	[CreditLine] [nvarchar](100) NULL,
	[Remarks] [nvarchar](100) NULL,
	[Supplier] [bit] NULL,
	[Hidden] [bit] NULL,
	[CustomerType] [uniqueidentifier] NULL,
	[DiscountGroup] [uniqueidentifier] NULL,
	[PriceType] [uniqueidentifier] NULL,
	[Country] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_ERP_Customer] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP_CustomerDiscountGroup](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_ERP_CustomerDiscountGroup] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERP_CustomerType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_ERP_CustomerType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_Article](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [nvarchar](25) NULL,
	[CodeDealer] [nvarchar](25) NULL,
	[Designation] [nvarchar](100) NULL,
	[ButtonLabel] [nvarchar](35) NULL,
	[ButtonLabelHide] [bit] NULL,
	[ButtonImage] [nvarchar](255) NULL,
	[ButtonIcon] [nvarchar](255) NULL,
	[Price1] [money] NULL,
	[Price2] [money] NULL,
	[Price3] [money] NULL,
	[Price4] [money] NULL,
	[Price5] [money] NULL,
	[Price1Promotion] [money] NULL,
	[Price2Promotion] [money] NULL,
	[Price3Promotion] [money] NULL,
	[Price4Promotion] [money] NULL,
	[Price5Promotion] [money] NULL,
	[Price1UsePromotionPrice] [bit] NULL,
	[Price2UsePromotionPrice] [bit] NULL,
	[Price3UsePromotionPrice] [bit] NULL,
	[Price4UsePromotionPrice] [bit] NULL,
	[Price5UsePromotionPrice] [bit] NULL,
	[PriceWithVat] [bit] NULL,
	[Discount] [money] NULL,
	[DefaultQuantity] [money] NULL,
	[Accounting] [money] NULL,
	[Tare] [money] NULL,
	[Weight] [money] NULL,
	[BarCode] [nvarchar](100) NULL,
	[PVPVariable] [bit] NULL,
	[Favorite] [bit] NULL,
	[Token1] [nvarchar](255) NULL,
	[Token2] [nvarchar](255) NULL,
	[Family] [uniqueidentifier] NULL,
	[SubFamily] [uniqueidentifier] NULL,
	[Type] [uniqueidentifier] NULL,
	[Class] [uniqueidentifier] NULL,
	[UnitMeasure] [uniqueidentifier] NULL,
	[UnitSize] [uniqueidentifier] NULL,
	[CommissionGroup] [uniqueidentifier] NULL,
	[DiscountGroup] [uniqueidentifier] NULL,
	[VatOnTable] [uniqueidentifier] NULL,
	[VatDirectSelling] [uniqueidentifier] NULL,
	[VatExemptionReason] [uniqueidentifier] NULL,
	[Printer] [uniqueidentifier] NULL,
	[Template] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_Article] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ArticleClass](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Acronym] [nvarchar](1) NULL,
	[WorkInStock] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ArticleClass] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ArticleFamily](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[ButtonLabel] [nvarchar](35) NULL,
	[ButtonLabelHide] [bit] NULL,
	[ButtonImage] [nvarchar](255) NULL,
	[ButtonIcon] [nvarchar](255) NULL,
	[CommissionGroup] [uniqueidentifier] NULL,
	[DiscountGroup] [uniqueidentifier] NULL,
	[Printer] [uniqueidentifier] NULL,
	[Template] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ArticleFamily] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ArticleStock](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Date] [datetime] NULL,
	[Customer] [uniqueidentifier] NULL,
	[DocumentNumber] [nvarchar](50) NULL,
	[Article] [uniqueidentifier] NULL,
	[Quantity] [money] NULL,
	[DocumentMaster] [uniqueidentifier] NULL,
	[DocumentDetail] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ArticleStock] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ArticleSubFamily](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[ButtonLabel] [nvarchar](35) NULL,
	[ButtonLabelHide] [bit] NULL,
	[ButtonImage] [nvarchar](255) NULL,
	[ButtonIcon] [nvarchar](255) NULL,
	[Family] [uniqueidentifier] NULL,
	[CommissionGroup] [uniqueidentifier] NULL,
	[DiscountGroup] [uniqueidentifier] NULL,
	[VatOnTable] [uniqueidentifier] NULL,
	[VatDirectSelling] [uniqueidentifier] NULL,
	[Printer] [uniqueidentifier] NULL,
	[Template] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ArticleSubFamily] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ArticleType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[HavePrice] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ArticleType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ConfigurationPaymentCondition](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Acronym] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ConfigurationPaymentCondition] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ConfigurationPaymentMethod](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Token] [nvarchar](100) NULL,
	[Designation] [nvarchar](100) NULL,
	[ResourceString] [nvarchar](100) NULL,
	[ButtonIcon] [nvarchar](255) NULL,
	[Acronym] [nvarchar](100) NULL,
	[AllowPayback] [nvarchar](100) NULL,
	[Symbol] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ConfigurationPaymentMethod] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ConfigurationPriceType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[EnumValue] [int] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ConfigurationPriceType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ConfigurationVatExemptionReason](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](60) NULL,
	[Acronym] [nvarchar](3) NULL,
	[StandardApplicable] [nvarchar](512) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ConfigurationVatExemptionReason] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_ConfigurationVatRate](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Value] [money] NULL,
	[ReasonCode] [nvarchar](100) NULL,
	[TaxType] [nvarchar](3) NULL,
	[TaxCode] [nvarchar](10) NULL,
	[TaxCountryRegion] [nvarchar](5) NULL,
	[TaxExpirationDate] [datetime] NULL,
	[TaxDescription] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_ConfigurationVatRate] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceCommission](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Date] [datetime] NULL,
	[Commission] [money] NULL,
	[Total] [money] NULL,
	[CommissionGroup] [uniqueidentifier] NULL,
	[FinanceMaster] [uniqueidentifier] NULL,
	[FinanceDetail] [uniqueidentifier] NULL,
	[UserDetail] [uniqueidentifier] NULL,
	[Terminal] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceCommission] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceDetail](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [nvarchar](100) NULL,
	[Designation] [nvarchar](100) NULL,
	[Quantity] [money] NULL,
	[UnitMeasure] [nvarchar](35) NULL,
	[Price] [money] NULL,
	[Vat] [money] NULL,
	[VatExemptionReasonDesignation] [nvarchar](255) NULL,
	[Discount] [money] NULL,
	[TotalNet] [money] NULL,
	[TotalGross] [money] NULL,
	[TotalDiscount] [money] NULL,
	[TotalTax] [money] NULL,
	[TotalFinal] [money] NULL,
	[PriceType] [int] NULL,
	[PriceFinal] [money] NULL,
	[Token1] [nvarchar](255) NULL,
	[Token2] [nvarchar](255) NULL,
	[DocumentMaster] [uniqueidentifier] NULL,
	[Article] [uniqueidentifier] NULL,
	[VatRate] [uniqueidentifier] NULL,
	[VatExemptionReason] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceDetail] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[DocumentMaster] [uniqueidentifier] NULL,
	[OriginatingON] [nvarchar](60) NULL,
	[OrderDate] [datetime] NULL,
	[DocumentDetail] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceDetailOrderReference] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceDetailReference](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[DocumentMaster] [uniqueidentifier] NULL,
	[Reference] [nvarchar](60) NULL,
	[Reason] [nvarchar](50) NULL,
	[DocumentDetail] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceDetailReference] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceMaster](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Date] [datetime] NULL,
	[DocumentNumber] [nvarchar](50) NULL,
	[DocumentStatusStatus] [nvarchar](1) NULL,
	[DocumentStatusDate] [nvarchar](19) NULL,
	[DocumentStatusReason] [nvarchar](50) NULL,
	[DocumentStatusUser] [nvarchar](30) NULL,
	[SourceBilling] [nvarchar](1) NULL,
	[Hash] [nvarchar](172) NULL,
	[HashControl] [nvarchar](40) NULL,
	[DocumentDate] [nvarchar](19) NULL,
	[SelfBillingIndicator] [int] NULL,
	[CashVatSchemeIndicator] [int] NULL,
	[ThirdPartiesBillingIndicator] [int] NULL,
	[DocumentCreatorUser] [nvarchar](30) NULL,
	[EACCode] [nvarchar](100) NULL,
	[SystemEntryDate] [nvarchar](50) NULL,
	[TransactionID] [nvarchar](70) NULL,
	[ShipToDeliveryID] [nvarchar](255) NULL,
	[ShipToDeliveryDate] [datetime] NULL,
	[ShipToWarehouseID] [nvarchar](50) NULL,
	[ShipToLocationID] [nvarchar](30) NULL,
	[ShipToBuildingNumber] [nvarchar](10) NULL,
	[ShipToStreetName] [nvarchar](90) NULL,
	[ShipToAddressDetail] [nvarchar](100) NULL,
	[ShipToCity] [nvarchar](50) NULL,
	[ShipToPostalCode] [nvarchar](20) NULL,
	[ShipToRegion] [nvarchar](50) NULL,
	[ShipToCountry] [nvarchar](5) NULL,
	[ShipFromDeliveryID] [nvarchar](255) NULL,
	[ShipFromDeliveryDate] [datetime] NULL,
	[ShipFromWarehouseID] [nvarchar](50) NULL,
	[ShipFromLocationID] [nvarchar](30) NULL,
	[ShipFromBuildingNumber] [nvarchar](10) NULL,
	[ShipFromStreetName] [nvarchar](90) NULL,
	[ShipFromAddressDetail] [nvarchar](100) NULL,
	[ShipFromCity] [nvarchar](50) NULL,
	[ShipFromPostalCode] [nvarchar](20) NULL,
	[ShipFromRegion] [nvarchar](50) NULL,
	[ShipFromCountry] [nvarchar](5) NULL,
	[MovementStartTime] [datetime] NULL,
	[MovementEndTime] [datetime] NULL,
	[TotalNet] [money] NULL,
	[TotalGross] [money] NULL,
	[TotalDiscount] [money] NULL,
	[TotalTax] [money] NULL,
	[TotalFinal] [money] NULL,
	[TotalFinalRound] [money] NULL,
	[TotalDelivery] [money] NULL,
	[TotalChange] [money] NULL,
	[ExternalDocument] [nvarchar](50) NULL,
	[Discount] [money] NULL,
	[DiscountFinancial] [money] NULL,
	[ExchangeRate] [money] NULL,
	[EntityOid] [uniqueidentifier] NULL,
	[EntityInternalCode] [nvarchar](30) NULL,
	[EntityName] [nvarchar](100) NULL,
	[EntityAddress] [nvarchar](100) NULL,
	[EntityLocality] [nvarchar](100) NULL,
	[EntityZipCode] [nvarchar](10) NULL,
	[EntityCity] [nvarchar](100) NULL,
	[EntityCountry] [nvarchar](5) NULL,
	[EntityCountryOid] [uniqueidentifier] NULL,
	[EntityFiscalNumber] [nvarchar](100) NULL,
	[Payed] [bit] NULL,
	[PayedDate] [datetime] NULL,
	[Printed] [bit] NULL,
	[SourceOrderMain] [uniqueidentifier] NULL,
	[DocumentParent] [uniqueidentifier] NULL,
	[DocumentChild] [uniqueidentifier] NULL,
	[ATDocCodeID] [nvarchar](200) NULL,
	[ATValidAuditResult] [uniqueidentifier] NULL,
	[ATResendDocument] [bit] NULL,
	[DocumentType] [uniqueidentifier] NULL,
	[DocumentSerie] [uniqueidentifier] NULL,
	[PaymentMethod] [uniqueidentifier] NULL,
	[PaymentCondition] [uniqueidentifier] NULL,
	[Currency] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceMaster] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceMasterPayment](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[CreditAmount] [money] NULL,
	[DebitAmount] [money] NULL,
	[DocumentFinanceMaster] [uniqueidentifier] NULL,
	[DocumentFinancePayment] [uniqueidentifier] NULL,
	[DocumentFinanceMasterCreditNote] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceMasterPayment] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceMasterTotal](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Value] [money] NULL,
	[Total] [money] NULL,
	[TotalBase] [money] NULL,
	[TotalType] [int] NULL,
	[DocumentMaster] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceMasterTotal] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinancePayment](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[PaymentRefNo] [nvarchar](60) NULL,
	[TransactionID] [nvarchar](70) NULL,
	[TransactionDate] [nvarchar](19) NULL,
	[PaymentType] [nvarchar](2) NULL,
	[PaymentStatus] [nvarchar](1) NULL,
	[PaymentStatusDate] [nvarchar](50) NULL,
	[Reason] [nvarchar](50) NULL,
	[DocumentStatusSourceID] [nvarchar](30) NULL,
	[SourcePayment] [nvarchar](1) NULL,
	[PaymentMechanism] [nvarchar](2) NULL,
	[PaymentAmount] [money] NULL,
	[PaymentDate] [nvarchar](19) NULL,
	[SourceID] [nvarchar](30) NULL,
	[SystemEntryDate] [nvarchar](50) NULL,
	[TaxPayable] [money] NULL,
	[NetTotal] [money] NULL,
	[GrossTotal] [money] NULL,
	[SettlementAmount] [money] NULL,
	[CurrencyCode] [nvarchar](3) NULL,
	[CurrencyAmount] [money] NULL,
	[ExchangeRate] [money] NULL,
	[WithholdingTaxAmount] [money] NULL,
	[EntityOid] [uniqueidentifier] NULL,
	[EntityInternalCode] [nvarchar](30) NULL,
	[DocumentDate] [nvarchar](19) NULL,
	[ExtendedValue] [nvarchar](1024) NULL,
	[DocumentType] [uniqueidentifier] NULL,
	[DocumentSerie] [uniqueidentifier] NULL,
	[PaymentMethod] [uniqueidentifier] NULL,
	[Currency] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinancePayment] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceSeries](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[NextDocumentNumber] [int] NULL,
	[DocumentNumberRangeBegin] [int] NULL,
	[DocumentNumberRangeEnd] [int] NULL,
	[Acronym] [nvarchar](100) NULL,
	[DocumentType] [uniqueidentifier] NULL,
	[FiscalYear] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceSeries] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Acronym] [nvarchar](4) NULL,
	[AcronymLastSerie] [int] NULL,
	[ResourceString] [nvarchar](100) NULL,
	[ResourceStringReport] [nvarchar](100) NULL,
	[Payed] [bit] NULL,
	[Credit] [bit] NULL,
	[PrintCopies] [int] NULL,
	[PrintRequestMotive] [bit] NULL,
	[PrintRequestConfirmation] [bit] NULL,
	[PrintOpenDrawer] [bit] NULL,
	[WayBill] [bit] NULL,
	[WsAtDocument] [bit] NULL,
	[SaftAuditFile] [bit] NULL,
	[SaftDocumentType] [int] NULL,
	[StockMode] [int] NULL,
	[Printer] [uniqueidentifier] NULL,
	[Template] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceYears](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[FiscalYear] [int] NULL,
	[Acronym] [nvarchar](100) NULL,
	[SeriesForEachTerminal] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceYears] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[FiscalYear] [uniqueidentifier] NULL,
	[DocumentType] [uniqueidentifier] NULL,
	[Serie] [uniqueidentifier] NULL,
	[Terminal] [uniqueidentifier] NULL,
	[Printer] [uniqueidentifier] NULL,
	[Template] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentFinanceYearSerieTerminal] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentOrderDetail](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [nvarchar](100) NULL,
	[Designation] [nvarchar](100) NULL,
	[Quantity] [money] NULL,
	[UnitMeasure] [nvarchar](35) NULL,
	[Price] [money] NULL,
	[Discount] [money] NULL,
	[Vat] [money] NULL,
	[VatExemptionReason] [uniqueidentifier] NULL,
	[TotalGross] [money] NULL,
	[TotalDiscount] [money] NULL,
	[TotalTax] [money] NULL,
	[TotalFinal] [money] NULL,
	[Token1] [nvarchar](255) NULL,
	[Token2] [nvarchar](255) NULL,
	[OrderTicket] [uniqueidentifier] NULL,
	[Article] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentOrderMain](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[DateStart] [datetime] NULL,
	[OrderStatus] [int] NULL,
	[PlaceTable] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentOrderMain] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIN_DocumentOrderTicket](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[TicketId] [int] NULL,
	[DateStart] [datetime] NULL,
	[PriceType] [int] NULL,
	[Discount] [money] NULL,
	[OrderMain] [uniqueidentifier] NULL,
	[PlaceTable] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_FIN_DocumentOrderTicket] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationCashRegister](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Printer] [nvarchar](100) NULL,
	[Drawer] [nvarchar](100) NULL,
	[AutomaticDrawer] [nvarchar](100) NULL,
	[ActiveSales] [nvarchar](100) NULL,
	[AllowChargeBacks] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationCashRegister] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationDevice](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Type] [nvarchar](100) NULL,
	[Properties] [nvarchar](max) NULL,
	[PlaceTerminal] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationDevice] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationKeyboard](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Language] [nvarchar](100) NULL,
	[VirtualKeyboard] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationKeyboard] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationMaintenance](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Date] [nvarchar](100) NULL,
	[Time] [nvarchar](100) NULL,
	[PasswordAccess] [nvarchar](100) NULL,
	[Remarks] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationMaintenance] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationPlace](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[ButtonImage] [nvarchar](255) NULL,
	[TypeSubtotal] [nvarchar](100) NULL,
	[AccountType] [nvarchar](100) NULL,
	[OrderPrintMode] [int] NULL,
	[PriceType] [uniqueidentifier] NULL,
	[MovementType] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationPlace] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationPlaceMovementType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[VatDirectSelling] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationPlaceMovementType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationPlaceTable](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[ButtonImage] [nvarchar](255) NULL,
	[Discount] [money] NULL,
	[TableStatus] [int] NULL,
	[TotalOpen] [money] NULL,
	[DateTableOpen] [datetime] NULL,
	[DateTableClosed] [datetime] NULL,
	[Place] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationPlaceTable] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ConfigurationPlaceTerminal](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[HardwareId] [nvarchar](30) NULL,
	[Place] [uniqueidentifier] NULL,
	[Printer] [uniqueidentifier] NULL,
	[TemplateTicket] [uniqueidentifier] NULL,
	[TemplateTablesConsult] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_ConfigurationPlaceTerminal] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_UserCommissionGroup](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Commission] [money] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_UserCommissionGroup] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_WorkSessionMovement](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Date] [datetime] NULL,
	[MovementAmount] [money] NULL,
	[Description] [nvarchar](255) NULL,
	[UserDetail] [uniqueidentifier] NULL,
	[Terminal] [uniqueidentifier] NULL,
	[DocumentFinanceMaster] [uniqueidentifier] NULL,
	[DocumentFinancePayment] [uniqueidentifier] NULL,
	[DocumentFinanceType] [uniqueidentifier] NULL,
	[PaymentMethod] [uniqueidentifier] NULL,
	[WorkSessionPeriod] [uniqueidentifier] NULL,
	[WorkSessionMovementType] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_WorkSessionMovement] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_WorkSessionMovementType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Token] [nvarchar](100) NULL,
	[Designation] [nvarchar](100) NULL,
	[ResourceString] [nvarchar](100) NULL,
	[ButtonIcon] [nvarchar](255) NULL,
	[CashDrawerMovement] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_WorkSessionMovementType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_WorkSessionPeriod](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[PeriodType] [int] NULL,
	[SessionStatus] [int] NULL,
	[Designation] [nvarchar](100) NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
	[Terminal] [uniqueidentifier] NULL,
	[Parent] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_WorkSessionPeriod] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_WorkSessionPeriodTotal](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[PaymentMethod] [uniqueidentifier] NULL,
	[Total] [money] NULL,
	[Period] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_POS_WorkSessionPeriodTotal] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RPT_Report](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[ResourceString] [nvarchar](100) NULL,
	[FileName] [nvarchar](100) NULL,
	[ParameterFields] [nvarchar](100) NULL,
	[AuthorType] [int] NULL,
	[ReportType] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_RPT_Report] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RPT_ReportType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[ResourceString] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_RPT_ReportType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ConfigurationPrinters](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[NetworkName] [nvarchar](100) NULL,
	[ShowInDialog] [bit] NULL,
	[PrinterType] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_ConfigurationPrinters] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ConfigurationPrintersTemplates](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[FileTemplate] [nvarchar](100) NULL,
	[FinancialTemplate] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_ConfigurationPrintersTemplates] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_ConfigurationPrintersType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Token] [nvarchar](100) NULL,
	[ThermalPrinter] [bit] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_ConfigurationPrintersType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SystemAudit](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Date] [datetime] NULL,
	[Description] [nvarchar](255) NULL,
	[UserDetail] [uniqueidentifier] NULL,
	[Terminal] [uniqueidentifier] NULL,
	[AuditType] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_SystemAudit] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SystemAuditAT](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Date] [datetime] NULL,
	[Type] [int] NULL,
	[PostData] [nvarchar](max) NULL,
	[ReturnCode] [int] NULL,
	[ReturnMessage] [nvarchar](100) NULL,
	[ReturnRaw] [nvarchar](max) NULL,
	[DocumentNumber] [nvarchar](100) NULL,
	[ATDocCodeID] [nvarchar](100) NULL,
	[DocumentMaster] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_SystemAuditAT] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SystemAuditType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Token] [nvarchar](100) NULL,
	[Designation] [nvarchar](100) NULL,
	[ResourceString] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_SystemAuditType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SystemBackup](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[DataBaseType] [int] NULL,
	[Version] [numeric](10, 0) NULL,
	[FileName] [nvarchar](255) NULL,
	[FileNamePacked] [nvarchar](255) NULL,
	[FilePath] [nvarchar](100) NULL,
	[FileHash] [nvarchar](255) NULL,
	[User] [uniqueidentifier] NULL,
	[Terminal] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_SystemBackup] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SystemNotification](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Message] [nvarchar](max) NULL,
	[Readed] [bit] NULL,
	[DateRead] [datetime] NULL,
	[UserTarget] [uniqueidentifier] NULL,
	[TerminalTarget] [uniqueidentifier] NULL,
	[UserLastRead] [uniqueidentifier] NULL,
	[TerminalLastRead] [uniqueidentifier] NULL,
	[NotificationType] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_SystemNotification] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SystemNotificationType](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[Message] [nvarchar](255) NULL,
	[WarnDaysBefore] [int] NULL,
	[UserTarget] [uniqueidentifier] NULL,
	[TerminalTarget] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_SystemNotificationType] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_SystemPrint](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Date] [datetime] NULL,
	[Designation] [nvarchar](100) NULL,
	[CopyNames] [nvarchar](50) NULL,
	[PrintCopies] [int] NULL,
	[PrintMotive] [nvarchar](255) NULL,
	[SecondPrint] [bit] NULL,
	[UserDetail] [uniqueidentifier] NULL,
	[Terminal] [uniqueidentifier] NULL,
	[DocumentMaster] [uniqueidentifier] NULL,
	[DocumentPayment] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_SystemPrint] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_UserDetail](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[CodeInternal] [nvarchar](30) NULL,
	[Name] [nvarchar](100) NULL,
	[Residence] [nvarchar](100) NULL,
	[Locality] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[DateOfContract] [nvarchar](100) NULL,
	[Phone] [nvarchar](100) NULL,
	[MobilePhone] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[FiscalNumber] [nvarchar](100) NULL,
	[Language] [nvarchar](100) NULL,
	[AssignedSeating] [nvarchar](100) NULL,
	[AccessPin] [nvarchar](255) NULL,
	[AccessCardNumber] [nvarchar](100) NULL,
	[Login] [nvarchar](100) NULL,
	[Password] [nvarchar](255) NULL,
	[PasswordReset] [bit] NULL,
	[PasswordResetDate] [datetime] NULL,
	[BaseConsumption] [nvarchar](100) NULL,
	[BaseOffers] [nvarchar](100) NULL,
	[PVPOffers] [nvarchar](100) NULL,
	[Remarks] [nvarchar](100) NULL,
	[ButtonImage] [nvarchar](255) NULL,
	[Profile] [uniqueidentifier] NULL,
	[CommissionGroup] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_UserDetail] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_UserPermissionGroup](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_UserPermissionGroup] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_UserPermissionItem](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Token] [nvarchar](100) NULL,
	[Designation] [nvarchar](200) NULL,
	[PermissionGroup] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_UserPermissionItem] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_UserPermissionProfile](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Granted] [bit] NULL,
	[UserProfile] [uniqueidentifier] NULL,
	[PermissionItem] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_UserPermissionProfile] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_UserProfile](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Disabled] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedWhere] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedWhere] [uniqueidentifier] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[DeletedWhere] [uniqueidentifier] NULL,
	[Ord] [numeric](10, 0) NULL,
	[Code] [numeric](10, 0) NULL,
	[Designation] [nvarchar](100) NULL,
	[AccessPassword] [nvarchar](50) NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_SYS_UserProfile] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [iCode_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCode2_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode2_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[Code2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCode3_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode3_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[Code3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_CFG_ConfigurationCountry]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_CFG_ConfigurationCountry] ON [dbo].[CFG_ConfigurationCountry]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_CFG_ConfigurationCurrency]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_CFG_ConfigurationCurrency] ON [dbo].[CFG_ConfigurationCurrency]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_CFG_ConfigurationHolidays]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_CFG_ConfigurationHolidays] ON [dbo].[CFG_ConfigurationHolidays]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iResourceString_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iResourceString_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[ResourceString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iToken_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iToken_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_CFG_ConfigurationPreferenceParameter]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_CFG_ConfigurationPreferenceParameter] ON [dbo].[CFG_ConfigurationPreferenceParameter]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iAcronym_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iAcronym_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[Acronym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_CFG_ConfigurationUnitMeasure]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_CFG_ConfigurationUnitMeasure] ON [dbo].[CFG_ConfigurationUnitMeasure]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_CFG_ConfigurationUnitSize]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_CFG_ConfigurationUnitSize] ON [dbo].[CFG_ConfigurationUnitSize]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCardNumber_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCardNumber_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCodeInternal_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCodeInternal_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[CodeInternal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCountry_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCountry_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCustomerType_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCustomerType_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[CustomerType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDiscountGroup_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDiscountGroup_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[DiscountGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPriceType_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPriceType_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[PriceType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_ERP_Customer]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_ERP_Customer] ON [dbo].[ERP_Customer]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_ERP_CustomerDiscountGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_ERP_CustomerDiscountGroup] ON [dbo].[ERP_CustomerDiscountGroup]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_ERP_CustomerType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_ERP_CustomerType] ON [dbo].[ERP_CustomerType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iBarCode_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iBarCode_FIN_Article] ON [dbo].[FIN_Article]
(
	[BarCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iClass_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iClass_FIN_Article] ON [dbo].[FIN_Article]
(
	[Class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCode_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_Article] ON [dbo].[FIN_Article]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCommissionGroup_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCommissionGroup_FIN_Article] ON [dbo].[FIN_Article]
(
	[CommissionGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_Article] ON [dbo].[FIN_Article]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_Article] ON [dbo].[FIN_Article]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_Article] ON [dbo].[FIN_Article]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_Article] ON [dbo].[FIN_Article]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_Article] ON [dbo].[FIN_Article]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDiscountGroup_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDiscountGroup_FIN_Article] ON [dbo].[FIN_Article]
(
	[DiscountGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFamily_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iFamily_FIN_Article] ON [dbo].[FIN_Article]
(
	[Family] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_Article] ON [dbo].[FIN_Article]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrinter_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPrinter_FIN_Article] ON [dbo].[FIN_Article]
(
	[Printer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSubFamily_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iSubFamily_FIN_Article] ON [dbo].[FIN_Article]
(
	[SubFamily] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTemplate_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTemplate_FIN_Article] ON [dbo].[FIN_Article]
(
	[Template] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iType_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iType_FIN_Article] ON [dbo].[FIN_Article]
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUnitMeasure_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUnitMeasure_FIN_Article] ON [dbo].[FIN_Article]
(
	[UnitMeasure] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUnitSize_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUnitSize_FIN_Article] ON [dbo].[FIN_Article]
(
	[UnitSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_Article] ON [dbo].[FIN_Article]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_Article] ON [dbo].[FIN_Article]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iVatDirectSelling_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iVatDirectSelling_FIN_Article] ON [dbo].[FIN_Article]
(
	[VatDirectSelling] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iVatExemptionReason_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iVatExemptionReason_FIN_Article] ON [dbo].[FIN_Article]
(
	[VatExemptionReason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iVatOnTable_FIN_Article]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iVatOnTable_FIN_Article] ON [dbo].[FIN_Article]
(
	[VatOnTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iAcronym_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iAcronym_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[Acronym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ArticleClass]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ArticleClass] ON [dbo].[FIN_ArticleClass]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCommissionGroup_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCommissionGroup_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[CommissionGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDiscountGroup_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDiscountGroup_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[DiscountGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrinter_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPrinter_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[Printer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTemplate_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTemplate_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[Template] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ArticleFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ArticleFamily] ON [dbo].[FIN_ArticleFamily]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iArticle_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iArticle_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCustomer_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCustomer_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentDetail_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentDetail_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[DocumentDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentMaster_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentMaster_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[DocumentMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ArticleStock]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ArticleStock] ON [dbo].[FIN_ArticleStock]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCommissionGroup_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCommissionGroup_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[CommissionGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDiscountGroup_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDiscountGroup_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[DiscountGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFamily_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iFamily_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[Family] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrinter_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPrinter_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[Printer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTemplate_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTemplate_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[Template] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iVatDirectSelling_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iVatDirectSelling_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[VatDirectSelling] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iVatOnTable_FIN_ArticleSubFamily]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iVatOnTable_FIN_ArticleSubFamily] ON [dbo].[FIN_ArticleSubFamily]
(
	[VatOnTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ArticleType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ArticleType] ON [dbo].[FIN_ArticleType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ConfigurationPaymentCondition]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ConfigurationPaymentCondition] ON [dbo].[FIN_ConfigurationPaymentCondition]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iResourceString_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iResourceString_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[ResourceString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iToken_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iToken_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ConfigurationPaymentMethod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ConfigurationPaymentMethod] ON [dbo].[FIN_ConfigurationPaymentMethod]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iEnumValue_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iEnumValue_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[EnumValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ConfigurationPriceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ConfigurationPriceType] ON [dbo].[FIN_ConfigurationPriceType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ConfigurationVatExemptionReason]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ConfigurationVatExemptionReason] ON [dbo].[FIN_ConfigurationVatExemptionReason]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_ConfigurationVatRate]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_ConfigurationVatRate] ON [dbo].[FIN_ConfigurationVatRate]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCommissionGroup_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCommissionGroup_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[CommissionGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFinanceDetail_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iFinanceDetail_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[FinanceDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFinanceMaster_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iFinanceMaster_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[FinanceMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminal_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminal_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserDetail_FIN_DocumentFinanceCommission]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserDetail_FIN_DocumentFinanceCommission] ON [dbo].[FIN_DocumentFinanceCommission]
(
	[UserDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iArticle_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iArticle_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentMaster_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentMaster_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[DocumentMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iVatExemptionReason_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iVatExemptionReason_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[VatExemptionReason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iVatRate_FIN_DocumentFinanceDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iVatRate_FIN_DocumentFinanceDetail] ON [dbo].[FIN_DocumentFinanceDetail]
(
	[VatRate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentDetail_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentDetail_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[DocumentDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentMaster_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentMaster_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[DocumentMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceDetailOrderReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceDetailOrderReference] ON [dbo].[FIN_DocumentFinanceDetailOrderReference]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentDetail_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentDetail_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[DocumentDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentMaster_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentMaster_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[DocumentMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceDetailReference]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceDetailReference] ON [dbo].[FIN_DocumentFinanceDetailReference]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iATValidAuditResult_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iATValidAuditResult_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[ATValidAuditResult] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCurrency_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCurrency_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentChild_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentChild_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[DocumentChild] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDocumentNumber_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDocumentNumber_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[DocumentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentParent_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentParent_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[DocumentParent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentSerie_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentSerie_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[DocumentSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentType_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentType_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[DocumentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPaymentCondition_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPaymentCondition_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[PaymentCondition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPaymentMethod_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPaymentMethod_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[PaymentMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSourceOrderMain_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iSourceOrderMain_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[SourceOrderMain] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceMaster]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceMaster] ON [dbo].[FIN_DocumentFinanceMaster]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentFinanceMaster_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentFinanceMaster_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[DocumentFinanceMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentFinanceMasterCreditNote_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentFinanceMasterCreditNote_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[DocumentFinanceMasterCreditNote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentFinancePayment_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentFinancePayment_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[DocumentFinancePayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceMasterPayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceMasterPayment] ON [dbo].[FIN_DocumentFinanceMasterPayment]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentMaster_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentMaster_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[DocumentMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceMasterTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceMasterTotal] ON [dbo].[FIN_DocumentFinanceMasterTotal]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCurrency_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCurrency_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentSerie_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentSerie_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[DocumentSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentType_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentType_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[DocumentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPaymentMethod_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPaymentMethod_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[PaymentMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinancePayment]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinancePayment] ON [dbo].[FIN_DocumentFinancePayment]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iAcronym_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iAcronym_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[Acronym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentType_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentType_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[DocumentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFiscalYear_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iFiscalYear_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceSeries]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceSeries] ON [dbo].[FIN_DocumentFinanceSeries]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrinter_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPrinter_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[Printer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTemplate_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTemplate_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[Template] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceType] ON [dbo].[FIN_DocumentFinanceType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iAcronym_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iAcronym_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[Acronym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFiscalYear_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iFiscalYear_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceYears]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceYears] ON [dbo].[FIN_DocumentFinanceYears]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentType_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentType_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[DocumentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iFiscalYear_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iFiscalYear_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[FiscalYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrinter_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPrinter_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[Printer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iSerie_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iSerie_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[Serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTemplate_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTemplate_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[Template] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminal_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminal_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentFinanceYearSerieTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentFinanceYearSerieTerminal] ON [dbo].[FIN_DocumentFinanceYearSerieTerminal]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iArticle_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iArticle_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOrderTicket_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iOrderTicket_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[OrderTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentOrderDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentOrderDetail] ON [dbo].[FIN_DocumentOrderDetail]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlaceTable_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPlaceTable_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[PlaceTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentOrderMain]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentOrderMain] ON [dbo].[FIN_DocumentOrderMain]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOrderMain_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iOrderMain_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[OrderMain] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlaceTable_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPlaceTable_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[PlaceTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_FIN_DocumentOrderTicket]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_FIN_DocumentOrderTicket] ON [dbo].[FIN_DocumentOrderTicket]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationCashRegister]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationCashRegister] ON [dbo].[POS_ConfigurationCashRegister]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlaceTerminal_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPlaceTerminal_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[PlaceTerminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationDevice]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationDevice] ON [dbo].[POS_ConfigurationDevice]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationKeyboard]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationKeyboard] ON [dbo].[POS_ConfigurationKeyboard]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationMaintenance]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationMaintenance] ON [dbo].[POS_ConfigurationMaintenance]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iMovementType_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iMovementType_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[MovementType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPriceType_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPriceType_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[PriceType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationPlace]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationPlace] ON [dbo].[POS_ConfigurationPlace]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationPlaceMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationPlaceMovementType] ON [dbo].[POS_ConfigurationPlaceMovementType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlace_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPlace_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[Place] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationPlaceTable]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationPlaceTable] ON [dbo].[POS_ConfigurationPlaceTable]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iHardwareId_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iHardwareId_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[HardwareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPlace_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPlace_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[Place] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrinter_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPrinter_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[Printer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTemplateTablesConsult_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTemplateTablesConsult_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[TemplateTablesConsult] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTemplateTicket_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTemplateTicket_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[TemplateTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_ConfigurationPlaceTerminal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_ConfigurationPlaceTerminal] ON [dbo].[POS_ConfigurationPlaceTerminal]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_UserCommissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_UserCommissionGroup] ON [dbo].[POS_UserCommissionGroup]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentFinanceMaster_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentFinanceMaster_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[DocumentFinanceMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentFinancePayment_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentFinancePayment_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[DocumentFinancePayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentFinanceType_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentFinanceType_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[DocumentFinanceType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPaymentMethod_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPaymentMethod_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[PaymentMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminal_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminal_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserDetail_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserDetail_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[UserDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iWorkSessionMovementType_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iWorkSessionMovementType_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[WorkSessionMovementType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iWorkSessionPeriod_POS_WorkSessionMovement]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iWorkSessionPeriod_POS_WorkSessionMovement] ON [dbo].[POS_WorkSessionMovement]
(
	[WorkSessionPeriod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iResourceString_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iResourceString_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[ResourceString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iToken_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iToken_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_WorkSessionMovementType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_WorkSessionMovementType] ON [dbo].[POS_WorkSessionMovementType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iParent_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iParent_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[Parent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminal_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminal_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_WorkSessionPeriod]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_WorkSessionPeriod] ON [dbo].[POS_WorkSessionPeriod]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPaymentMethod_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPaymentMethod_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[PaymentMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPeriod_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPeriod_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[Period] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_POS_WorkSessionPeriodTotal]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_POS_WorkSessionPeriodTotal] ON [dbo].[POS_WorkSessionPeriodTotal]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_RPT_Report] ON [dbo].[RPT_Report]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_RPT_Report] ON [dbo].[RPT_Report]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_RPT_Report] ON [dbo].[RPT_Report]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_RPT_Report] ON [dbo].[RPT_Report]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_RPT_Report] ON [dbo].[RPT_Report]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_RPT_Report] ON [dbo].[RPT_Report]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_RPT_Report] ON [dbo].[RPT_Report]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iReportType_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iReportType_RPT_Report] ON [dbo].[RPT_Report]
(
	[ReportType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iResourceString_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iResourceString_RPT_Report] ON [dbo].[RPT_Report]
(
	[ResourceString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_RPT_Report] ON [dbo].[RPT_Report]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_RPT_Report]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_RPT_Report] ON [dbo].[RPT_Report]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iResourceString_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iResourceString_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[ResourceString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_RPT_ReportType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_RPT_ReportType] ON [dbo].[RPT_ReportType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPrinterType_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPrinterType_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[PrinterType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_ConfigurationPrinters]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_ConfigurationPrinters] ON [dbo].[SYS_ConfigurationPrinters]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_ConfigurationPrintersTemplates]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_ConfigurationPrintersTemplates] ON [dbo].[SYS_ConfigurationPrintersTemplates]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iToken_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iToken_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_ConfigurationPrintersType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_ConfigurationPrintersType] ON [dbo].[SYS_ConfigurationPrintersType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iAuditType_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iAuditType_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[AuditType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminal_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminal_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserDetail_SYS_SystemAudit]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserDetail_SYS_SystemAudit] ON [dbo].[SYS_SystemAudit]
(
	[UserDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentMaster_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentMaster_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[DocumentMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_SystemAuditAT]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_SystemAuditAT] ON [dbo].[SYS_SystemAuditAT]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iResourceString_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iResourceString_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[ResourceString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iToken_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iToken_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_SystemAuditType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_SystemAuditType] ON [dbo].[SYS_SystemAuditType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iFileName_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iFileName_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[FileName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iFileNamePacked_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iFileNamePacked_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[FileNamePacked] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminal_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminal_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUser_SYS_SystemBackup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUser_SYS_SystemBackup] ON [dbo].[SYS_SystemBackup]
(
	[User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iNotificationType_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iNotificationType_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[NotificationType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminalLastRead_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminalLastRead_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[TerminalLastRead] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminalTarget_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminalTarget_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[TerminalTarget] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserLastRead_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserLastRead_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[UserLastRead] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserTarget_SYS_SystemNotification]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserTarget_SYS_SystemNotification] ON [dbo].[SYS_SystemNotification]
(
	[UserTarget] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iMessage_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iMessage_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[Message] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminalTarget_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminalTarget_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[TerminalTarget] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserTarget_SYS_SystemNotificationType]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserTarget_SYS_SystemNotificationType] ON [dbo].[SYS_SystemNotificationType]
(
	[UserTarget] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentMaster_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentMaster_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[DocumentMaster] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDocumentPayment_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDocumentPayment_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[DocumentPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iTerminal_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iTerminal_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserDetail_SYS_SystemPrint]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserDetail_SYS_SystemPrint] ON [dbo].[SYS_SystemPrint]
(
	[UserDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iAccessPin_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iAccessPin_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[AccessPin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iCodeInternal_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCodeInternal_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[CodeInternal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCommissionGroup_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCommissionGroup_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[CommissionGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iProfile_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iProfile_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[Profile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_UserDetail]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_UserDetail] ON [dbo].[SYS_UserDetail]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_UserPermissionGroup]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_UserPermissionGroup] ON [dbo].[SYS_UserPermissionGroup]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPermissionGroup_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPermissionGroup_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[PermissionGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iToken_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iToken_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_UserPermissionItem]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_UserPermissionItem] ON [dbo].[SYS_UserPermissionItem]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iPermissionItem_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iPermissionItem_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[PermissionItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUserProfile_SYS_UserPermissionProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUserProfile_SYS_UserPermissionProfile] ON [dbo].[SYS_UserPermissionProfile]
(
	[UserProfile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCode_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iCode_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedBy_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedBy_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iCreatedWhere_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iCreatedWhere_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[CreatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedBy_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedBy_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[DeletedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iDeletedWhere_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iDeletedWhere_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[DeletedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [iDesignation_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iDesignation_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[Designation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iOid_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [iOid_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedBy_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedBy_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[UpdatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [iUpdatedWhere_SYS_UserProfile]    Script Date: 30/09/2016 12:50:31 ******/
CREATE NONCLUSTERED INDEX [iUpdatedWhere_SYS_UserProfile] ON [dbo].[SYS_UserProfile]
(
	[UpdatedWhere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCountry_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry] CHECK CONSTRAINT [FK_CFG_ConfigurationCountry_CreatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCountry_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry] CHECK CONSTRAINT [FK_CFG_ConfigurationCountry_CreatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCountry_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry] CHECK CONSTRAINT [FK_CFG_ConfigurationCountry_DeletedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCountry_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry] CHECK CONSTRAINT [FK_CFG_ConfigurationCountry_DeletedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCountry_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry] CHECK CONSTRAINT [FK_CFG_ConfigurationCountry_UpdatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCountry_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCountry] CHECK CONSTRAINT [FK_CFG_ConfigurationCountry_UpdatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCurrency_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency] CHECK CONSTRAINT [FK_CFG_ConfigurationCurrency_CreatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCurrency_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency] CHECK CONSTRAINT [FK_CFG_ConfigurationCurrency_CreatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCurrency_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency] CHECK CONSTRAINT [FK_CFG_ConfigurationCurrency_DeletedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCurrency_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency] CHECK CONSTRAINT [FK_CFG_ConfigurationCurrency_DeletedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCurrency_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency] CHECK CONSTRAINT [FK_CFG_ConfigurationCurrency_UpdatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationCurrency_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationCurrency] CHECK CONSTRAINT [FK_CFG_ConfigurationCurrency_UpdatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationHolidays_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays] CHECK CONSTRAINT [FK_CFG_ConfigurationHolidays_CreatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationHolidays_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays] CHECK CONSTRAINT [FK_CFG_ConfigurationHolidays_CreatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationHolidays_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays] CHECK CONSTRAINT [FK_CFG_ConfigurationHolidays_DeletedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationHolidays_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays] CHECK CONSTRAINT [FK_CFG_ConfigurationHolidays_DeletedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationHolidays_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays] CHECK CONSTRAINT [FK_CFG_ConfigurationHolidays_UpdatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationHolidays_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationHolidays] CHECK CONSTRAINT [FK_CFG_ConfigurationHolidays_UpdatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter] CHECK CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_CreatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter] CHECK CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_CreatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter] CHECK CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_DeletedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter] CHECK CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_DeletedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter] CHECK CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_UpdatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationPreferenceParameter] CHECK CONSTRAINT [FK_CFG_ConfigurationPreferenceParameter_UpdatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_CreatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_CreatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_DeletedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_DeletedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_UpdatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitMeasure] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitMeasure_UpdatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitSize_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitSize_CreatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitSize_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitSize_CreatedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitSize_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitSize_DeletedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitSize_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitSize_DeletedWhere]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitSize_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitSize_UpdatedBy]
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize]  WITH NOCHECK ADD  CONSTRAINT [FK_CFG_ConfigurationUnitSize_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[CFG_ConfigurationUnitSize] CHECK CONSTRAINT [FK_CFG_ConfigurationUnitSize_UpdatedWhere]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_Country] FOREIGN KEY([Country])
REFERENCES [dbo].[CFG_ConfigurationCountry] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_Country]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_CreatedBy]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_CreatedWhere]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_CustomerType] FOREIGN KEY([CustomerType])
REFERENCES [dbo].[ERP_CustomerType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_CustomerType]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_DeletedBy]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_DeletedWhere]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_DiscountGroup] FOREIGN KEY([DiscountGroup])
REFERENCES [dbo].[ERP_CustomerDiscountGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_DiscountGroup]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_PriceType] FOREIGN KEY([PriceType])
REFERENCES [dbo].[FIN_ConfigurationPriceType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_PriceType]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_UpdatedBy]
GO
ALTER TABLE [dbo].[ERP_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_Customer_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_Customer] CHECK CONSTRAINT [FK_ERP_Customer_UpdatedWhere]
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerDiscountGroup_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup] CHECK CONSTRAINT [FK_ERP_CustomerDiscountGroup_CreatedBy]
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerDiscountGroup_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup] CHECK CONSTRAINT [FK_ERP_CustomerDiscountGroup_CreatedWhere]
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerDiscountGroup_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup] CHECK CONSTRAINT [FK_ERP_CustomerDiscountGroup_DeletedBy]
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerDiscountGroup_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup] CHECK CONSTRAINT [FK_ERP_CustomerDiscountGroup_DeletedWhere]
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerDiscountGroup_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup] CHECK CONSTRAINT [FK_ERP_CustomerDiscountGroup_UpdatedBy]
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerDiscountGroup_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerDiscountGroup] CHECK CONSTRAINT [FK_ERP_CustomerDiscountGroup_UpdatedWhere]
GO
ALTER TABLE [dbo].[ERP_CustomerType]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerType] CHECK CONSTRAINT [FK_ERP_CustomerType_CreatedBy]
GO
ALTER TABLE [dbo].[ERP_CustomerType]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerType] CHECK CONSTRAINT [FK_ERP_CustomerType_CreatedWhere]
GO
ALTER TABLE [dbo].[ERP_CustomerType]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerType] CHECK CONSTRAINT [FK_ERP_CustomerType_DeletedBy]
GO
ALTER TABLE [dbo].[ERP_CustomerType]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerType] CHECK CONSTRAINT [FK_ERP_CustomerType_DeletedWhere]
GO
ALTER TABLE [dbo].[ERP_CustomerType]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerType] CHECK CONSTRAINT [FK_ERP_CustomerType_UpdatedBy]
GO
ALTER TABLE [dbo].[ERP_CustomerType]  WITH NOCHECK ADD  CONSTRAINT [FK_ERP_CustomerType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ERP_CustomerType] CHECK CONSTRAINT [FK_ERP_CustomerType_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_Class] FOREIGN KEY([Class])
REFERENCES [dbo].[FIN_ArticleClass] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_Class]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_CommissionGroup] FOREIGN KEY([CommissionGroup])
REFERENCES [dbo].[POS_UserCommissionGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_CommissionGroup]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_DiscountGroup] FOREIGN KEY([DiscountGroup])
REFERENCES [dbo].[ERP_CustomerDiscountGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_DiscountGroup]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_Family] FOREIGN KEY([Family])
REFERENCES [dbo].[FIN_ArticleFamily] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_Family]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_Printer] FOREIGN KEY([Printer])
REFERENCES [dbo].[SYS_ConfigurationPrinters] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_Printer]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_SubFamily] FOREIGN KEY([SubFamily])
REFERENCES [dbo].[FIN_ArticleSubFamily] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_SubFamily]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_Template] FOREIGN KEY([Template])
REFERENCES [dbo].[SYS_ConfigurationPrintersTemplates] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_Template]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_Type] FOREIGN KEY([Type])
REFERENCES [dbo].[FIN_ArticleType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_Type]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_UnitMeasure] FOREIGN KEY([UnitMeasure])
REFERENCES [dbo].[CFG_ConfigurationUnitMeasure] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_UnitMeasure]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_UnitSize] FOREIGN KEY([UnitSize])
REFERENCES [dbo].[CFG_ConfigurationUnitSize] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_UnitSize]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_VatDirectSelling] FOREIGN KEY([VatDirectSelling])
REFERENCES [dbo].[FIN_ConfigurationVatRate] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_VatDirectSelling]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_VatExemptionReason] FOREIGN KEY([VatExemptionReason])
REFERENCES [dbo].[FIN_ConfigurationVatExemptionReason] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_VatExemptionReason]
GO
ALTER TABLE [dbo].[FIN_Article]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_Article_VatOnTable] FOREIGN KEY([VatOnTable])
REFERENCES [dbo].[FIN_ConfigurationVatRate] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_Article] CHECK CONSTRAINT [FK_FIN_Article_VatOnTable]
GO
ALTER TABLE [dbo].[FIN_ArticleClass]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleClass_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleClass] CHECK CONSTRAINT [FK_FIN_ArticleClass_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleClass]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleClass_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleClass] CHECK CONSTRAINT [FK_FIN_ArticleClass_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleClass]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleClass_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleClass] CHECK CONSTRAINT [FK_FIN_ArticleClass_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleClass]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleClass_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleClass] CHECK CONSTRAINT [FK_FIN_ArticleClass_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleClass]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleClass_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleClass] CHECK CONSTRAINT [FK_FIN_ArticleClass_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleClass]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleClass_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleClass] CHECK CONSTRAINT [FK_FIN_ArticleClass_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_CommissionGroup] FOREIGN KEY([CommissionGroup])
REFERENCES [dbo].[POS_UserCommissionGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_CommissionGroup]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_DiscountGroup] FOREIGN KEY([DiscountGroup])
REFERENCES [dbo].[ERP_CustomerDiscountGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_DiscountGroup]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_Printer] FOREIGN KEY([Printer])
REFERENCES [dbo].[SYS_ConfigurationPrinters] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_Printer]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_Template] FOREIGN KEY([Template])
REFERENCES [dbo].[SYS_ConfigurationPrintersTemplates] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_Template]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleFamily_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleFamily] CHECK CONSTRAINT [FK_FIN_ArticleFamily_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_Article] FOREIGN KEY([Article])
REFERENCES [dbo].[FIN_Article] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_Article]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_Customer] FOREIGN KEY([Customer])
REFERENCES [dbo].[ERP_Customer] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_Customer]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_DocumentDetail] FOREIGN KEY([DocumentDetail])
REFERENCES [dbo].[FIN_DocumentFinanceDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_DocumentDetail]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_DocumentMaster] FOREIGN KEY([DocumentMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_DocumentMaster]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleStock]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleStock_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleStock] CHECK CONSTRAINT [FK_FIN_ArticleStock_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_CommissionGroup] FOREIGN KEY([CommissionGroup])
REFERENCES [dbo].[POS_UserCommissionGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_CommissionGroup]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_DiscountGroup] FOREIGN KEY([DiscountGroup])
REFERENCES [dbo].[ERP_CustomerDiscountGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_DiscountGroup]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_Family] FOREIGN KEY([Family])
REFERENCES [dbo].[FIN_ArticleFamily] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_Family]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_Printer] FOREIGN KEY([Printer])
REFERENCES [dbo].[SYS_ConfigurationPrinters] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_Printer]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_Template] FOREIGN KEY([Template])
REFERENCES [dbo].[SYS_ConfigurationPrintersTemplates] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_Template]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_VatDirectSelling] FOREIGN KEY([VatDirectSelling])
REFERENCES [dbo].[FIN_ConfigurationVatRate] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_VatDirectSelling]
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleSubFamily_VatOnTable] FOREIGN KEY([VatOnTable])
REFERENCES [dbo].[FIN_ConfigurationVatRate] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleSubFamily] CHECK CONSTRAINT [FK_FIN_ArticleSubFamily_VatOnTable]
GO
ALTER TABLE [dbo].[FIN_ArticleType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleType] CHECK CONSTRAINT [FK_FIN_ArticleType_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleType] CHECK CONSTRAINT [FK_FIN_ArticleType_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleType] CHECK CONSTRAINT [FK_FIN_ArticleType_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleType] CHECK CONSTRAINT [FK_FIN_ArticleType_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ArticleType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleType] CHECK CONSTRAINT [FK_FIN_ArticleType_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ArticleType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ArticleType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ArticleType] CHECK CONSTRAINT [FK_FIN_ArticleType_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentCondition] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentCondition_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPaymentMethod] CHECK CONSTRAINT [FK_FIN_ConfigurationPaymentMethod_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPriceType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType] CHECK CONSTRAINT [FK_FIN_ConfigurationPriceType_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPriceType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType] CHECK CONSTRAINT [FK_FIN_ConfigurationPriceType_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPriceType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType] CHECK CONSTRAINT [FK_FIN_ConfigurationPriceType_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPriceType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType] CHECK CONSTRAINT [FK_FIN_ConfigurationPriceType_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPriceType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType] CHECK CONSTRAINT [FK_FIN_ConfigurationPriceType_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationPriceType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationPriceType] CHECK CONSTRAINT [FK_FIN_ConfigurationPriceType_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason] CHECK CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason] CHECK CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason] CHECK CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason] CHECK CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason] CHECK CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatExemptionReason] CHECK CONSTRAINT [FK_FIN_ConfigurationVatExemptionReason_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatRate_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate] CHECK CONSTRAINT [FK_FIN_ConfigurationVatRate_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatRate_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate] CHECK CONSTRAINT [FK_FIN_ConfigurationVatRate_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatRate_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate] CHECK CONSTRAINT [FK_FIN_ConfigurationVatRate_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatRate_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate] CHECK CONSTRAINT [FK_FIN_ConfigurationVatRate_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatRate_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate] CHECK CONSTRAINT [FK_FIN_ConfigurationVatRate_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_ConfigurationVatRate_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_ConfigurationVatRate] CHECK CONSTRAINT [FK_FIN_ConfigurationVatRate_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_CommissionGroup] FOREIGN KEY([CommissionGroup])
REFERENCES [dbo].[POS_UserCommissionGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_CommissionGroup]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_FinanceDetail] FOREIGN KEY([FinanceDetail])
REFERENCES [dbo].[FIN_DocumentFinanceDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_FinanceDetail]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_FinanceMaster] FOREIGN KEY([FinanceMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_FinanceMaster]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_Terminal] FOREIGN KEY([Terminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_Terminal]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceCommission_UserDetail] FOREIGN KEY([UserDetail])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceCommission] CHECK CONSTRAINT [FK_FIN_DocumentFinanceCommission_UserDetail]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_Article] FOREIGN KEY([Article])
REFERENCES [dbo].[FIN_Article] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_Article]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_DocumentMaster] FOREIGN KEY([DocumentMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_DocumentMaster]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_VatExemptionReason] FOREIGN KEY([VatExemptionReason])
REFERENCES [dbo].[FIN_ConfigurationVatExemptionReason] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_VatExemptionReason]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetail_VatRate] FOREIGN KEY([VatRate])
REFERENCES [dbo].[FIN_ConfigurationVatRate] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetail] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetail_VatRate]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DocumentDetail] FOREIGN KEY([DocumentDetail])
REFERENCES [dbo].[FIN_DocumentFinanceDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DocumentDetail]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DocumentMaster] FOREIGN KEY([DocumentMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_DocumentMaster]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailOrderReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailOrderReference_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DocumentDetail] FOREIGN KEY([DocumentDetail])
REFERENCES [dbo].[FIN_DocumentFinanceDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DocumentDetail]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DocumentMaster] FOREIGN KEY([DocumentMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_DocumentMaster]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceDetailReference] CHECK CONSTRAINT [FK_FIN_DocumentFinanceDetailReference_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_ATValidAuditResult] FOREIGN KEY([ATValidAuditResult])
REFERENCES [dbo].[SYS_SystemAuditAT] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_ATValidAuditResult]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_Currency] FOREIGN KEY([Currency])
REFERENCES [dbo].[CFG_ConfigurationCurrency] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_Currency]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentChild] FOREIGN KEY([DocumentChild])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentChild]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentParent] FOREIGN KEY([DocumentParent])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentParent]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentSerie] FOREIGN KEY([DocumentSerie])
REFERENCES [dbo].[FIN_DocumentFinanceSeries] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentSerie]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentType] FOREIGN KEY([DocumentType])
REFERENCES [dbo].[FIN_DocumentFinanceType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_DocumentType]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_PaymentCondition] FOREIGN KEY([PaymentCondition])
REFERENCES [dbo].[FIN_ConfigurationPaymentCondition] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_PaymentCondition]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_PaymentMethod] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[FIN_ConfigurationPaymentMethod] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_PaymentMethod]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_SourceOrderMain] FOREIGN KEY([SourceOrderMain])
REFERENCES [dbo].[FIN_DocumentOrderMain] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_SourceOrderMain]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMaster_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMaster] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMaster_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DocumentFinanceMaster] FOREIGN KEY([DocumentFinanceMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DocumentFinanceMaster]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DocumentFinanceMasterCreditNote] FOREIGN KEY([DocumentFinanceMasterCreditNote])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DocumentFinanceMasterCreditNote]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DocumentFinancePayment] FOREIGN KEY([DocumentFinancePayment])
REFERENCES [dbo].[FIN_DocumentFinancePayment] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_DocumentFinancePayment]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterPayment] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterPayment_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_DocumentMaster] FOREIGN KEY([DocumentMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_DocumentMaster]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceMasterTotal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceMasterTotal_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_Currency] FOREIGN KEY([Currency])
REFERENCES [dbo].[CFG_ConfigurationCurrency] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_Currency]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_DocumentSerie] FOREIGN KEY([DocumentSerie])
REFERENCES [dbo].[FIN_DocumentFinanceSeries] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_DocumentSerie]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_DocumentType] FOREIGN KEY([DocumentType])
REFERENCES [dbo].[FIN_DocumentFinanceType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_DocumentType]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_PaymentMethod] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[FIN_ConfigurationPaymentMethod] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_PaymentMethod]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinancePayment_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinancePayment] CHECK CONSTRAINT [FK_FIN_DocumentFinancePayment_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_DocumentType] FOREIGN KEY([DocumentType])
REFERENCES [dbo].[FIN_DocumentFinanceType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_DocumentType]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_FiscalYear] FOREIGN KEY([FiscalYear])
REFERENCES [dbo].[FIN_DocumentFinanceYears] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_FiscalYear]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceSeries_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceSeries] CHECK CONSTRAINT [FK_FIN_DocumentFinanceSeries_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_Printer] FOREIGN KEY([Printer])
REFERENCES [dbo].[SYS_ConfigurationPrinters] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_Printer]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_Template] FOREIGN KEY([Template])
REFERENCES [dbo].[SYS_ConfigurationPrintersTemplates] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_Template]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceType] CHECK CONSTRAINT [FK_FIN_DocumentFinanceType_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYears_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYears_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYears_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYears_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYears_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYears_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYears_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYears_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYears_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYears_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYears_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYears] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYears_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_DocumentType] FOREIGN KEY([DocumentType])
REFERENCES [dbo].[FIN_DocumentFinanceType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_DocumentType]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_FiscalYear] FOREIGN KEY([FiscalYear])
REFERENCES [dbo].[FIN_DocumentFinanceYears] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_FiscalYear]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Printer] FOREIGN KEY([Printer])
REFERENCES [dbo].[SYS_ConfigurationPrinters] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Printer]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Serie] FOREIGN KEY([Serie])
REFERENCES [dbo].[FIN_DocumentFinanceSeries] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Serie]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Template] FOREIGN KEY([Template])
REFERENCES [dbo].[SYS_ConfigurationPrintersTemplates] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Template]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Terminal] FOREIGN KEY([Terminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_Terminal]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentFinanceYearSerieTerminal] CHECK CONSTRAINT [FK_FIN_DocumentFinanceYearSerieTerminal_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_Article] FOREIGN KEY([Article])
REFERENCES [dbo].[FIN_Article] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_Article]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_OrderTicket] FOREIGN KEY([OrderTicket])
REFERENCES [dbo].[FIN_DocumentOrderTicket] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_OrderTicket]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderDetail_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderDetail] CHECK CONSTRAINT [FK_FIN_DocumentOrderDetail_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderMain_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain] CHECK CONSTRAINT [FK_FIN_DocumentOrderMain_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderMain_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain] CHECK CONSTRAINT [FK_FIN_DocumentOrderMain_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderMain_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain] CHECK CONSTRAINT [FK_FIN_DocumentOrderMain_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderMain_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain] CHECK CONSTRAINT [FK_FIN_DocumentOrderMain_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderMain_PlaceTable] FOREIGN KEY([PlaceTable])
REFERENCES [dbo].[POS_ConfigurationPlaceTable] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain] CHECK CONSTRAINT [FK_FIN_DocumentOrderMain_PlaceTable]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderMain_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain] CHECK CONSTRAINT [FK_FIN_DocumentOrderMain_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderMain_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderMain] CHECK CONSTRAINT [FK_FIN_DocumentOrderMain_UpdatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_CreatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_CreatedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_DeletedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_DeletedWhere]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_OrderMain] FOREIGN KEY([OrderMain])
REFERENCES [dbo].[FIN_DocumentOrderMain] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_OrderMain]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_PlaceTable] FOREIGN KEY([PlaceTable])
REFERENCES [dbo].[POS_ConfigurationPlaceTable] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_PlaceTable]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_UpdatedBy]
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket]  WITH NOCHECK ADD  CONSTRAINT [FK_FIN_DocumentOrderTicket_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FIN_DocumentOrderTicket] CHECK CONSTRAINT [FK_FIN_DocumentOrderTicket_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationCashRegister_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister] CHECK CONSTRAINT [FK_POS_ConfigurationCashRegister_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationCashRegister_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister] CHECK CONSTRAINT [FK_POS_ConfigurationCashRegister_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationCashRegister_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister] CHECK CONSTRAINT [FK_POS_ConfigurationCashRegister_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationCashRegister_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister] CHECK CONSTRAINT [FK_POS_ConfigurationCashRegister_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationCashRegister_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister] CHECK CONSTRAINT [FK_POS_ConfigurationCashRegister_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationCashRegister_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationCashRegister] CHECK CONSTRAINT [FK_POS_ConfigurationCashRegister_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationDevice_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice] CHECK CONSTRAINT [FK_POS_ConfigurationDevice_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationDevice_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice] CHECK CONSTRAINT [FK_POS_ConfigurationDevice_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationDevice_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice] CHECK CONSTRAINT [FK_POS_ConfigurationDevice_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationDevice_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice] CHECK CONSTRAINT [FK_POS_ConfigurationDevice_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationDevice_PlaceTerminal] FOREIGN KEY([PlaceTerminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice] CHECK CONSTRAINT [FK_POS_ConfigurationDevice_PlaceTerminal]
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationDevice_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice] CHECK CONSTRAINT [FK_POS_ConfigurationDevice_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationDevice_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationDevice] CHECK CONSTRAINT [FK_POS_ConfigurationDevice_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationKeyboard_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard] CHECK CONSTRAINT [FK_POS_ConfigurationKeyboard_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationKeyboard_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard] CHECK CONSTRAINT [FK_POS_ConfigurationKeyboard_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationKeyboard_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard] CHECK CONSTRAINT [FK_POS_ConfigurationKeyboard_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationKeyboard_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard] CHECK CONSTRAINT [FK_POS_ConfigurationKeyboard_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationKeyboard_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard] CHECK CONSTRAINT [FK_POS_ConfigurationKeyboard_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationKeyboard_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationKeyboard] CHECK CONSTRAINT [FK_POS_ConfigurationKeyboard_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationMaintenance_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance] CHECK CONSTRAINT [FK_POS_ConfigurationMaintenance_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationMaintenance_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance] CHECK CONSTRAINT [FK_POS_ConfigurationMaintenance_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationMaintenance_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance] CHECK CONSTRAINT [FK_POS_ConfigurationMaintenance_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationMaintenance_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance] CHECK CONSTRAINT [FK_POS_ConfigurationMaintenance_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationMaintenance_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance] CHECK CONSTRAINT [FK_POS_ConfigurationMaintenance_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationMaintenance_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationMaintenance] CHECK CONSTRAINT [FK_POS_ConfigurationMaintenance_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_MovementType] FOREIGN KEY([MovementType])
REFERENCES [dbo].[POS_ConfigurationPlaceMovementType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_MovementType]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_PriceType] FOREIGN KEY([PriceType])
REFERENCES [dbo].[FIN_ConfigurationPriceType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_PriceType]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlace_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlace] CHECK CONSTRAINT [FK_POS_ConfigurationPlace_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceMovementType] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceMovementType_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTable_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTable_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTable_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTable_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTable_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTable_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTable_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTable_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTable_Place] FOREIGN KEY([Place])
REFERENCES [dbo].[POS_ConfigurationPlace] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTable_Place]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTable_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTable_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTable_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTable] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTable_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_CreatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_DeletedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_Place] FOREIGN KEY([Place])
REFERENCES [dbo].[POS_ConfigurationPlace] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_Place]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_Printer] FOREIGN KEY([Printer])
REFERENCES [dbo].[SYS_ConfigurationPrinters] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_Printer]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_TemplateTablesConsult] FOREIGN KEY([TemplateTablesConsult])
REFERENCES [dbo].[SYS_ConfigurationPrintersTemplates] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_TemplateTablesConsult]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_TemplateTicket] FOREIGN KEY([TemplateTicket])
REFERENCES [dbo].[SYS_ConfigurationPrintersTemplates] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_TemplateTicket]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_ConfigurationPlaceTerminal] CHECK CONSTRAINT [FK_POS_ConfigurationPlaceTerminal_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_UserCommissionGroup_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup] CHECK CONSTRAINT [FK_POS_UserCommissionGroup_CreatedBy]
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_UserCommissionGroup_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup] CHECK CONSTRAINT [FK_POS_UserCommissionGroup_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_UserCommissionGroup_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup] CHECK CONSTRAINT [FK_POS_UserCommissionGroup_DeletedBy]
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_UserCommissionGroup_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup] CHECK CONSTRAINT [FK_POS_UserCommissionGroup_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_UserCommissionGroup_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup] CHECK CONSTRAINT [FK_POS_UserCommissionGroup_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_UserCommissionGroup_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_UserCommissionGroup] CHECK CONSTRAINT [FK_POS_UserCommissionGroup_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_CreatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_DeletedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_DocumentFinanceMaster] FOREIGN KEY([DocumentFinanceMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_DocumentFinanceMaster]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_DocumentFinancePayment] FOREIGN KEY([DocumentFinancePayment])
REFERENCES [dbo].[FIN_DocumentFinancePayment] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_DocumentFinancePayment]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_DocumentFinanceType] FOREIGN KEY([DocumentFinanceType])
REFERENCES [dbo].[FIN_DocumentFinanceType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_DocumentFinanceType]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_PaymentMethod] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[FIN_ConfigurationPaymentMethod] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_PaymentMethod]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_Terminal] FOREIGN KEY([Terminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_Terminal]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_UserDetail] FOREIGN KEY([UserDetail])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_UserDetail]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_WorkSessionMovementType] FOREIGN KEY([WorkSessionMovementType])
REFERENCES [dbo].[POS_WorkSessionMovementType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_WorkSessionMovementType]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovement_WorkSessionPeriod] FOREIGN KEY([WorkSessionPeriod])
REFERENCES [dbo].[POS_WorkSessionPeriod] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovement] CHECK CONSTRAINT [FK_POS_WorkSessionMovement_WorkSessionPeriod]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovementType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType] CHECK CONSTRAINT [FK_POS_WorkSessionMovementType_CreatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovementType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType] CHECK CONSTRAINT [FK_POS_WorkSessionMovementType_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovementType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType] CHECK CONSTRAINT [FK_POS_WorkSessionMovementType_DeletedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovementType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType] CHECK CONSTRAINT [FK_POS_WorkSessionMovementType_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovementType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType] CHECK CONSTRAINT [FK_POS_WorkSessionMovementType_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionMovementType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionMovementType] CHECK CONSTRAINT [FK_POS_WorkSessionMovementType_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_CreatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_DeletedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_Parent] FOREIGN KEY([Parent])
REFERENCES [dbo].[POS_WorkSessionPeriod] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_Parent]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_Terminal] FOREIGN KEY([Terminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_Terminal]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriod_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriod] CHECK CONSTRAINT [FK_POS_WorkSessionPeriod_UpdatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_CreatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_CreatedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_DeletedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_DeletedWhere]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_PaymentMethod] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[FIN_ConfigurationPaymentMethod] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_PaymentMethod]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_Period] FOREIGN KEY([Period])
REFERENCES [dbo].[POS_WorkSessionPeriod] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_Period]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_UpdatedBy]
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_WorkSessionPeriodTotal_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[POS_WorkSessionPeriodTotal] CHECK CONSTRAINT [FK_POS_WorkSessionPeriodTotal_UpdatedWhere]
GO
ALTER TABLE [dbo].[RPT_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_Report_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_Report] CHECK CONSTRAINT [FK_RPT_Report_CreatedBy]
GO
ALTER TABLE [dbo].[RPT_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_Report_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_Report] CHECK CONSTRAINT [FK_RPT_Report_CreatedWhere]
GO
ALTER TABLE [dbo].[RPT_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_Report_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_Report] CHECK CONSTRAINT [FK_RPT_Report_DeletedBy]
GO
ALTER TABLE [dbo].[RPT_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_Report_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_Report] CHECK CONSTRAINT [FK_RPT_Report_DeletedWhere]
GO
ALTER TABLE [dbo].[RPT_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_Report_ReportType] FOREIGN KEY([ReportType])
REFERENCES [dbo].[RPT_ReportType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_Report] CHECK CONSTRAINT [FK_RPT_Report_ReportType]
GO
ALTER TABLE [dbo].[RPT_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_Report_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_Report] CHECK CONSTRAINT [FK_RPT_Report_UpdatedBy]
GO
ALTER TABLE [dbo].[RPT_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_Report_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_Report] CHECK CONSTRAINT [FK_RPT_Report_UpdatedWhere]
GO
ALTER TABLE [dbo].[RPT_ReportType]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_ReportType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_ReportType] CHECK CONSTRAINT [FK_RPT_ReportType_CreatedBy]
GO
ALTER TABLE [dbo].[RPT_ReportType]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_ReportType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_ReportType] CHECK CONSTRAINT [FK_RPT_ReportType_CreatedWhere]
GO
ALTER TABLE [dbo].[RPT_ReportType]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_ReportType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_ReportType] CHECK CONSTRAINT [FK_RPT_ReportType_DeletedBy]
GO
ALTER TABLE [dbo].[RPT_ReportType]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_ReportType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_ReportType] CHECK CONSTRAINT [FK_RPT_ReportType_DeletedWhere]
GO
ALTER TABLE [dbo].[RPT_ReportType]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_ReportType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_ReportType] CHECK CONSTRAINT [FK_RPT_ReportType_UpdatedBy]
GO
ALTER TABLE [dbo].[RPT_ReportType]  WITH NOCHECK ADD  CONSTRAINT [FK_RPT_ReportType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[RPT_ReportType] CHECK CONSTRAINT [FK_RPT_ReportType_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrinters_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters] CHECK CONSTRAINT [FK_SYS_ConfigurationPrinters_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrinters_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters] CHECK CONSTRAINT [FK_SYS_ConfigurationPrinters_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrinters_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters] CHECK CONSTRAINT [FK_SYS_ConfigurationPrinters_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrinters_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters] CHECK CONSTRAINT [FK_SYS_ConfigurationPrinters_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrinters_PrinterType] FOREIGN KEY([PrinterType])
REFERENCES [dbo].[SYS_ConfigurationPrintersType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters] CHECK CONSTRAINT [FK_SYS_ConfigurationPrinters_PrinterType]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrinters_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters] CHECK CONSTRAINT [FK_SYS_ConfigurationPrinters_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrinters_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrinters] CHECK CONSTRAINT [FK_SYS_ConfigurationPrinters_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersTemplates] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersTemplates_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersType_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersType_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersType_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersType_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersType_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_ConfigurationPrintersType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_ConfigurationPrintersType] CHECK CONSTRAINT [FK_SYS_ConfigurationPrintersType_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_AuditType] FOREIGN KEY([AuditType])
REFERENCES [dbo].[SYS_SystemAuditType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_AuditType]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_Terminal] FOREIGN KEY([Terminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_Terminal]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAudit]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAudit_UserDetail] FOREIGN KEY([UserDetail])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAudit] CHECK CONSTRAINT [FK_SYS_SystemAudit_UserDetail]
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditAT_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT] CHECK CONSTRAINT [FK_SYS_SystemAuditAT_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditAT_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT] CHECK CONSTRAINT [FK_SYS_SystemAuditAT_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditAT_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT] CHECK CONSTRAINT [FK_SYS_SystemAuditAT_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditAT_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT] CHECK CONSTRAINT [FK_SYS_SystemAuditAT_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditAT_DocumentMaster] FOREIGN KEY([DocumentMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT] CHECK CONSTRAINT [FK_SYS_SystemAuditAT_DocumentMaster]
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditAT_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT] CHECK CONSTRAINT [FK_SYS_SystemAuditAT_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditAT_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditAT] CHECK CONSTRAINT [FK_SYS_SystemAuditAT_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAuditType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditType] CHECK CONSTRAINT [FK_SYS_SystemAuditType_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAuditType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditType] CHECK CONSTRAINT [FK_SYS_SystemAuditType_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAuditType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditType] CHECK CONSTRAINT [FK_SYS_SystemAuditType_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAuditType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditType] CHECK CONSTRAINT [FK_SYS_SystemAuditType_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemAuditType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditType] CHECK CONSTRAINT [FK_SYS_SystemAuditType_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemAuditType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemAuditType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemAuditType] CHECK CONSTRAINT [FK_SYS_SystemAuditType_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_Terminal] FOREIGN KEY([Terminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_Terminal]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemBackup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemBackup_User] FOREIGN KEY([User])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemBackup] CHECK CONSTRAINT [FK_SYS_SystemBackup_User]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_NotificationType] FOREIGN KEY([NotificationType])
REFERENCES [dbo].[SYS_SystemNotificationType] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_NotificationType]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_TerminalLastRead] FOREIGN KEY([TerminalLastRead])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_TerminalLastRead]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_TerminalTarget] FOREIGN KEY([TerminalTarget])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_TerminalTarget]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_UserLastRead] FOREIGN KEY([UserLastRead])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_UserLastRead]
GO
ALTER TABLE [dbo].[SYS_SystemNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotification_UserTarget] FOREIGN KEY([UserTarget])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotification] CHECK CONSTRAINT [FK_SYS_SystemNotification_UserTarget]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_TerminalTarget] FOREIGN KEY([TerminalTarget])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_TerminalTarget]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemNotificationType_UserTarget] FOREIGN KEY([UserTarget])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemNotificationType] CHECK CONSTRAINT [FK_SYS_SystemNotificationType_UserTarget]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_DocumentMaster] FOREIGN KEY([DocumentMaster])
REFERENCES [dbo].[FIN_DocumentFinanceMaster] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_DocumentMaster]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_DocumentPayment] FOREIGN KEY([DocumentPayment])
REFERENCES [dbo].[FIN_DocumentFinancePayment] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_DocumentPayment]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_Terminal] FOREIGN KEY([Terminal])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_Terminal]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_SystemPrint]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_SystemPrint_UserDetail] FOREIGN KEY([UserDetail])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_SystemPrint] CHECK CONSTRAINT [FK_SYS_SystemPrint_UserDetail]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_CommissionGroup] FOREIGN KEY([CommissionGroup])
REFERENCES [dbo].[POS_UserCommissionGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_CommissionGroup]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_Profile] FOREIGN KEY([Profile])
REFERENCES [dbo].[SYS_UserProfile] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_Profile]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_UserDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserDetail_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserDetail] CHECK CONSTRAINT [FK_SYS_UserDetail_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionGroup_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup] CHECK CONSTRAINT [FK_SYS_UserPermissionGroup_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionGroup_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup] CHECK CONSTRAINT [FK_SYS_UserPermissionGroup_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionGroup_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup] CHECK CONSTRAINT [FK_SYS_UserPermissionGroup_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionGroup_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup] CHECK CONSTRAINT [FK_SYS_UserPermissionGroup_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionGroup_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup] CHECK CONSTRAINT [FK_SYS_UserPermissionGroup_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionGroup_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionGroup] CHECK CONSTRAINT [FK_SYS_UserPermissionGroup_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionItem_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem] CHECK CONSTRAINT [FK_SYS_UserPermissionItem_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionItem_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem] CHECK CONSTRAINT [FK_SYS_UserPermissionItem_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionItem_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem] CHECK CONSTRAINT [FK_SYS_UserPermissionItem_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionItem_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem] CHECK CONSTRAINT [FK_SYS_UserPermissionItem_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionItem_PermissionGroup] FOREIGN KEY([PermissionGroup])
REFERENCES [dbo].[SYS_UserPermissionGroup] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem] CHECK CONSTRAINT [FK_SYS_UserPermissionItem_PermissionGroup]
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionItem_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem] CHECK CONSTRAINT [FK_SYS_UserPermissionItem_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionItem_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionItem] CHECK CONSTRAINT [FK_SYS_UserPermissionItem_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_PermissionItem] FOREIGN KEY([PermissionItem])
REFERENCES [dbo].[SYS_UserPermissionItem] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_PermissionItem]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_UpdatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserPermissionProfile_UserProfile] FOREIGN KEY([UserProfile])
REFERENCES [dbo].[SYS_UserProfile] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserPermissionProfile] CHECK CONSTRAINT [FK_SYS_UserPermissionProfile_UserProfile]
GO
ALTER TABLE [dbo].[SYS_UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserProfile_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserProfile] CHECK CONSTRAINT [FK_SYS_UserProfile_CreatedBy]
GO
ALTER TABLE [dbo].[SYS_UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserProfile_CreatedWhere] FOREIGN KEY([CreatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserProfile] CHECK CONSTRAINT [FK_SYS_UserProfile_CreatedWhere]
GO
ALTER TABLE [dbo].[SYS_UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserProfile_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserProfile] CHECK CONSTRAINT [FK_SYS_UserProfile_DeletedBy]
GO
ALTER TABLE [dbo].[SYS_UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserProfile_DeletedWhere] FOREIGN KEY([DeletedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserProfile] CHECK CONSTRAINT [FK_SYS_UserProfile_DeletedWhere]
GO
ALTER TABLE [dbo].[SYS_UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserProfile_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[SYS_UserDetail] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserProfile] CHECK CONSTRAINT [FK_SYS_UserProfile_UpdatedBy]
GO
ALTER TABLE [dbo].[SYS_UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_SYS_UserProfile_UpdatedWhere] FOREIGN KEY([UpdatedWhere])
REFERENCES [dbo].[POS_ConfigurationPlaceTerminal] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SYS_UserProfile] CHECK CONSTRAINT [FK_SYS_UserProfile_UpdatedWhere]
GO
/****** EOF GENERATED SCRIPT ******/

/****** Required Changes for XPO Defaults ******/

/****** Drop Index, else must have a CardNumber for every Customer ******/
DROP INDEX [iCardNumber_ERP_Customer] ON [dbo].[ERP_Customer]
GO

/****** Drop Index, else must have a BarCode for every Article ******/
DROP INDEX [iBarCode_FIN_Article] ON [dbo].[FIN_Article]
GO
