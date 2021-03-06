USE [ESB_AIO]
GO
/****** Object:  Table [dbo].[IP]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
	[CreatePerson] [varchar](250) NULL,
	[CreateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceInvokeReport]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceInvokeReport](
	[ID] [int] NOT NULL,
	[ServiceSiteID] [int] NULL,
	[FunctionName] [varchar](50) NULL,
	[ServerName] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[TotalCount] [int] NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_ServiceReport_S] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleScope]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoleScope](
	[ScopeId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[GroupId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_USERROLESCOPE] PRIMARY KEY CLUSTERED 
(
	[ScopeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ESBSysLog]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESBSysLog](
	[id] [int] NOT NULL,
	[server] [varchar](50) NOT NULL,
	[processtime] [datetime] NULL,
	[TimeSpan] [varchar](200) NULL,
	[year] [int] NULL,
	[month] [int] NULL,
	[day] [int] NULL,
	[hour] [int] NULL,
	[minute] [int] NULL,
	[description] [varchar](500) NULL,
	[requests] [int] NULL,
	[proxyrequests] [int] NULL,
	[cpuused] [numeric](18, 2) NULL,
	[memused] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ESBSysLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ESBServLog]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESBServLog](
	[id] [int] NOT NULL,
	[server] [varchar](50) NOT NULL,
	[processtime] [datetime] NULL,
	[servername] [varchar](200) NULL,
	[count] [int] NULL,
	[maxusetime] [int] NULL,
	[avgusetime] [int] NULL,
	[maxesblogicusetime] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Domain](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Description] [varchar](500) NULL,
	[CreatePerson] [varchar](250) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyPerson] [varchar](250) NULL,
	[ModifyTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusinessGroup]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessGroup](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_BUSINESSGROUP] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AIOServiceMonitor]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIOServiceMonitor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceKey] [uniqueidentifier] NOT NULL,
	[AppName] [varchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Servername] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InterfaceInvokeReport]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InterfaceInvokeReport](
	[ID] [int] NOT NULL,
	[ServiceSiteID] [int] NULL,
	[FunctionName] [varchar](50) NULL,
	[ServerName] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[TotalCount] [int] NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_ServiceReport_I] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceKey] [uniqueidentifier] NOT NULL,
	[ServiceFlag] [varchar](100) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[ServiceName] [nvarchar](100) NOT NULL,
	[ContractName] [varchar](100) NULL,
	[ServiceType] [tinyint] NOT NULL,
	[ServiceStatus] [tinyint] NOT NULL,
	[BusinessType] [tinyint] NOT NULL,
	[WsdlAddress] [varchar](500) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[LinkMan] [nvarchar](20) NOT NULL,
	[LinkManEmail] [varchar](500) NOT NULL,
	[LinkManPhone] [varchar](200) NOT NULL,
	[Principal] [nvarchar](20) NOT NULL,
	[PrincipalEmail] [varchar](500) NOT NULL,
	[PrincipalPhone] [varchar](200) NOT NULL,
	[Remark] [nvarchar](max) NULL,
	[IsDirectInvoke] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LastUpdateTime] [datetime] NULL,
	[DllUrl] [nvarchar](200) NULL,
	[MajorVersion] [int] NOT NULL,
	[MinorVersion] [int] NOT NULL,
	[IsEnableMonitor] [bit] NOT NULL,
	[InvokeType] [nvarchar](20) NULL,
	[DeptNumber] [varchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[Host] [varchar](50) NULL,
	[Environment] [tinyint] NULL,
	[PublishVersion] [varchar](10) NULL,
	[HostIP] [varchar](50) NULL,
	[GroupID] [int] NULL,
	[GroupName] [varchar](50) NULL,
	[ServerCName] [nvarchar](50) NULL,
	[ErrorTrackAppName] [varchar](200) NULL,
	[UpdateVersion] [int] NULL,
	[PlanID] [int] NULL,
	[ESBAddress] [varchar](200) NOT NULL,
	[PrivateESBAddress] [varchar](200) NOT NULL,
	[IsESBAddress] [bit] NOT NULL,
	[IsPrivateESBAddress] [bit] NOT NULL,
 CONSTRAINT [PK_SERVICE] PRIMARY KEY CLUSTERED 
(
	[ServiceKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'ServiceKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务标识，英文，具有描述意义，与版本号唯一标识一个服务，同时用于生成dll时命名空间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'ServiceFlag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务友好名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'ServiceName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'契约名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'ContractName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'ServiceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'ServiceStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'BusinessType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'WsdlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'LinkMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人邮件(多个用逗号隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'LinkManEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'LinkManPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'Principal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人邮件(多个用逗号隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'PrincipalEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'PrincipalPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'能否直接调用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'IsDirectInvoke'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'LastUpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dll生成路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'DllUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'MajorVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'MinorVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用监控' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'IsEnableMonitor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标识该服务是否被更新' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'UpdateVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'该服务计划发布ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service', @level2type=N'COLUMN',@level2name=N'PlanID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储所有服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service'
GO
/****** Object:  Table [dbo].[Server]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Server](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [varchar](50) NOT NULL,
	[Ip] [varchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Environment] [int] NULL,
 CONSTRAINT [PK_Server_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0-测试环境 1-生产环境' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Server', @level2type=N'COLUMN',@level2name=N'Environment'
GO
/****** Object:  Table [dbo].[RoleResourceRelation]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleResourceRelation](
	[RelationId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ResourceId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMenuRelation]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMenuRelation](
	[RelationId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleHandleLog]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleHandleLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[LogTxt] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ROLEHANDLELOG] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[IsInner] [bit] NOT NULL,
	[ScopeLevel] [int] NOT NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resource](
	[ResourceId] [int] IDENTITY(1,1) NOT NULL,
	[ResourceName] [varchar](500) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_RESOURCE] PRIMARY KEY CLUSTERED 
(
	[ResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[Url] [varchar](500) NULL,
	[PId] [int] NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IPDomainRelation]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPDomainRelation](
	[RelationId] [int] IDENTITY(1,1) NOT NULL,
	[IPId] [int] NOT NULL,
	[DomainId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterfaceInvokeReportDetail]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InterfaceInvokeReportDetail](
	[ID] [int] NOT NULL,
	[ServerReportId] [int] NULL,
	[TimeSpan] [varchar](200) NULL,
	[AvgTime] [float] NULL,
	[MaxTime] [float] NULL,
	[MinTime] [float] NULL,
	[Percent99Min] [float] NULL,
	[Count] [int] NULL,
	[Time] [datetime] NULL,
	[WarnTag] [int] NULL,
	[ServiceName] [varchar](500) NULL,
	[BusinessName] [varchar](50) NULL,
	[GroupName] [varchar](50) NULL,
	[SiteName] [varchar](50) NULL,
 CONSTRAINT [PK_ServiceReportDetail_I] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceInvokeReportDetail]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceInvokeReportDetail](
	[ID] [int] NOT NULL,
	[ServerReportId] [int] NULL,
	[TimeSpan] [varchar](200) NULL,
	[AvgTime] [float] NULL,
	[MaxTime] [float] NULL,
	[MinTime] [float] NULL,
	[Percent99Min] [float] NULL,
	[Count] [int] NULL,
	[Time] [datetime] NULL,
	[WarnTag] [int] NULL,
	[ServiceName] [varchar](500) NULL,
	[BusinessName] [varchar](50) NULL,
	[GroupName] [varchar](50) NULL,
	[SiteName] [varchar](50) NULL,
 CONSTRAINT [PK_ServiceReportDetail_S] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceSite]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceSite](
	[ServiceSiteID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceKey] [uniqueidentifier] NULL,
	[SiteName] [nvarchar](100) NULL,
	[ServerName] [nvarchar](100) NULL,
	[SiteAddress] [nvarchar](200) NULL,
	[RegisterTime] [date] NULL,
	[IsWork] [bit] NULL,
	[ServerStorageTable] [nvarchar](200) NULL,
	[FunctionStorageTable] [nvarchar](200) NULL,
	[ESBServerStorageTable] [nvarchar](200) NULL,
	[ESBFunctionStorageTable] [nvarchar](200) NULL,
 CONSTRAINT [PK_ServiceSite] PRIMARY KEY CLUSTERED 
(
	[ServiceSiteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceServerIP]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceServerIP](
	[ID] [int] NOT NULL,
	[ServiceReportDetailId] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Count] [int] NULL,
	[Domain] [varchar](200) NULL,
	[ServerName] [varchar](100) NULL,
	[Principal] [varchar](500) NULL,
 CONSTRAINT [PK_ServerIP_S] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceClientIP]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceClientIP](
	[ID] [int] NOT NULL,
	[ServiceReportDetailId] [int] NOT NULL,
	[IP] [varchar](50) NULL,
	[Count] [int] NULL,
	[Domain] [varchar](100) NULL,
	[ServerName] [varchar](100) NULL,
	[Principal] [varchar](500) NULL,
 CONSTRAINT [PK_ClientIP_S] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InterfaceServerIP]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InterfaceServerIP](
	[ID] [int] NOT NULL,
	[ServiceReportDetailId] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Count] [int] NULL,
	[Domain] [varchar](200) NULL,
	[ServerName] [varchar](100) NULL,
	[Principal] [varchar](500) NULL,
 CONSTRAINT [PK_ServerIP_I] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InterfaceClientIP]    Script Date: 08/05/2015 17:04:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InterfaceClientIP](
	[ID] [int] NOT NULL,
	[ServiceReportDetailId] [int] NOT NULL,
	[IP] [varchar](50) NULL,
	[Count] [int] NULL,
	[Domain] [varchar](100) NULL,
	[ServerName] [varchar](100) NULL,
	[Principal] [varchar](500) NULL,
 CONSTRAINT [PK_ClientIP_I] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__Service__Service__1FCDBCEB]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__Service__1FCDBCEB]  DEFAULT (newid()) FOR [ServiceKey]
GO
/****** Object:  Default [DF__Service__IsDirec__20C1E124]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__IsDirec__20C1E124]  DEFAULT ((0)) FOR [IsDirectInvoke]
GO
/****** Object:  Default [DF__Service__CreateT__21B6055D]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__CreateT__21B6055D]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Service__MajorVe__22AA2996]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__MajorVe__22AA2996]  DEFAULT ((1)) FOR [MajorVersion]
GO
/****** Object:  Default [DF__Service__MinorVe__239E4DCF]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__MinorVe__239E4DCF]  DEFAULT ((1)) FOR [MinorVersion]
GO
/****** Object:  Default [DF_Service_IsEnableMonitor]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF_Service_IsEnableMonitor]  DEFAULT ((0)) FOR [IsEnableMonitor]
GO
/****** Object:  Default [DF_Service_UpdateVersion]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF_Service_UpdateVersion]  DEFAULT ((1)) FOR [UpdateVersion]
GO
/****** Object:  Default [DF_Service_PlanID]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF_Service_PlanID]  DEFAULT ((0)) FOR [PlanID]
GO
/****** Object:  Default [DF__Service__ESBAddr__4D94879B]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  DEFAULT ('') FOR [ESBAddress]
GO
/****** Object:  Default [DF__Service__Private__4E88ABD4]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  DEFAULT ('') FOR [PrivateESBAddress]
GO
/****** Object:  Default [DF__Service__IsESBAd__4F7CD00D]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  DEFAULT ('1') FOR [IsESBAddress]
GO
/****** Object:  Default [DF__Service__IsPriva__5070F446]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Service] ADD  DEFAULT ('0') FOR [IsPrivateESBAddress]
GO
/****** Object:  Default [DF__Role__Status__173876EA]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF__Role__Status__173876EA]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Role__IsInner__398D8EEE]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [IsInner]
GO
/****** Object:  Default [DF__Resource__Status__145C0A3F]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Resource] ADD  CONSTRAINT [DF__Resource__Status__145C0A3F]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Menu__Status__117F9D94]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF__Menu__Status__117F9D94]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ServiceSite_RegisterTime]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[ServiceSite] ADD  CONSTRAINT [DF_ServiceSite_RegisterTime]  DEFAULT (getdate()) FOR [RegisterTime]
GO
/****** Object:  ForeignKey [FK__IPDomainR__Domai__3B40CD36]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[IPDomainRelation]  WITH CHECK ADD FOREIGN KEY([DomainId])
REFERENCES [dbo].[Domain] ([Id])
GO
/****** Object:  ForeignKey [FK__IPDomainRe__IPId__3A4CA8FD]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[IPDomainRelation]  WITH CHECK ADD FOREIGN KEY([IPId])
REFERENCES [dbo].[IP] ([Id])
GO
/****** Object:  ForeignKey [FK_ServiceReportDetail_I_ServiceReport_I]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[InterfaceInvokeReportDetail]  WITH CHECK ADD  CONSTRAINT [FK_ServiceReportDetail_I_ServiceReport_I] FOREIGN KEY([ServerReportId])
REFERENCES [dbo].[InterfaceInvokeReport] ([ID])
GO
ALTER TABLE [dbo].[InterfaceInvokeReportDetail] CHECK CONSTRAINT [FK_ServiceReportDetail_I_ServiceReport_I]
GO
/****** Object:  ForeignKey [FK_ServiceReportDetail_S_ServiceReport_S]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[ServiceInvokeReportDetail]  WITH CHECK ADD  CONSTRAINT [FK_ServiceReportDetail_S_ServiceReport_S] FOREIGN KEY([ServerReportId])
REFERENCES [dbo].[ServiceInvokeReport] ([ID])
GO
ALTER TABLE [dbo].[ServiceInvokeReportDetail] CHECK CONSTRAINT [FK_ServiceReportDetail_S_ServiceReport_S]
GO
/****** Object:  ForeignKey [FK_ServiceSite_Service]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[ServiceSite]  WITH CHECK ADD  CONSTRAINT [FK_ServiceSite_Service] FOREIGN KEY([ServiceKey])
REFERENCES [dbo].[Service] ([ServiceKey])
GO
ALTER TABLE [dbo].[ServiceSite] CHECK CONSTRAINT [FK_ServiceSite_Service]
GO
/****** Object:  ForeignKey [FK_ServerIP_S_ServiceReportDetail_S]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[ServiceServerIP]  WITH CHECK ADD  CONSTRAINT [FK_ServerIP_S_ServiceReportDetail_S] FOREIGN KEY([ServiceReportDetailId])
REFERENCES [dbo].[ServiceInvokeReportDetail] ([ID])
GO
ALTER TABLE [dbo].[ServiceServerIP] CHECK CONSTRAINT [FK_ServerIP_S_ServiceReportDetail_S]
GO
/****** Object:  ForeignKey [FK_ClientIP_S_ServiceReportDetail_S]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[ServiceClientIP]  WITH CHECK ADD  CONSTRAINT [FK_ClientIP_S_ServiceReportDetail_S] FOREIGN KEY([ServiceReportDetailId])
REFERENCES [dbo].[ServiceInvokeReportDetail] ([ID])
GO
ALTER TABLE [dbo].[ServiceClientIP] CHECK CONSTRAINT [FK_ClientIP_S_ServiceReportDetail_S]
GO
/****** Object:  ForeignKey [FK_ServerIP_I_ServiceReportDetail_I]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[InterfaceServerIP]  WITH CHECK ADD  CONSTRAINT [FK_ServerIP_I_ServiceReportDetail_I] FOREIGN KEY([ServiceReportDetailId])
REFERENCES [dbo].[InterfaceInvokeReportDetail] ([ID])
GO
ALTER TABLE [dbo].[InterfaceServerIP] CHECK CONSTRAINT [FK_ServerIP_I_ServiceReportDetail_I]
GO
/****** Object:  ForeignKey [FK_ClientIP_I_ServiceReportDetail_I]    Script Date: 08/05/2015 17:04:21 ******/
ALTER TABLE [dbo].[InterfaceClientIP]  WITH CHECK ADD  CONSTRAINT [FK_ClientIP_I_ServiceReportDetail_I] FOREIGN KEY([ServiceReportDetailId])
REFERENCES [dbo].[InterfaceInvokeReportDetail] ([ID])
GO
ALTER TABLE [dbo].[InterfaceClientIP] CHECK CONSTRAINT [FK_ClientIP_I_ServiceReportDetail_I]
GO
