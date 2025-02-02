USE [Databases_]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coupon_pay]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coupon_pay](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](50) NULL,
	[object] [nvarchar](50) NULL,
	[price] [float] NULL,
	[major] [nvarchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[explain] [nvarchar](50) NULL,
	[payer] [nvarchar](50) NULL,
 CONSTRAINT [PK_coupon_pay] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coupon_pay_reference]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coupon_pay_reference](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](50) NULL,
	[coupon_pay_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_coupon_pay_reference] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tax_number] [int] NULL,
	[explain] [nvarchar](50) NULL,
	[birthdate] [varchar](20) NULL,
	[sex] [bit] NULL,
	[customer_point] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goods_catagory]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goods_catagory](
	[id] [nvarchar](50) NOT NULL,
	[goods_name] [nvarchar](50) NULL,
	[group_goods] [nvarchar](5) NULL,
	[unit] [nvarchar](10) NULL,
	[fixed_purchase_price] [float] NULL,
	[lasted_purchase_price] [float] NULL,
	[unit_price] [float] NULL,
	[weight] [int] NULL,
 CONSTRAINT [PK_goods_catagory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups_goods]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups_goods](
	[id] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Groups_goods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[input]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[input](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](20) NULL,
	[supplier_id] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[importer] [nvarchar](50) NULL,
	[warehouse] [nvarchar](10) NULL,
	[shipper] [nvarchar](50) NULL,
	[explain] [nvarchar](50) NULL,
	[owed] [int] NULL,
	[pay] [int] NULL,
	[status] [nvarchar](20) NULL,
 CONSTRAINT [PK_input] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[input_content]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[input_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goods_id] [nvarchar](50) NULL,
	[goods_name] [nvarchar](50) NULL,
	[unit] [nvarchar](10) NULL,
	[quantity] [float] NULL,
	[imports_prices] [float] NULL,
	[after_price] [float] NULL,
	[group_goods] [nchar](10) NULL,
	[weight] [float] NULL,
	[input_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_input_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[input_reference]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[input_reference](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_id] [nvarchar](50) NULL,
	[date] [varchar](50) NULL,
	[input_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_input_reference] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IO_report]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IO_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [varchar](50) NULL,
	[explain] [nvarchar](100) NULL,
	[major] [nvarchar](20) NULL,
 CONSTRAINT [PK_IO_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IO_report_refererence]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IO_report_refererence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_id] [nvarchar](50) NULL,
	[explain] [nchar](10) NULL,
	[IO_report_id] [int] NULL,
 CONSTRAINT [PK_IO_report_refererence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_goods]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_goods](
	[id] [nvarchar](50) NOT NULL,
	[unit] [nvarchar](20) NULL,
	[quantity] [int] NULL,
	[weight] [int] NULL,
	[price] [float] NULL,
	[goods_catagory_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_Material_goods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[output]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[output](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](20) NULL,
	[customer_id] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[seller] [nvarchar](50) NULL,
	[warehouse] [nvarchar](10) NULL,
	[shipper] [nvarchar](50) NULL,
	[explain] [nvarchar](50) NULL,
	[owed] [float] NULL,
	[pay] [float] NULL,
	[status] [nvarchar](20) NULL,
 CONSTRAINT [PK_output] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[output_content]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[output_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goods_id] [nvarchar](50) NULL,
	[goods_name] [nvarchar](50) NULL,
	[unit] [nvarchar](10) NULL,
	[quantity] [float] NULL,
	[exports_prices] [float] NULL,
	[discounts] [int] NULL,
	[after_price] [float] NULL,
	[weight] [float] NULL,
	[output_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_output_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[output_reference]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[output_reference](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_id] [nvarchar](50) NULL,
	[date] [varchar](50) NULL,
	[output_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_output_reference] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_order]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_order](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](50) NULL,
	[explain] [nvarchar](100) NULL,
	[status] [varchar](20) NULL,
 CONSTRAINT [PK_Production_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_order_content]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_order_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goods_id] [nvarchar](50) NULL,
	[goods_name] [nvarchar](50) NULL,
	[unit] [nvarchar](10) NULL,
	[quantity] [int] NULL,
	[Production_order_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_Production_order_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_order_material]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_order_material](
	[id] [nvarchar](50) NOT NULL,
	[goods_name] [nvarchar](50) NULL,
	[unit] [nvarchar](10) NULL,
	[quantityon1] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[Production_order_content_id] [int] NULL,
 CONSTRAINT [PK_Production_order_material] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qr_code]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qr_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[barcode] [varchar](100) NULL,
	[goods_id] [nvarchar](50) NULL,
	[date] [varchar](50) NULL,
	[texthere] [nvarchar](100) NULL,
 CONSTRAINT [PK_Barcode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quest]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_name] [nvarchar](100) NULL,
	[quest] [nvarchar](100) NULL,
	[User_id] [int] NULL,
	[date] [varchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Quest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotes]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotes](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](50) NULL,
	[customer_id] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [varchar](20) NULL,
	[receiver] [varchar](50) NULL,
	[explain] [nvarchar](100) NULL,
	[creator] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phieubaogia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotes_content]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotes_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goods_id] [nvarchar](50) NULL,
	[goods_name] [nvarchar](100) NULL,
	[unit] [nvarchar](10) NULL,
	[quantity] [int] NULL,
	[goods_price] [int] NULL,
	[afterpirce] [nchar](10) NULL,
	[discount] [int] NULL,
	[lasted_price] [int] NULL,
	[Quotes_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_Quotes_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receipts]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receipts](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](50) NULL,
	[object] [nvarchar](50) NULL,
	[price] [float] NULL,
	[major] [nvarchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[explain] [nvarchar](50) NULL,
	[collector] [nvarchar](50) NULL,
 CONSTRAINT [PK_receipts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receipts_reference]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receipts_reference](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](50) NULL,
	[receipts_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_receipts_reference] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales_coupon]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_coupon](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](20) NULL,
	[customer_id] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[expain] [nvarchar](50) NULL,
	[seller] [nvarchar](50) NULL,
 CONSTRAINT [PK_sales coupon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales_coupon_content]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_coupon_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goods_id] [nvarchar](50) NULL,
	[goods_name] [nvarchar](100) NULL,
	[unit] [nvarchar](10) NULL,
	[quantity] [int] NULL,
	[goods_price] [int] NULL,
	[discount] [int] NULL,
	[afterpirce] [nchar](10) NULL,
	[sales_coupon_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_sales_coupon_content_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stock_card]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stock_card](
	[id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_stock_card] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tax_number] [int] NULL,
	[explain] [nvarchar](50) NULL,
	[birthdate] [varchar](20) NULL,
	[sex] [bit] NULL,
	[customer_point] [int] NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tranfer_conent]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tranfer_conent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[warehouse_id] [nvarchar](50) NULL,
	[goods_name] [nvarchar](50) NULL,
	[unit] [nchar](10) NULL,
	[quantity] [float] NULL,
	[trafer_id] [nvarchar](50) NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_tranfer_warehouse_conent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tranfer_warehouse]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tranfer_warehouse](
	[id] [nvarchar](50) NOT NULL,
	[fromss] [nvarchar](50) NULL,
	[toss] [nvarchar](50) NULL,
	[date] [varchar](50) NULL,
	[explain] [nvarchar](50) NULL,
 CONSTRAINT [PK_tranfer_warehouse] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [nvarchar](50) NOT NULL,
	[date] [varchar](20) NULL,
	[supplier_id] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[expain] [nvarchar](100) NULL,
	[creator] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phieudathang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_content]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[goods_id] [nvarchar](50) NULL,
	[goods_name] [nvarchar](50) NULL,
	[unit] [nvarchar](10) NULL,
	[quantity] [int] NULL,
	[goods_price] [int] NULL,
	[afteprice] [int] NULL,
	[coupon_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_coupon_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher_report]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datecreate] [varchar](50) NULL,
	[explain] [nvarchar](100) NULL,
 CONSTRAINT [PK_Voucher_report_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher_report_refere]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher_report_refere](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Goods_name] [nvarchar](50) NULL,
	[Quantity] [float] NULL,
	[unitprice] [float] NULL,
	[Where_to_buy] [nvarchar](100) NULL,
	[Date] [varchar](50) NULL,
	[voucherId] [int] NULL,
 CONSTRAINT [PK_Voucher_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 06/23/2021 9:37:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[goods_id] [nvarchar](50) NOT NULL,
	[goods_name] [nvarchar](50) NULL,
	[unit] [nvarchar](20) NULL,
	[quantity_in_stock] [float] NULL,
	[import_price] [float] NULL,
	[price_in_stock] [float] NULL,
	[sell_price] [float] NULL,
	[group_goods] [nvarchar](5) NULL,
	[weight] [float] NULL,
	[stock_card] [nvarchar](50) NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[goods_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([id], [name], [phone], [address], [email], [tax_number], [explain], [birthdate], [sex], [customer_point]) VALUES (N'eX00001', N'trungr', 111154, N'4545456', N'46454564', 454545, N'4545454', N'54545', 1, 1000)
GO
INSERT [dbo].[goods_catagory] ([id], [goods_name], [group_goods], [unit], [fixed_purchase_price], [lasted_purchase_price], [unit_price], [weight]) VALUES (N'SP00001', N'Áo thun', N'TP', N'cái', NULL, NULL, NULL, 5)
INSERT [dbo].[goods_catagory] ([id], [goods_name], [group_goods], [unit], [fixed_purchase_price], [lasted_purchase_price], [unit_price], [weight]) VALUES (N'SX00001', N'Cuộn vải ABC', N'SX', N'Cuộn', NULL, NULL, NULL, 5)
INSERT [dbo].[goods_catagory] ([id], [goods_name], [group_goods], [unit], [fixed_purchase_price], [lasted_purchase_price], [unit_price], [weight]) VALUES (N'SX00002', N'Cuộn vải BCD', N'SX', N'Cuộn', NULL, NULL, NULL, 5)
GO
INSERT [dbo].[Groups_goods] ([id], [Name]) VALUES (N'SX', N'Sản xuất')
INSERT [dbo].[Groups_goods] ([id], [Name]) VALUES (N'TP', N'Thành phẩm')
GO
INSERT [dbo].[Material_goods] ([id], [unit], [quantity], [weight], [price], [goods_catagory_id]) VALUES (N'SX00001', N'cuộn', 50, 10, NULL, N'SP00001')
INSERT [dbo].[Material_goods] ([id], [unit], [quantity], [weight], [price], [goods_catagory_id]) VALUES (N'SX00002', N'cuộn', 10, 10, NULL, N'SP00001')
GO
INSERT [dbo].[Production_order] ([id], [date], [explain], [status]) VALUES (N'LSX00001', N'2020-02-02', N'Sản xuất áo thunn', N'Chua hoàn thành')
GO
SET IDENTITY_INSERT [dbo].[Production_order_content] ON 

INSERT [dbo].[Production_order_content] ([id], [goods_id], [goods_name], [unit], [quantity], [Production_order_id]) VALUES (1, N'SP00001', N'Áo thun', N'cái', 100, N'LSX00001')
SET IDENTITY_INSERT [dbo].[Production_order_content] OFF
GO
INSERT [dbo].[Production_order_material] ([id], [goods_name], [unit], [quantityon1], [quantity], [price], [Production_order_content_id]) VALUES (N'SX00001', N'Cuộn vải ABC', N'Cuộn', 50, 100, 10000, 1)
INSERT [dbo].[Production_order_material] ([id], [goods_name], [unit], [quantityon1], [quantity], [price], [Production_order_content_id]) VALUES (N'SX00002', N'Cuộn vải BDC', N'Cuộn', 50, 100, 10000, 1)
GO
ALTER TABLE [dbo].[coupon_pay]  WITH CHECK ADD  CONSTRAINT [FK_coupon_pay_supplier] FOREIGN KEY([object])
REFERENCES [dbo].[supplier] ([id])
GO
ALTER TABLE [dbo].[coupon_pay] CHECK CONSTRAINT [FK_coupon_pay_supplier]
GO
ALTER TABLE [dbo].[coupon_pay_reference]  WITH CHECK ADD  CONSTRAINT [FK_coupon_pay_reference_coupon_pay] FOREIGN KEY([coupon_pay_id])
REFERENCES [dbo].[coupon_pay] ([id])
GO
ALTER TABLE [dbo].[coupon_pay_reference] CHECK CONSTRAINT [FK_coupon_pay_reference_coupon_pay]
GO
ALTER TABLE [dbo].[goods_catagory]  WITH CHECK ADD  CONSTRAINT [FK_goods_catagory_Groups_goods] FOREIGN KEY([group_goods])
REFERENCES [dbo].[Groups_goods] ([id])
GO
ALTER TABLE [dbo].[goods_catagory] CHECK CONSTRAINT [FK_goods_catagory_Groups_goods]
GO
ALTER TABLE [dbo].[input]  WITH CHECK ADD  CONSTRAINT [FK_input_supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[supplier] ([id])
GO
ALTER TABLE [dbo].[input] CHECK CONSTRAINT [FK_input_supplier]
GO
ALTER TABLE [dbo].[input_content]  WITH CHECK ADD  CONSTRAINT [FK_input_content_goods_catagory1] FOREIGN KEY([goods_id])
REFERENCES [dbo].[goods_catagory] ([id])
GO
ALTER TABLE [dbo].[input_content] CHECK CONSTRAINT [FK_input_content_goods_catagory1]
GO
ALTER TABLE [dbo].[input_content]  WITH CHECK ADD  CONSTRAINT [FK_input_content_input] FOREIGN KEY([input_id])
REFERENCES [dbo].[input] ([id])
GO
ALTER TABLE [dbo].[input_content] CHECK CONSTRAINT [FK_input_content_input]
GO
ALTER TABLE [dbo].[input_reference]  WITH CHECK ADD  CONSTRAINT [FK_input_reference_input] FOREIGN KEY([input_id])
REFERENCES [dbo].[input] ([id])
GO
ALTER TABLE [dbo].[input_reference] CHECK CONSTRAINT [FK_input_reference_input]
GO
ALTER TABLE [dbo].[IO_report_refererence]  WITH CHECK ADD  CONSTRAINT [FK_IO_report_refererence_IO_report] FOREIGN KEY([IO_report_id])
REFERENCES [dbo].[IO_report] ([id])
GO
ALTER TABLE [dbo].[IO_report_refererence] CHECK CONSTRAINT [FK_IO_report_refererence_IO_report]
GO
ALTER TABLE [dbo].[Material_goods]  WITH CHECK ADD  CONSTRAINT [FK_Material_goods_goods_catagory] FOREIGN KEY([goods_catagory_id])
REFERENCES [dbo].[goods_catagory] ([id])
GO
ALTER TABLE [dbo].[Material_goods] CHECK CONSTRAINT [FK_Material_goods_goods_catagory]
GO
ALTER TABLE [dbo].[output]  WITH CHECK ADD  CONSTRAINT [FK_output_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[output] CHECK CONSTRAINT [FK_output_Customer]
GO
ALTER TABLE [dbo].[output_content]  WITH CHECK ADD  CONSTRAINT [FK_output_content_output] FOREIGN KEY([output_id])
REFERENCES [dbo].[output] ([id])
GO
ALTER TABLE [dbo].[output_content] CHECK CONSTRAINT [FK_output_content_output]
GO
ALTER TABLE [dbo].[output_content]  WITH CHECK ADD  CONSTRAINT [FK_output_content_Warehouse] FOREIGN KEY([goods_id])
REFERENCES [dbo].[Warehouse] ([goods_id])
GO
ALTER TABLE [dbo].[output_content] CHECK CONSTRAINT [FK_output_content_Warehouse]
GO
ALTER TABLE [dbo].[output_reference]  WITH CHECK ADD  CONSTRAINT [FK_output_reference_output] FOREIGN KEY([output_id])
REFERENCES [dbo].[output] ([id])
GO
ALTER TABLE [dbo].[output_reference] CHECK CONSTRAINT [FK_output_reference_output]
GO
ALTER TABLE [dbo].[Production_order_content]  WITH CHECK ADD  CONSTRAINT [FK_Production_order_content_goods_catagory1] FOREIGN KEY([goods_id])
REFERENCES [dbo].[goods_catagory] ([id])
GO
ALTER TABLE [dbo].[Production_order_content] CHECK CONSTRAINT [FK_Production_order_content_goods_catagory1]
GO
ALTER TABLE [dbo].[Production_order_content]  WITH CHECK ADD  CONSTRAINT [FK_Production_order_content_Production_order] FOREIGN KEY([Production_order_id])
REFERENCES [dbo].[Production_order] ([id])
GO
ALTER TABLE [dbo].[Production_order_content] CHECK CONSTRAINT [FK_Production_order_content_Production_order]
GO
ALTER TABLE [dbo].[Production_order_material]  WITH CHECK ADD  CONSTRAINT [FK_Production_order_material_Production_order_content] FOREIGN KEY([Production_order_content_id])
REFERENCES [dbo].[Production_order_content] ([id])
GO
ALTER TABLE [dbo].[Production_order_material] CHECK CONSTRAINT [FK_Production_order_material_Production_order_content]
GO
ALTER TABLE [dbo].[qr_code]  WITH CHECK ADD  CONSTRAINT [FK_Barcode_Warehouse] FOREIGN KEY([goods_id])
REFERENCES [dbo].[Warehouse] ([goods_id])
GO
ALTER TABLE [dbo].[qr_code] CHECK CONSTRAINT [FK_Barcode_Warehouse]
GO
ALTER TABLE [dbo].[Quest]  WITH CHECK ADD  CONSTRAINT [FK_Quest_Account] FOREIGN KEY([User_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Quest] CHECK CONSTRAINT [FK_Quest_Account]
GO
ALTER TABLE [dbo].[Quotes]  WITH CHECK ADD  CONSTRAINT [FK_Quotes_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Quotes] CHECK CONSTRAINT [FK_Quotes_Customer]
GO
ALTER TABLE [dbo].[Quotes_content]  WITH CHECK ADD  CONSTRAINT [FK_Quotes_content_Quotes] FOREIGN KEY([Quotes_id])
REFERENCES [dbo].[Quotes] ([id])
GO
ALTER TABLE [dbo].[Quotes_content] CHECK CONSTRAINT [FK_Quotes_content_Quotes]
GO
ALTER TABLE [dbo].[Quotes_content]  WITH CHECK ADD  CONSTRAINT [FK_Quotes_content_Warehouse] FOREIGN KEY([goods_id])
REFERENCES [dbo].[Warehouse] ([goods_id])
GO
ALTER TABLE [dbo].[Quotes_content] CHECK CONSTRAINT [FK_Quotes_content_Warehouse]
GO
ALTER TABLE [dbo].[receipts_reference]  WITH CHECK ADD  CONSTRAINT [FK_receipts_reference_receipts] FOREIGN KEY([receipts_id])
REFERENCES [dbo].[receipts] ([id])
GO
ALTER TABLE [dbo].[receipts_reference] CHECK CONSTRAINT [FK_receipts_reference_receipts]
GO
ALTER TABLE [dbo].[sales_coupon]  WITH CHECK ADD  CONSTRAINT [FK_sales_coupon_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[sales_coupon] CHECK CONSTRAINT [FK_sales_coupon_Customer]
GO
ALTER TABLE [dbo].[sales_coupon_content]  WITH CHECK ADD  CONSTRAINT [FK_sales_coupon_content_sales_coupon] FOREIGN KEY([sales_coupon_id])
REFERENCES [dbo].[sales_coupon] ([id])
GO
ALTER TABLE [dbo].[sales_coupon_content] CHECK CONSTRAINT [FK_sales_coupon_content_sales_coupon]
GO
ALTER TABLE [dbo].[sales_coupon_content]  WITH CHECK ADD  CONSTRAINT [FK_sales_coupon_content_Warehouse] FOREIGN KEY([goods_id])
REFERENCES [dbo].[Warehouse] ([goods_id])
GO
ALTER TABLE [dbo].[sales_coupon_content] CHECK CONSTRAINT [FK_sales_coupon_content_Warehouse]
GO
ALTER TABLE [dbo].[tranfer_conent]  WITH CHECK ADD  CONSTRAINT [FK_tranfer_warehouse_conent_tranfer_warehouse1] FOREIGN KEY([trafer_id])
REFERENCES [dbo].[tranfer_warehouse] ([id])
GO
ALTER TABLE [dbo].[tranfer_conent] CHECK CONSTRAINT [FK_tranfer_warehouse_conent_tranfer_warehouse1]
GO
ALTER TABLE [dbo].[tranfer_conent]  WITH CHECK ADD  CONSTRAINT [FK_tranfer_warehouse_conent_Warehouse1] FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[Warehouse] ([goods_id])
GO
ALTER TABLE [dbo].[tranfer_conent] CHECK CONSTRAINT [FK_tranfer_warehouse_conent_Warehouse1]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK_coupon_supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[supplier] ([id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK_coupon_supplier]
GO
ALTER TABLE [dbo].[voucher_content]  WITH CHECK ADD  CONSTRAINT [FK_coupon_content_coupon] FOREIGN KEY([coupon_id])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[voucher_content] CHECK CONSTRAINT [FK_coupon_content_coupon]
GO
ALTER TABLE [dbo].[voucher_content]  WITH CHECK ADD  CONSTRAINT [FK_voucher_content_goods_catagory] FOREIGN KEY([goods_id])
REFERENCES [dbo].[goods_catagory] ([id])
GO
ALTER TABLE [dbo].[voucher_content] CHECK CONSTRAINT [FK_voucher_content_goods_catagory]
GO
ALTER TABLE [dbo].[Voucher_report_refere]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_report_refere_Voucher_report] FOREIGN KEY([voucherId])
REFERENCES [dbo].[Voucher_report] ([id])
GO
ALTER TABLE [dbo].[Voucher_report_refere] CHECK CONSTRAINT [FK_Voucher_report_refere_Voucher_report]
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_stock_card] FOREIGN KEY([stock_card])
REFERENCES [dbo].[stock_card] ([id])
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [FK_Warehouse_stock_card]
GO
