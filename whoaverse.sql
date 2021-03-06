USE [whoaverse]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[RegistrationDateTime] [datetime] NOT NULL,
	[Partner] [bit] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Badges]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badges](
	[BadgeId] [nvarchar](50) NOT NULL,
	[BadgeGraphics] [nvarchar](50) NOT NULL,
	[BadgeTitle] [nvarchar](300) NOT NULL,
	[BadgeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Badges] PRIMARY KEY CLUSTERED 
(
	[BadgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banneddomains]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banneddomains](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hostname] [nvarchar](50) NOT NULL,
	[Added_by] [nvarchar](50) NOT NULL,
	[Added_on] [datetime] NOT NULL,
	[Reason] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Banneddomains] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bannedusers]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bannedusers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Date_banned] [datetime] NOT NULL,
	[Reason] [nvarchar](50) NOT NULL,
	[Banned_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bannedusers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Commentreplynotifications]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commentreplynotifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NOT NULL,
	[SubmissionId] [int] NOT NULL,
	[Recipient] [nvarchar](50) NOT NULL,
	[Sender] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](200) NOT NULL,
	[Body] [nvarchar](4000) NOT NULL,
	[Status] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Markedasunread] [bit] NOT NULL,
	[Subverse] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Commentreplynotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Votes] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CommentContent] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
	[LastEditDate] [datetime] NULL,
	[MessageId] [int] NULL,
	[Likes] [bigint] NOT NULL CONSTRAINT [DF_Comments_Likes]  DEFAULT ((1)),
	[Dislikes] [bigint] NOT NULL CONSTRAINT [DF_Comments_Dislikes]  DEFAULT ((0)),
	[ParentId] [int] NULL,
	[Anonymized] [bit] NOT NULL CONSTRAINT [DF_Comments_Anonymized]  DEFAULT ((0)),
	[IsDistinguished] [bit] NOT NULL CONSTRAINT [DF_Comments_IsDistinguished]  DEFAULT ((0)),
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Commentsavingtracker]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commentsavingtracker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Commentsavingtracker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Commentvotingtracker]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commentvotingtracker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[VoteStatus] [int] NULL,
	[Timestamp] [datetime] NULL,
	[ClientIpAddress] [nvarchar](90) NULL,
 CONSTRAINT [PK_Commentvotingtracker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Defaultsubverses]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Defaultsubverses](
	[name] [nvarchar](20) NOT NULL,
	[position] [int] NOT NULL,
 CONSTRAINT [PK_Defaultsubverses] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Featuredsubs]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Featuredsubs](
	[Feature_id] [int] IDENTITY(1,1) NOT NULL,
	[Subname] [nvarchar](20) NOT NULL,
	[Featured_by] [nvarchar](50) NOT NULL,
	[Featured_on] [datetime] NOT NULL,
 CONSTRAINT [PK_Featuredsubs] PRIMARY KEY CLUSTERED 
(
	[Feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Votes] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MessageContent] [nvarchar](max) NULL,
	[Date] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
	[Linkdescription] [nvarchar](200) NULL,
	[Title] [nvarchar](200) NULL,
	[Rank] [float] NOT NULL CONSTRAINT [DF_Messages_Rank]  DEFAULT ((0)),
	[Subverse] [nvarchar](20) NULL,
	[Likes] [bigint] NOT NULL CONSTRAINT [DF_Messages_Likes]  DEFAULT ((1)),
	[Dislikes] [bigint] NOT NULL CONSTRAINT [DF_Messages_Dislikes]  DEFAULT ((0)),
	[Thumbnail] [nchar](40) NULL,
	[LastEditDate] [datetime] NULL,
	[FlairLabel] [nvarchar](50) NULL,
	[FlairCss] [nvarchar](50) NULL,
	[Anonymized] [bit] NOT NULL CONSTRAINT [DF_Messages_Anonymized]  DEFAULT ((0)),
	[Views] [float] NOT NULL CONSTRAINT [DF_Messages_Views]  DEFAULT ((1)),
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moderatorinvitations]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderatorinvitations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sent_by] [nvarchar](50) NOT NULL,
	[Sent_on] [datetime] NOT NULL,
	[Sent_to] [nvarchar](50) NOT NULL,
	[Subverse] [nvarchar](50) NOT NULL,
	[Power] [int] NOT NULL,
 CONSTRAINT [PK_Moderatorinvitations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PartnerInformations]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerInformations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PartnerPaymentForm] [nvarchar](max) NULL,
	[PartnerBankAccountNumber] [nvarchar](max) NULL,
	[PartnerNameOfAccountHolder] [nvarchar](max) NULL,
	[PartnerSwiftCode] [nvarchar](max) NULL,
	[PartnerBankName] [nvarchar](max) NULL,
	[PartnerIFSC] [nvarchar](max) NULL,
	[PartnerBIK] [nvarchar](max) NULL,
	[PartnerPaymentCurrency] [nvarchar](max) NULL,
	[PartnerPhoneNumber] [nvarchar](max) NULL,
	[PartnerPayeeName] [nvarchar](max) NULL,
	[PartnerCity] [nvarchar](max) NULL,
	[PartnerCountry] [nvarchar](max) NULL,
	[PartnerZip] [nvarchar](max) NULL,
	[PartnerStreet] [nvarchar](max) NULL,
	[PartnerLastPaymentDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PartnerInformations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Postreplynotifications]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postreplynotifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NOT NULL,
	[SubmissionId] [int] NOT NULL,
	[Recipient] [nvarchar](50) NOT NULL,
	[Sender] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](200) NOT NULL,
	[Body] [nvarchar](4000) NOT NULL,
	[Status] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Markedasunread] [bit] NOT NULL,
	[Subverse] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Postreplynotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Privatemessages]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privatemessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [nvarchar](50) NOT NULL,
	[Recipient] [nvarchar](50) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Body] [nvarchar](4000) NOT NULL,
	[Status] [bit] NOT NULL,
	[Markedasunread] [bit] NOT NULL,
 CONSTRAINT [PK_Privatemessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotedsubmissions]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotedsubmissions](
	[promoted_submission_id] [int] NOT NULL,
	[promoted_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Promotedsubmissions] PRIMARY KEY CLUSTERED 
(
	[promoted_submission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Savingtracker]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Savingtracker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MessageId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Savingtracker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionId] [nvarchar](88) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Expires] [datetime] NOT NULL,
	[LockDate] [datetime] NOT NULL,
	[LockCookie] [int] NOT NULL,
	[Locked] [bit] NOT NULL,
	[SessionItem] [image] NULL,
	[Flags] [int] NOT NULL,
	[Timeout] [int] NOT NULL,
 CONSTRAINT [PK_Sessions] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sessiontracker]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessiontracker](
	[SessionId] [nvarchar](90) NOT NULL,
	[Subverse] [nvarchar](20) NOT NULL,
	[Timestamp] [datetime] NOT NULL CONSTRAINT [DF_Sessiontracker_Timestamp]  DEFAULT (getdate()),
 CONSTRAINT [PK_Sessiontracker_1] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC,
	[Subverse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stickiedsubmissions]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stickiedsubmissions](
	[Submission_id] [int] NOT NULL,
	[Subversename] [nvarchar](20) NOT NULL,
	[Stickied_by] [nvarchar](50) NOT NULL,
	[Stickied_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Stickiedsubmissions] PRIMARY KEY CLUSTERED 
(
	[Submission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubmissionRemovalLog]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubmissionRemovalLog](
	[SubmissionId] [int] NOT NULL,
	[Moderator] [nvarchar](50) NOT NULL,
	[RemovalTimestamp] [datetime] NOT NULL,
	[ReasonForRemoval] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SubmissionRemovalLog] PRIMARY KEY CLUSTERED 
(
	[SubmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubverseName] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubverseAdmins]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubverseAdmins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubverseName] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Power] [int] NOT NULL,
	[Added_by] [nvarchar](50) NULL,
	[Added_on] [datetime] NULL,
 CONSTRAINT [PK_SubverseAdmins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubverseBans]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubverseBans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubverseName] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[BannedBy] [nvarchar](50) NOT NULL,
	[BanAddedOn] [datetime] NOT NULL,
	[BanReason] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SubverseBans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subverseflairsettings]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subverseflairsettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subversename] [nvarchar](20) NOT NULL,
	[Label] [nvarchar](50) NULL,
	[CssClass] [nvarchar](50) NULL,
 CONSTRAINT [PK_SubverseFlairSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subverses]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subverses](
	[name] [nvarchar](20) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[description] [nvarchar](500) NULL,
	[sidebar] [nvarchar](4000) NULL,
	[submission_text] [nvarchar](500) NULL,
	[language] [nvarchar](10) NULL,
	[type] [nvarchar](10) NOT NULL,
	[label_submit_new_link] [nvarchar](50) NULL,
	[label_sumit_new_selfpost] [nvarchar](50) NULL,
	[spam_filter_links] [nvarchar](10) NULL,
	[spam_filter_selfpost] [nvarchar](10) NULL,
	[spam_filter_comments] [nvarchar](10) NULL,
	[rated_adult] [bit] NOT NULL CONSTRAINT [DF_Subverses_rated_adult]  DEFAULT ((0)),
	[allow_default] [bit] NOT NULL CONSTRAINT [DF_Subverses_allow_default]  DEFAULT ((1)),
	[enable_thumbnails] [bit] NOT NULL CONSTRAINT [DF_Subverses_enable_thumbnails]  DEFAULT ((1)),
	[exclude_sitewide_bans] [bit] NOT NULL CONSTRAINT [DF_Subverses_exclude_sitewide_bans]  DEFAULT ((0)),
	[traffic_stats_public] [bit] NULL CONSTRAINT [DF_Subverses_traffic_stats_public]  DEFAULT ((0)),
	[minutes_to_hide_comments] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[stylesheet] [nvarchar](max) NULL,
	[subscribers] [int] NULL,
	[private_subverse] [bit] NOT NULL CONSTRAINT [DF_Subverses_private]  DEFAULT ((0)),
	[authorized_submitters_only] [bit] NOT NULL CONSTRAINT [DF_Subverses_authorized_submitters_only]  DEFAULT ((0)),
	[anonymized_mode] [bit] NOT NULL CONSTRAINT [DF_Subverses_anonymized_mode]  DEFAULT ((0)),
	[last_submission_received] [datetime] NULL,
	[minimumdownvoteccp] [int] NOT NULL CONSTRAINT [DF_Subverses_minimumccpfordownvotes]  DEFAULT ((0)),
 CONSTRAINT [PK_Subverses] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Survey]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey](
	[Username] [nvarchar](50) NOT NULL,
	[Interested_in_content_creation] [bit] NOT NULL,
	[Interested_in_commenting] [bit] NOT NULL,
	[Interested_in_donating_earnings] [bit] NOT NULL,
	[Preferred_payment_method] [nvarchar](50) NOT NULL,
	[Interested_in_bitcoin_payout] [bit] NOT NULL,
	[Country] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Date_submitted] [datetime] NOT NULL,
	[Wants_to_be_contacted_at_service_launch] [bit] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Wants_to_subscribe_to_whoaverse_news] [bit] NOT NULL,
 CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Userbadges]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userbadges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[BadgeId] [nvarchar](50) NOT NULL,
	[Awarded] [datetime] NOT NULL,
 CONSTRAINT [PK_Userbadges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Userpreferences]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userpreferences](
	[Username] [nvarchar](50) NOT NULL,
	[Disable_custom_css] [bit] NOT NULL,
	[Night_mode] [bit] NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
	[Clicking_mode] [bit] NOT NULL,
	[Enable_adult_content] [bit] NOT NULL,
	[Public_votes] [bit] NOT NULL,
	[Public_subscriptions] [bit] NOT NULL CONSTRAINT [DF_Userpreferences_Public_subscriptions]  DEFAULT ((0)),
	[Topmenu_from_subscriptions] [bit] NOT NULL CONSTRAINT [DF_Userpreferences_Topmenu_from_subscriptions]  DEFAULT ((1)),
	[Shortbio] [nvarchar](100) NULL,
	[Avatar] [nvarchar](50) NULL,
 CONSTRAINT [PK_Userpreferences] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Userscore]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userscore](
	[Username] [nvarchar](50) NOT NULL,
	[CCP] [int] NOT NULL,
	[SCP] [int] NOT NULL,
 CONSTRAINT [PK_Userscore] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usersetdefinitions]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usersetdefinitions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Set_id] [int] NOT NULL,
	[Subversename] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Usersetdefinitions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usersets]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usersets](
	[Set_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Created_by] [nvarchar](20) NOT NULL,
	[Created_on] [datetime] NOT NULL,
	[Public] [bit] NOT NULL CONSTRAINT [DF_Usersets_Public]  DEFAULT ((1)),
	[Subscribers] [int] NOT NULL CONSTRAINT [DF_Usersets_Subscribers]  DEFAULT ((1)),
	[Default] [bit] NOT NULL CONSTRAINT [DF_Usersets_Default]  DEFAULT ((0)),
 CONSTRAINT [PK_Usersets] PRIMARY KEY CLUSTERED 
(
	[Set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usersetsubscriptions]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usersetsubscriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Set_id] [int] NOT NULL,
	[Order] [int] NOT NULL CONSTRAINT [DF_Usersetsubscriptions_Order]  DEFAULT ((0)),
	[Username] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Usersetsubscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Viewstatistics]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viewstatistics](
	[submissionId] [int] NOT NULL,
	[viewerId] [nvarchar](90) NOT NULL,
 CONSTRAINT [PK_Viewstatistics] PRIMARY KEY CLUSTERED 
(
	[submissionId] ASC,
	[viewerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Votingtracker]    Script Date: 2015-05-05 17:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votingtracker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MessageId] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[VoteStatus] [int] NULL,
	[Timestamp] [datetime] NULL,
	[ClientIpAddress] [nvarchar](90) NULL,
 CONSTRAINT [PK_Votingtracker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Survey] ADD  CONSTRAINT [DF_Survey_Interested_in_content_creation]  DEFAULT ((0)) FOR [Interested_in_content_creation]
GO
ALTER TABLE [dbo].[Survey] ADD  CONSTRAINT [DF_Survey_Interested_in_commenting]  DEFAULT ((0)) FOR [Interested_in_commenting]
GO
ALTER TABLE [dbo].[Survey] ADD  CONSTRAINT [DF_Survey_Interested_in_donating_earnings]  DEFAULT ((0)) FOR [Interested_in_donating_earnings]
GO
ALTER TABLE [dbo].[Survey] ADD  CONSTRAINT [DF_Survey_Interested_in_bitcoin_payout]  DEFAULT ((0)) FOR [Interested_in_bitcoin_payout]
GO
ALTER TABLE [dbo].[Survey] ADD  CONSTRAINT [DF_Survey_Wants_to_be_contacted_at_service_launch]  DEFAULT ((0)) FOR [Wants_to_be_contacted_at_service_launch]
GO
ALTER TABLE [dbo].[Survey] ADD  CONSTRAINT [DF_Survey_Wants_to_subscribe_to_whoaverse_news]  DEFAULT ((0)) FOR [Wants_to_subscribe_to_whoaverse_news]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Messages]
GO
ALTER TABLE [dbo].[Commentsavingtracker]  WITH CHECK ADD  CONSTRAINT [FK_Commentsavingtracker_Comments] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comments] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Commentsavingtracker] CHECK CONSTRAINT [FK_Commentsavingtracker_Comments]
GO
ALTER TABLE [dbo].[Commentvotingtracker]  WITH NOCHECK ADD  CONSTRAINT [FK_Commentvotingtracker_Comments] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comments] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Commentvotingtracker] CHECK CONSTRAINT [FK_Commentvotingtracker_Comments]
GO
ALTER TABLE [dbo].[Defaultsubverses]  WITH CHECK ADD  CONSTRAINT [FK_Defaultsubverses_Subverses] FOREIGN KEY([name])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Defaultsubverses] CHECK CONSTRAINT [FK_Defaultsubverses_Subverses]
GO
ALTER TABLE [dbo].[Featuredsubs]  WITH CHECK ADD  CONSTRAINT [FK_Featuredsubs_Subverses] FOREIGN KEY([Subname])
REFERENCES [dbo].[Subverses] ([name])
GO
ALTER TABLE [dbo].[Featuredsubs] CHECK CONSTRAINT [FK_Featuredsubs_Subverses]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Subverses] FOREIGN KEY([Subverse])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Subverses]
GO
ALTER TABLE [dbo].[Savingtracker]  WITH CHECK ADD  CONSTRAINT [FK_Savingtracker_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Savingtracker] CHECK CONSTRAINT [FK_Savingtracker_Messages]
GO
ALTER TABLE [dbo].[Stickiedsubmissions]  WITH CHECK ADD  CONSTRAINT [FK_Stickiedsubmissions_Messages] FOREIGN KEY([Submission_id])
REFERENCES [dbo].[Messages] ([Id])
GO
ALTER TABLE [dbo].[Stickiedsubmissions] CHECK CONSTRAINT [FK_Stickiedsubmissions_Messages]
GO
ALTER TABLE [dbo].[Stickiedsubmissions]  WITH CHECK ADD  CONSTRAINT [FK_Stickiedsubmissions_Subverses] FOREIGN KEY([Subversename])
REFERENCES [dbo].[Subverses] ([name])
GO
ALTER TABLE [dbo].[Stickiedsubmissions] CHECK CONSTRAINT [FK_Stickiedsubmissions_Subverses]
GO
ALTER TABLE [dbo].[SubmissionRemovalLog]  WITH CHECK ADD  CONSTRAINT [FK_SubmissionRemovalLog_Messages] FOREIGN KEY([SubmissionId])
REFERENCES [dbo].[Messages] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubmissionRemovalLog] CHECK CONSTRAINT [FK_SubmissionRemovalLog_Messages]
GO
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Subscriptions_Subverses] FOREIGN KEY([SubverseName])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subscriptions] CHECK CONSTRAINT [FK_Subscriptions_Subverses]
GO
ALTER TABLE [dbo].[SubverseAdmins]  WITH CHECK ADD  CONSTRAINT [FK_SubverseAdmins_Subverses] FOREIGN KEY([SubverseName])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubverseAdmins] CHECK CONSTRAINT [FK_SubverseAdmins_Subverses]
GO
ALTER TABLE [dbo].[SubverseBans]  WITH CHECK ADD  CONSTRAINT [FK_SubverseBans_Subverses] FOREIGN KEY([SubverseName])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubverseBans] CHECK CONSTRAINT [FK_SubverseBans_Subverses]
GO
ALTER TABLE [dbo].[Subverseflairsettings]  WITH CHECK ADD  CONSTRAINT [FK_Subverseflairsettings_Subverses1] FOREIGN KEY([Subversename])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subverseflairsettings] CHECK CONSTRAINT [FK_Subverseflairsettings_Subverses1]
GO
ALTER TABLE [dbo].[Userbadges]  WITH CHECK ADD  CONSTRAINT [FK_Userbadges_Badges] FOREIGN KEY([BadgeId])
REFERENCES [dbo].[Badges] ([BadgeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Userbadges] CHECK CONSTRAINT [FK_Userbadges_Badges]
GO
ALTER TABLE [dbo].[Usersetdefinitions]  WITH CHECK ADD  CONSTRAINT [FK_Usersetdefinitions_Subverses] FOREIGN KEY([Subversename])
REFERENCES [dbo].[Subverses] ([name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usersetdefinitions] CHECK CONSTRAINT [FK_Usersetdefinitions_Subverses]
GO
ALTER TABLE [dbo].[Usersetdefinitions]  WITH CHECK ADD  CONSTRAINT [FK_Usersetdefinitions_Usersets] FOREIGN KEY([Set_id])
REFERENCES [dbo].[Usersets] ([Set_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usersetdefinitions] CHECK CONSTRAINT [FK_Usersetdefinitions_Usersets]
GO
ALTER TABLE [dbo].[Usersetsubscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Usersetsubscriptions_Usersets] FOREIGN KEY([Set_id])
REFERENCES [dbo].[Usersets] ([Set_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usersetsubscriptions] CHECK CONSTRAINT [FK_Usersetsubscriptions_Usersets]
GO
ALTER TABLE [dbo].[Viewstatistics]  WITH CHECK ADD  CONSTRAINT [FK_Viewstatistics_Messages] FOREIGN KEY([submissionId])
REFERENCES [dbo].[Messages] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Viewstatistics] CHECK CONSTRAINT [FK_Viewstatistics_Messages]
GO
ALTER TABLE [dbo].[Votingtracker]  WITH NOCHECK ADD  CONSTRAINT [FK_Votingtracker_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
GO
ALTER TABLE [dbo].[Votingtracker] NOCHECK CONSTRAINT [FK_Votingtracker_Messages]
GO
