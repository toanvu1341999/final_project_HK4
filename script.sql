USE [final_project]
GO
/****** Object:  Table [dbo].[chi]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi](
	[ma] [varchar](50) NULL,
	[ngay] [varchar](50) NULL,
	[doituong] [varchar](50) NULL,
	[gia] [int] NULL,
	[chugiai] [nchar](10) NULL,
	[nguoithu] [nchar](10) NULL,
	[diachi] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuyenkho]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuyenkho](
	[ma] [varchar](50) NOT NULL,
	[ngay] [varchar](50) NULL,
	[tukho] [varchar](50) NULL,
	[toikho] [varchar](50) NULL,
	[chugiai] [varchar](50) NULL,
 CONSTRAINT [PK_TraferWarehouse] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Congno]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congno](
	[ma] [varchar](50) NOT NULL,
	[khachhang_nhacungcap] [varchar](50) NULL,
	[nguoitra_khachhang] [varchar](50) NULL,
	[chugiai] [varchar](50) NULL,
	[gia] [int] NULL,
	[nghiepvu] [varchar](50) NULL,
	[nguoithu_nguoichi] [varchar](50) NULL,
	[kieuthanhtoan] [varchar](50) NULL,
	[ngay] [varchar](50) NULL,
	[diachi] [varchar](50) NULL,
 CONSTRAINT [PK_thu_kh_or_chi_tra_ncc] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dichvuhanghoa]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dichvuhanghoa](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[phanloai] [varchar](50) NULL,
	[barcode] [varchar](100) NULL,
	[donvitinh] [varchar](50) NULL,
	[giasi] [int] NULL,
	[giale] [int] NULL,
	[trongluong] [int] NULL,
 CONSTRAINT [PK_Materials_goods_other] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NOT NULL,
	[sodienthoai] [int] NULL,
	[diachi] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mathue] [nchar](10) NULL,
	[manganhang] [varchar](50) NULL,
	[chuthich] [varchar](50) NULL,
	[ngaysinhnhat] [varchar](50) NULL,
	[gioitinh] [bit] NULL,
	[diemthuong] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lenhsanxuat]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lenhsanxuat](
	[ma] [varchar](50) NOT NULL,
	[ngay] [varchar](50) NULL,
	[chugiai] [varchar](50) NULL,
	[tinhtrang] [varchar](50) NULL,
 CONSTRAINT [PK_Production_order] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lichsu]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lichsu](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[thoigian] [varchar](50) NULL,
	[phieu] [varchar](50) NULL,
	[nghiepvu] [varchar](50) NULL,
	[diengiai] [varchar](50) NULL,
	[gia] [varchar](50) NULL,
	[tentaikhoan_admin] [varchar](50) NULL,
 CONSTRAINT [PK_history] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[sodienthoai] [varchar](50) NULL,
	[diachi] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[thue] [int] NULL,
	[manganhang] [int] NULL,
	[chuthich] [varchar](50) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhomhanghoa]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhomhanghoa](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
 CONSTRAINT [PK_group_goods] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noidung_chuyenhang]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noidung_chuyenhang](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[donvitinh] [varchar](50) NULL,
	[soluong] [int] NULL,
	[gia] [int] NULL,
	[thanhgia] [int] NULL,
	[machuyenhang] [varchar](50) NULL,
 CONSTRAINT [PK_Content_tranfer] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noidung_nhapxuat]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noidung_nhapxuat](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[donvitinh] [varchar](50) NULL,
	[soluong] [int] NULL,
	[gia] [int] NULL,
	[chietkhau] [int] NULL,
	[thanhgia] [int] NULL,
	[maphieunhapxuat] [varchar](50) NULL,
	[mahanghoa] [varchar](50) NULL,
 CONSTRAINT [PK_Content_phieu_nhap_xuat] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noidung_nhomhang]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noidung_nhomhang](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[mahanghoa] [varchar](50) NULL,
	[manhomhang] [varchar](50) NULL,
 CONSTRAINT [PK_Conten_group] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noidung_phieudat_baogia]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noidung_phieudat_baogia](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[donvitinh] [varchar](50) NULL,
	[soluong] [int] NULL,
	[gia] [int] NULL,
	[chietkhau] [int] NULL,
	[thanhgia] [int] NULL,
	[maphieubaogia] [varchar](50) NULL,
	[maphieudathang] [varchar](50) NULL,
 CONSTRAINT [PK_noidung_phieudat_baogia] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noidung_thanhpham_lenhsx]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noidung_thanhpham_lenhsx](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[soluong] [int] NULL,
	[gia] [int] NULL,
	[donvitinh] [varchar](50) NULL,
	[malenhsanxuat] [varchar](50) NULL,
 CONSTRAINT [PK_Content_tp_production_order] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieubaogia]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieubaogia](
	[ma] [varchar](50) NOT NULL,
	[ngay] [varchar](50) NULL,
	[khachhang] [varchar](50) NULL,
	[diachi] [varchar](50) NULL,
	[sodienthoai] [int] NULL,
	[nguoinhan] [varchar](50) NULL,
	[chugiai] [varchar](50) NULL,
 CONSTRAINT [PK_Phieu_bao_gia] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieudathang]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieudathang](
	[ma] [varchar](50) NOT NULL,
	[ngay] [varchar](50) NULL,
	[khachhang] [varchar](50) NULL,
	[diachi] [varchar](50) NULL,
	[sodienthoai] [int] NULL,
	[nguoinhan] [varchar](50) NULL,
	[nguoiban] [varchar](50) NULL,
	[chugiai] [varchar](50) NULL,
	[tukho] [varchar](50) NULL,
 CONSTRAINT [PK_Phieu_dat_hang] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieunhapxuat]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhapxuat](
	[ma] [varchar](50) NOT NULL,
	[ngay] [varchar](50) NULL,
	[nhacungcap] [varchar](50) NULL,
	[khachhang] [varchar](50) NULL,
	[diachi] [varchar](50) NULL,
	[kieu_nhap_hay_xuat] [varchar](50) NULL,
	[nguoinhap] [varchar](50) NULL,
	[kieuthanhtoan] [varchar](50) NULL,
	[kho] [varchar](50) NULL,
	[owed] [int] NULL,
	[dathanhtoanbaonhieutien] [int] NULL,
	[nguoigiao] [varchar](50) NULL,
	[tinhtrangphieu] [varchar](50) NULL,
	[chugiai] [varchar](50) NULL,
	[makhachhang] [varchar](50) NULL,
	[manhacungcap] [varchar](50) NULL,
 CONSTRAINT [PK_Phieu_nhap_xuât] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sodu]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sodu](
	[ma] [int] NOT NULL,
	[sodu] [int] NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tainguyen_chohanghoa]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tainguyen_chohanghoa](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[gia] [int] NULL,
	[soluong] [int] NULL,
	[thanhgia] [int] NULL,
	[mahanghoa] [varchar](50) NULL,
 CONSTRAINT [PK_Materials_for_goods] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tainguyen_theolenhsx]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tainguyen_theolenhsx](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[donvitinh] [varchar](50) NULL,
	[soluong_tren1tp] [int] NULL,
	[soluong] [int] NULL,
	[gia] [int] NULL,
	[malenhsanxuat] [varchar](50) NULL,
 CONSTRAINT [PK_Materail_for_production_order] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thekho]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thekho](
	[ma] [varchar](50) NOT NULL,
	[ten] [varchar](50) NULL,
	[donvitinh] [varchar](50) NULL,
	[soluongton] [int] NULL,
	[giatriton] [int] NULL,
	[vonsanxuat] [int] NULL,
	[trongluong] [nchar](10) NULL,
	[makho] [varchar](50) NULL,
 CONSTRAINT [PK_card_warehouse] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtinkho]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtinkho](
	[ma] [varchar](50) NOT NULL,
	[diachi] [varchar](50) NULL,
 CONSTRAINT [PK_Warehouse_info] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thu]    Script Date: 06/13/2021 12:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thu](
	[ma] [varchar](50) NOT NULL,
	[ngay] [varchar](50) NULL,
	[doituong] [varchar](50) NULL,
	[gia] [int] NULL,
	[chugiai] [varchar](50) NULL,
	[nguoithu] [varchar](50) NULL,
	[diachi] [varchar](50) NULL,
 CONSTRAINT [PK_Thu_and_chi] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[noidung_chuyenhang]  WITH CHECK ADD  CONSTRAINT [FK_Content_tranfer_TraferWarehouse] FOREIGN KEY([machuyenhang])
REFERENCES [dbo].[chuyenkho] ([ma])
GO
ALTER TABLE [dbo].[noidung_chuyenhang] CHECK CONSTRAINT [FK_Content_tranfer_TraferWarehouse]
GO
ALTER TABLE [dbo].[noidung_nhapxuat]  WITH CHECK ADD  CONSTRAINT [FK_Content_phieu_nhap_xuat_Materials_goods_other] FOREIGN KEY([mahanghoa])
REFERENCES [dbo].[dichvuhanghoa] ([ma])
GO
ALTER TABLE [dbo].[noidung_nhapxuat] CHECK CONSTRAINT [FK_Content_phieu_nhap_xuat_Materials_goods_other]
GO
ALTER TABLE [dbo].[noidung_nhapxuat]  WITH CHECK ADD  CONSTRAINT [FK_Content_phieu_nhap_xuat_Phieu_nhap_xuât] FOREIGN KEY([maphieunhapxuat])
REFERENCES [dbo].[phieunhapxuat] ([ma])
GO
ALTER TABLE [dbo].[noidung_nhapxuat] CHECK CONSTRAINT [FK_Content_phieu_nhap_xuat_Phieu_nhap_xuât]
GO
ALTER TABLE [dbo].[noidung_nhomhang]  WITH CHECK ADD  CONSTRAINT [FK_Conten_group_group_goods] FOREIGN KEY([manhomhang])
REFERENCES [dbo].[nhomhanghoa] ([ma])
GO
ALTER TABLE [dbo].[noidung_nhomhang] CHECK CONSTRAINT [FK_Conten_group_group_goods]
GO
ALTER TABLE [dbo].[noidung_nhomhang]  WITH CHECK ADD  CONSTRAINT [FK_Conten_group_Materials_goods_other] FOREIGN KEY([mahanghoa])
REFERENCES [dbo].[dichvuhanghoa] ([ma])
GO
ALTER TABLE [dbo].[noidung_nhomhang] CHECK CONSTRAINT [FK_Conten_group_Materials_goods_other]
GO
ALTER TABLE [dbo].[noidung_phieudat_baogia]  WITH CHECK ADD  CONSTRAINT [FK_noidung_phieudat_baogia_Phieu_bao_gia] FOREIGN KEY([maphieubaogia])
REFERENCES [dbo].[phieubaogia] ([ma])
GO
ALTER TABLE [dbo].[noidung_phieudat_baogia] CHECK CONSTRAINT [FK_noidung_phieudat_baogia_Phieu_bao_gia]
GO
ALTER TABLE [dbo].[noidung_phieudat_baogia]  WITH CHECK ADD  CONSTRAINT [FK_noidung_phieudat_baogia_Phieu_dat_hang] FOREIGN KEY([maphieudathang])
REFERENCES [dbo].[phieudathang] ([ma])
GO
ALTER TABLE [dbo].[noidung_phieudat_baogia] CHECK CONSTRAINT [FK_noidung_phieudat_baogia_Phieu_dat_hang]
GO
ALTER TABLE [dbo].[noidung_thanhpham_lenhsx]  WITH CHECK ADD  CONSTRAINT [FK_Content_tp_production_order_Production_order] FOREIGN KEY([malenhsanxuat])
REFERENCES [dbo].[lenhsanxuat] ([ma])
GO
ALTER TABLE [dbo].[noidung_thanhpham_lenhsx] CHECK CONSTRAINT [FK_Content_tp_production_order_Production_order]
GO
ALTER TABLE [dbo].[phieunhapxuat]  WITH CHECK ADD  CONSTRAINT [FK_Phieu_nhap_xuât_Customer] FOREIGN KEY([makhachhang])
REFERENCES [dbo].[khachhang] ([ma])
GO
ALTER TABLE [dbo].[phieunhapxuat] CHECK CONSTRAINT [FK_Phieu_nhap_xuât_Customer]
GO
ALTER TABLE [dbo].[phieunhapxuat]  WITH CHECK ADD  CONSTRAINT [FK_Phieu_nhap_xuât_NCC] FOREIGN KEY([manhacungcap])
REFERENCES [dbo].[nhacungcap] ([ma])
GO
ALTER TABLE [dbo].[phieunhapxuat] CHECK CONSTRAINT [FK_Phieu_nhap_xuât_NCC]
GO
ALTER TABLE [dbo].[tainguyen_chohanghoa]  WITH CHECK ADD  CONSTRAINT [FK_Materials_for_goods_Materials_goods_other] FOREIGN KEY([mahanghoa])
REFERENCES [dbo].[dichvuhanghoa] ([ma])
GO
ALTER TABLE [dbo].[tainguyen_chohanghoa] CHECK CONSTRAINT [FK_Materials_for_goods_Materials_goods_other]
GO
ALTER TABLE [dbo].[tainguyen_theolenhsx]  WITH CHECK ADD  CONSTRAINT [FK_Materail_for_production_order_Content_tp_production_order] FOREIGN KEY([malenhsanxuat])
REFERENCES [dbo].[noidung_thanhpham_lenhsx] ([ma])
GO
ALTER TABLE [dbo].[tainguyen_theolenhsx] CHECK CONSTRAINT [FK_Materail_for_production_order_Content_tp_production_order]
GO
ALTER TABLE [dbo].[thekho]  WITH CHECK ADD  CONSTRAINT [FK_card_warehouse_Warehouse_info] FOREIGN KEY([makho])
REFERENCES [dbo].[thongtinkho] ([ma])
GO
ALTER TABLE [dbo].[thekho] CHECK CONSTRAINT [FK_card_warehouse_Warehouse_info]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'khi dùng tạo phiếu nhập theo NVL lệnh sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'noidung_nhapxuat', @level2type=N'COLUMN',@level2name=N'mahanghoa'
GO
