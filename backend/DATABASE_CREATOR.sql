USE [Animeplex_2.0]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/4/2023 5:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Email] [nvarchar](max) NULL,
	[User_Password] [nvarchar](max) NULL,
	[User_Watched_Anime] [nvarchar](max) NULL,
	[User_Favorited_Anime] [nvarchar](max) NULL,
	[User_Cart] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
