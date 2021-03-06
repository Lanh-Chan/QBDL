USE [master]
GO
/****** Object:  Database [QL_DatTourDuLich]    Script Date: 8/8/2021 12:19:57 PM ******/
CREATE DATABASE [QL_DatTourDuLich]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_DatTourDuLich', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QL_DatTourDuLich.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_DatTourDuLich_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QL_DatTourDuLich_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QL_DatTourDuLich] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_DatTourDuLich].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_DatTourDuLich] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_DatTourDuLich] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_DatTourDuLich] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_DatTourDuLich] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_DatTourDuLich] SET  MULTI_USER 
GO
ALTER DATABASE [QL_DatTourDuLich] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_DatTourDuLich] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_DatTourDuLich] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_DatTourDuLich] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_DatTourDuLich] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_DatTourDuLich] SET QUERY_STORE = OFF
GO
USE [QL_DatTourDuLich]
GO
/****** Object:  Table [dbo].[DatTour]    Script Date: 8/8/2021 12:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTour](
	[Id] [int] NOT NULL,
	[IdTour] [int] NULL,
	[Email] [varchar](50) NULL,
	[HoTen] [nvarchar](250) NULL,
	[SDT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 8/8/2021 12:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[Id] [int] NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[ImagesUrl] [varchar](50) NULL,
	[MoTa] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HanhTrinh]    Script Date: 8/8/2021 12:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HanhTrinh](
	[IdDiaDiem] [int] NOT NULL,
	[IdTour] [int] NOT NULL,
	[STT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDiaDiem] ASC,
	[IdTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 8/8/2021 12:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Id] [int] NOT NULL,
	[LichTrinh] [nvarchar](250) NULL,
	[KhoiHanh] [date] NULL,
	[GiaThanh] [int] NULL,
	[ImagesUrl] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DatTour] ([Id], [IdTour], [Email], [HoTen], [SDT]) VALUES (1, 2, N'aaaaaaaaaaa', N'Hồng', 12345678)
INSERT [dbo].[DatTour] ([Id], [IdTour], [Email], [HoTen], [SDT]) VALUES (2, 2, N'bbbbbbbbbb', N'Lanh', 21345697)
INSERT [dbo].[DatTour] ([Id], [IdTour], [Email], [HoTen], [SDT]) VALUES (3, 1, N'cccccccccccc', N'Thảo', 322458784)
INSERT [dbo].[DatTour] ([Id], [IdTour], [Email], [HoTen], [SDT]) VALUES (4, 4, N'ddddddddd', N'Ly', 12455533)
GO
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl], [MoTa]) VALUES (1, N'Hồ Núi Cốc', N'huyện Đại Từ, cách trung tâm thành phố Thái Nguyên khoảng 15 km về phía tây', N'/Content/images/HoNuiCoc.jpg', N'Hẳn mọi người không xa lạ gì với địa danh này. Hồ Núi Cốc nằm ở phía nam huyện Đại Từ, cách trung tâm thành phố Thái Nguyên khoảng 15 km về phía tây, là một thắng cảnh thiên nhiên gắn liền với câu chuyện tình huyền thoại về chàng Cốc nàng Công. Hồ Núi Cốc là một trong những địa điểm du lịch làm nên thương hiệu cho nền du lịch Thái Nguyên. Nhưng không phải ai cũng biết rằng ngoài sự nổi tiếng về sự ưu đã của tự nhiên, Hồ Núi Cốc còn là một thiên đường vui chơi dành cho những bạn trẻ ưa thích mạo hiểm như tàu lượn siêu tốc, đĩa bay, tên lửa,...



Có thể nói rằng, đến với Hồ Núi Cốc là đến với một ngày du lịch không ngừng nghỉ từ vui chơi giải trí, đến thư giãn tham quan. Các bạn có thể bắt đầu chuyến đi bằng cách ghé thăm Huyền Thoại Cung , ngồi trên thuyền lắng nghe câu chuyện tình nàng Công và chàng Cốc. Sau đó thưởng thức cảnh sắc thiên nhiên xanh mượt trên đường đi, được trang trí bằng nhiều vườn hoa và hàng cây nhiều năm tuổi. Công viên cổ tích, công viên nước, vườn thú là sự lựa chọn tuyệt vời tiếp theo. Ngoài ra sân khấu nhạc nước là một điểm dừng chân không thể bỏ qua. Hơn nữa, khách du lịch có thể ngồi thuyền tham quan các đảo xung quanh những địa điểm vẫn còn rất hoang sơ. Đến với hồ Núi Cốc là đến với một thắng cảnh “sơn thủy hữu tình”; đến với không khí trong lành, mát mẻ; để du ngoạn trên hồ và đắm mình trong câu chuyện tình chung thủy ngàn đời trở thành huyền thoại của vùng sơn cước.')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl], [MoTa]) VALUES (2, N'Hồ Nam', N'huyện Đại Từ, Thái Nguyên', N'/Content/images/HoNam.jpg', N'Hồ Núi Cốc vốn được chia ra làm 2 phần: Hồ Nam và Hồ Bắc. Hồ Bắc hay còn gọi là Hồ Núi Cốc là nơi vui chơi giải trí đầy đủ và hiện đại. Trái ngược với nó, Hồ Nam lại là nơi còn nguyên nét sơ khai và cũng là địa điểm được sinh viên Thái Nguyên ưa chuộng chọn là nơi tụ tập bạn bè nghỉ ngơi, thư giãn cuối tuần.



Lý do lớn nhất Hồ Nam được lựa chọn nhiều xuất phát từ diện tích rộng rãi thoáng mát phù hợp cho các buổi cắm trại , picnic và tụ tập bạn bè. Đây là địa điểm lý tưởng cho các lớp từ cấp 2 cho đến đại học của Thái Nguyên hoặc thậm chí là một nhóm bạn bè nào đó đến, cùng nhau bắc bếp nướng gà, cầm đàn ngân nga câu hát, câu chuyện phiếm không có hồi kết hay thỉnh thoảng các nhóm lại sang giao lưu với nhau bằng các trò chơi dân gian vui nhộn. Dọc theo bờ hồ từ cổng cho đến tận trên tít ngọn đồi nhỏ, hôm nào cũng đầy kín các nhóm học sinh, sinh viên ngồi kín. Có lẽ người ta đến đây đơn giản vì cảnh và tình.')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl], [MoTa]) VALUES (3, N'Hang Phượng Hoàng - Suối Mỏ Gà', N'huyện Võ Nhai ( Đi dọc theo quốc lộ 1B Thái Nguyên - Lạng Sơn cách thành phố Thái Nguyên 45km)', N'/Content/images/HangPhuongHoang.jpg', N'Hang Phượng Hoàng suối Mỏ Gà là một trong những thắng cảnh nổi tiếng ở huyện Võ Nhai ( Đi dọc theo quốc lộ 1B Thái Nguyên - Lạng Sơn cách thành phố Thái Nguyên 45km). Phượng Hoàng là một hang động rộng và có vẻ đẹp kỳ lạ. Nằm ở độ cao khoảng 500m so với chân núi, Phượng Hoàng là một hang động caxto rộng lớn với vẻ đẹp kỳ lạ. Từ cửa hang động có thể bao quát hết quang cảnh cả vùng đất rộng lớn. Hai vòm cửa hang rộng và cao hàng chục mét.Trong hang không khí trong lành, mát rượi. Đáy hang có nước trong veo, lại có những bờ cát trắng mịn ven bờ nước. Trong lòng hàng, rất nhiều những nhũ đá được thiên nhiên tạo thành những cột chống trời, mẹ bồng con, vũ nữ, voi chầu… rất đẹp.



Hang gồm có ba tầng: tầng thượng là Hang Dơi, tầng giữa gọi là hang Sáng, tầng cuối là Hang Tối. Hang Sáng là hang động rộng nhất, được ánh sáng từ cửa hang chiếu vào làm các khối nhũ đá trở nên kỳ vĩ. Ngoài thưởng thức khung cảnh hùng vĩ của hang, ngay dưới chân hang cách khoảng 100 m du khách sẽ cảm nhận được không khí mát rượi từ suối Mỏ Gà chảy ra từ trong hang. Nước trong vắt, ngay cửa hang chảy ra tạo thành một thác nước nhỏ tung bọt trắng xóa.Suối nước rộng trong và mát lành, có những chỗ sâu để du khách có thể tắm mát, thư giãn giữa khung cảnh thiên nhiên với tiếng chim chóc líu lo. Và giữa thời tiết nắng nóng ngột ngạt của mùa hè thì đây đúng là điểm dừng chân nghỉ ngơi lý tưởng.')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl], [MoTa]) VALUES (4, N'Thác Mưa Rơi', N'Thần Xa, Võ Nhai, Thái Nguyên', N'/Content/images/ThacMR.jpg', N'Thác Mưa Rơi hay còn gọi là thác Nậm Rứt nhưng được người dân tộc Tày gọi thân mật là "Mưa rơi". Sở dĩ có tên gọi này là vì vào những ngày khô, đổ từ trên thác chỉ có một dòng thác nhỏ xuống sông Thần Sa tựa như những hạt mưa rơi. Vào mùa hè thác hiện ra như “Nàng công chúa trong rừng” hiện ra đôi ba ngày rồi lại ẩn mình vào trong vách núi. Thác có hình thù kỳ ảo bởi sự đan xen của nhiều dòng thác lớn, những dòng thác nhỏ phun từ kẽ đá phun nước xuống hoa lá đầy vẻ quyến rũ lạ thường.



Còn vào mùa mưa thác phun nước trắng xoá như cảnh đẹp mà bạn chỉ có thể nhìn trên phim hay tranh vẽ. Đối với những ai yêu thích được tham gia các chuyến đi du ngoạn và khám phá vẻ đẹp của thiên nhiên kỳ thú thì thác Nặm Rứt Võ Nhai sẽ là sự lựa chọn tuyệt vời dành cho bạn. Nơi đây chắc chắn sẽ là điểm đến lý tưởng cho kỳ nghỉ cuối tuần của bạn. Con thác này rất kỳ ảo bởi hình thù của nó rất đặc sắc. Bởi nó là sự đan xen của rất nhiều dòng thác lớn. Tất cả tạo nên những dòng phun nước nhỏ chảy xuống phía dưới trông càng trở nên quyến rũ và hấp dẫn. Đặc biệt, dọc theo bờ sông là những tảng đá lớn nhấp nhô để du khách có thể ngồi câu cá, ngắm cảnh.')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl], [MoTa]) VALUES (5, N'Đát Đắng', N'xã Phú Xuyên, huyện Đại Từ, tỉnh Thái Nguyên', N'/Content/images/DatDang.jpg', N'Đát Đắng khá xa đường quốc lộ, chính vì thế mà điểm hấp dẫn của nơi này chính là cảm giác được hòa mình vào thiên nhiên, được đắm chìm trong những cánh rừng nguyên sinh xanh mướt, trong một bầu không khí trong lành, mát mẻ, và những dòng thác tuôn chảy.



Muốn vào Đát Đắng du khách phải đi bộ luồn qua những rặng nứa gần sát mặt đất, có những đoạn du khách phải leo qua những con đường mòn vắt ngang sườn núi, nhưng thành quả có được là một phong cảnh bao la xanh mướt hiện ra trước mắt, những thảm cỏ xanh non mọc tự nhiên, nơi đây như một chiếu nghỉ dừng chân cho du khách sau quãng đường leo dốc khá mệt mỏi. Nằm trên cỏ, nhắm mắt lại và hít một hơi thật căng lồng ngực để cảm nhận mùi vị đặc trưng của núi rừng, cái cảm giác trong lành, yên ả lâu lâu mới gặp, nghe những âm thanh vừa quen vừa lạ, mở mắt ra là tất cả mây trời. Đứng ở đây, du khách có thể phóng tầm mắt ra xa nhìn ngắm thiên nhiên hoang sơ nhưng đẹp lạ thường. Màu xanh bao la. Điểm đâu đó là màu đỏ, vàng của hoa chuối rừng. Hoa thiều đất đỏ rực dưới chân, tưởng chừng như những bông hoa đó ngoi lên từ lòng đất, du khách sẽ có cảm giác thật thư thái, tâm hồn như hòa nhịp với thiên nhi.')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl], [MoTa]) VALUES (6, N'Đồi chè Tân Cương', N'Nằm cách trung tâm thành phố Thái Nguyên 10 km về phía Tây Nam, tập trung chủ yếu ở 3 xã Tân Cương, Phúc Xuân, Phúc Trìu', N'/Content/images/CheTC.jpg', N'Nếu bạn là một bạn trẻ yêu du lịch, khám phá và là một tín đồ của những bức ảnh đẹp thì đồi chè Tân Cương là địa điểm không thể bỏ qua. Ngoài việc được biết tới là vùng đất thanh bình có rất nhiều cảnh sắc thiên nhiên tươi đẹp thì Thái Nguyên còn được biết tới với hình ảnh những đồi chè Tân Cương xanh mướt mắt. Đây chính là một trong những điểm nhấn khiến cho du lịch Thái Nguyên ngày càng có sự cuốn hút hơn đối với du khách.



Nằm cách trung tâm thành phố Thái Nguyên 10 km về phía Tây Nam, tập trung chủ yếu ở 3 xã Tân Cương, Phúc Xuân, Phúc Trìu, với diện tích trồng chè trải rộng hơn 1.300 ha, Đồi chè Tân Cương đẹp hoàn mỹ bởi cảnh sắc, mây, trời một màu xanh trắng hòa quyện. Tất cả mọi nơi đều ngập tràn trong sắc xanh tươi mát của cỏ cây, của đồi chè nên khi tới đây tâm hồn bạn sẽ cảm thấy khoan khoái hơn. Dường như mọi khó khăn, bộn bề của cuộc sống thường ngày cũng dần theo đó mà tan biến hết. Chính bởi cảm giác này mà ngày càng có nhiều người muốn tới đây trải nghiệm hơn.')
INSERT [dbo].[DiaDiem] ([Id], [Ten], [DiaChi], [ImagesUrl], [MoTa]) VALUES (7, N'Chùa Hang', N'nằm ngay trung tâm thị trấn Chùa Hang, Đồng Hỷ, cách trung tâm thành phố Thái Nguyên khoảng 2 km', N'/Content/images/ChuaHang.jpg', N'Cùng với những địa điểm trên, Chùa Hang cũng là một điểm đến được nhiều khách du lịch lựa chọn khi ghé thăm Thái Nguyên. Chùa Hang nằm ngay trung tâm thị trấn Chùa Hang, Đồng Hỷ, cách trung tâm thành phố Thái Nguyên khoảng 2 km. Chùa Hang có tên chữ là Kim Sơn Tự, còn được gọi là “Tiên Lữ Phật Động”. Nơi đây có tiếng là chốn cửa Phật linh thiêng, trung tâm phật giáo lớn của tỉnh và là địa điểm du lịch tâm linh hấp dẫn.



Di tích thắng cảnh Chùa Hang có ba ngọn núi đá lớn, độc lập trên vùng đất bằng phẳng… Ngọn núi đứng giữa có tên là “Huyền Vũ” cao to vững trãi, hai bên là hai ngọn “Thanh Long – Bạch Hổ” vươn cao uy nghi, ba ngọn kết nối nhau bởi dải yên ngựa chừng 1000 m, phong cảnh hữu tình. Cảnh đẹp như bức tranh sơn thủy của động làm say đắm nhiều tao nhân mặc khách. Từ thời xưa, đã có các danh sĩ đến Chùa Hang, trước cảnh đẹp cảm tác nên những vần thơ bất hủ để lại cho muôn đời sau.')
GO
INSERT [dbo].[HanhTrinh] ([IdDiaDiem], [IdTour], [STT]) VALUES (1, 1, 1)
INSERT [dbo].[HanhTrinh] ([IdDiaDiem], [IdTour], [STT]) VALUES (2, 2, 2)
INSERT [dbo].[HanhTrinh] ([IdDiaDiem], [IdTour], [STT]) VALUES (3, 3, 3)
INSERT [dbo].[HanhTrinh] ([IdDiaDiem], [IdTour], [STT]) VALUES (4, 4, NULL)
GO
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (1, N'2 ngày 2 đêm', CAST(N'2021-09-01' AS Date), 2000000, N'/Content/images/HoNuiCoc.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (2, N'1 ngày', CAST(N'2021-09-03' AS Date), 1000000, N'/Content/images/HoNam.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (3, N'3 ngày 2 đêm', CAST(N'2021-09-04' AS Date), 3000000, N'/Content/images/HangPhuongHoang.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (4, N'2 ngày 1 đêm', CAST(N'2021-09-09' AS Date), 1500000, N'/Content/images/ThacMR.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (5, N'1 ngày', CAST(N'2021-09-12' AS Date), 1000000, N'/Content/images/DatDang.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (6, N'2 ngày', CAST(N'2021-10-12' AS Date), 1300000, N'/Content/images/CheTC.jpg')
INSERT [dbo].[Tour] ([Id], [LichTrinh], [KhoiHanh], [GiaThanh], [ImagesUrl]) VALUES (7, N'2 ngày 1 đêm', CAST(N'2021-12-19' AS Date), 1500000, N'/Content/images/ChuaHang.jpg')
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([IdTour])
REFERENCES [dbo].[Tour] ([Id])
GO
ALTER TABLE [dbo].[HanhTrinh]  WITH CHECK ADD FOREIGN KEY([IdDiaDiem])
REFERENCES [dbo].[DiaDiem] ([Id])
GO
ALTER TABLE [dbo].[HanhTrinh]  WITH CHECK ADD FOREIGN KEY([IdTour])
REFERENCES [dbo].[Tour] ([Id])
GO
USE [master]
GO
ALTER DATABASE [QL_DatTourDuLich] SET  READ_WRITE 
GO
