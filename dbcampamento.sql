USE [master]
GO
/****** Object:  Database [dbcampamento]    Script Date: 8/23/2019 7:37:10 PM ******/
CREATE DATABASE [dbcampamento]
GO

USE [dbcampamento]
GO
/****** Object:  Table [dbo].[campamento]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[campamento](
	[idcampamento] [int] IDENTITY(1,1) NOT NULL,
	[nombrecampamento] [varchar](50) NOT NULL,
	[fechainicio] [date] NOT NULL,
	[fechafin] [date] NOT NULL,
	[cupos] [int] NOT NULL,
	[cantidadpersonas] [int] NOT NULL,
	[costos] [money] NOT NULL,
	[detalles] [varchar](1024) NULL,
 CONSTRAINT [PK_campamento] PRIMARY KEY CLUSTERED 
(
	[idcampamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cliente]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[cliente](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellidos] [varchar](40) NULL,
	[sexo] [varchar](1) NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[tipo_documento] [varchar](20) NOT NULL,
	[num_documento] [varchar](8) NOT NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](10) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[compradetalles]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[compradetalles](
	[idcompra] [int] NOT NULL,
	[idproducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[subtotal] [money] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[compras]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[compras](
	[idcompra] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[tipo_compra] [varchar](50) NOT NULL,
	[forma_pago] [varchar](20) NOT NULL,
	[idproveedor] [int] NOT NULL,
	[total] [varchar](100) NOT NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[idcompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gestionempresa]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[gestionempresa](
	[idempresa] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[num_documento] [int] NOT NULL,
	[logo] [image] NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[url] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gestionusuario]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[gestionusuario](
	[rol] [varchar](50) NOT NULL,
	[idtrabajador] [int] NOT NULL,
	[empresa] [int] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[contrasena] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inscripcion]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[inscripcion](
	[idinscripcion] [int] IDENTITY(1,1) NOT NULL,
	[fechainscripcion] [date] NOT NULL,
	[idtrabajador] [int] NOT NULL,
	[idcliente] [int] NOT NULL,
	[idcampamento] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[formadepago] [varchar](50) NOT NULL,
	[comentarios] [varchar](1000) NULL,
 CONSTRAINT [PK_inscripcion] PRIMARY KEY CLUSTERED 
(
	[idinscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[producto]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[producto](
	[idproducto] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio] [money] NOT NULL,
	[descripcion] [varchar](1024) NULL,
	[imagen] [image] NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productodetalles]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[productodetalles](
	[idinscripcion] [int] NOT NULL,
	[idproducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[subtotal] [money] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[proveedor](
	[idproveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[num_documento] [int] NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[url] [varchar](100) NOT NULL,
 CONSTRAINT [PK_proveedor_1] PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[trabajador]    Script Date: 8/23/2019 7:37:11 PM ******/
CREATE TABLE [dbo].[trabajador](
	[idtrabajador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellidos] [varchar](40) NOT NULL,
	[sexo] [varchar](1) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[num_documento] [varchar](8) NOT NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](10) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_trabajador] PRIMARY KEY CLUSTERED 
(
	[idtrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[compradetalles]  WITH CHECK ADD  CONSTRAINT [FK_compradetalles_compras] FOREIGN KEY([idcompra])
REFERENCES [dbo].[compras] ([idcompra])
GO
ALTER TABLE [dbo].[compradetalles] CHECK CONSTRAINT [FK_compradetalles_compras]
GO
ALTER TABLE [dbo].[compradetalles]  WITH CHECK ADD  CONSTRAINT [FK_compradetalles_producto] FOREIGN KEY([idproducto])
REFERENCES [dbo].[producto] ([idproducto])
GO
ALTER TABLE [dbo].[compradetalles] CHECK CONSTRAINT [FK_compradetalles_producto]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_proveedor] FOREIGN KEY([idproveedor])
REFERENCES [dbo].[proveedor] ([idproveedor])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_proveedor]
GO
ALTER TABLE [dbo].[gestionusuario]  WITH CHECK ADD  CONSTRAINT [FK_gestionusuario_trabajador] FOREIGN KEY([idtrabajador])
REFERENCES [dbo].[trabajador] ([idtrabajador])
GO
ALTER TABLE [dbo].[gestionusuario] CHECK CONSTRAINT [FK_gestionusuario_trabajador]
GO
ALTER TABLE [dbo].[inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_inscripcion_campamento1] FOREIGN KEY([idcampamento])
REFERENCES [dbo].[campamento] ([idcampamento])
GO
ALTER TABLE [dbo].[inscripcion] CHECK CONSTRAINT [FK_inscripcion_campamento1]
GO
ALTER TABLE [dbo].[inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_inscripcion_cliente] FOREIGN KEY([idcliente])
REFERENCES [dbo].[cliente] ([idcliente])
GO
ALTER TABLE [dbo].[inscripcion] CHECK CONSTRAINT [FK_inscripcion_cliente]
GO
ALTER TABLE [dbo].[inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_inscripcion_trabajador] FOREIGN KEY([idtrabajador])
REFERENCES [dbo].[trabajador] ([idtrabajador])
GO
ALTER TABLE [dbo].[inscripcion] CHECK CONSTRAINT [FK_inscripcion_trabajador]
GO
ALTER TABLE [dbo].[productodetalles]  WITH CHECK ADD  CONSTRAINT [FK_productodetalles_inscripcion] FOREIGN KEY([idinscripcion])
REFERENCES [dbo].[inscripcion] ([idinscripcion])
GO
ALTER TABLE [dbo].[productodetalles] CHECK CONSTRAINT [FK_productodetalles_inscripcion]
GO
ALTER TABLE [dbo].[productodetalles]  WITH CHECK ADD  CONSTRAINT [FK_productodetalles_producto] FOREIGN KEY([idproducto])
REFERENCES [dbo].[producto] ([idproducto])
GO
ALTER TABLE [dbo].[productodetalles] CHECK CONSTRAINT [FK_productodetalles_producto]
GO

USE [master]
GO
ALTER DATABASE [dbcampamento] SET  READ_WRITE 
GO
