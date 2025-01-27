USE [master]
GO
/****** Object:  Database [Tietovisa]    Script Date: 25.11.2024 14.09.30 ******/
CREATE DATABASE [Tietovisa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tietovisa', FILENAME = N'C:\Users\antti\Tietovisa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tietovisa_log', FILENAME = N'C:\Users\antti\Tietovisa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Tietovisa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tietovisa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tietovisa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tietovisa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tietovisa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tietovisa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tietovisa] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tietovisa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tietovisa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tietovisa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tietovisa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tietovisa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tietovisa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tietovisa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tietovisa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tietovisa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tietovisa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tietovisa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tietovisa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tietovisa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tietovisa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tietovisa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tietovisa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tietovisa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tietovisa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tietovisa] SET  MULTI_USER 
GO
ALTER DATABASE [Tietovisa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tietovisa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tietovisa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tietovisa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tietovisa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tietovisa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Tietovisa] SET QUERY_STORE = OFF
GO
USE [Tietovisa]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 25.11.2024 14.09.30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NOT NULL,
	[answer_text] [nvarchar](255) NOT NULL,
	[topic_info] [nvarchar](1000) NULL,
	[is_correct] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 25.11.2024 14.09.30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_text] [nvarchar](255) NOT NULL,
	[category] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[answers] ON 

INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (7, 1, N'Paris', N'Paris is the capital and most populous city of France. 
With an official estimated population of 2,102,650 residents as of 1 January 2023 in an area of more than 105 km2 (41 sq mi).', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (8, 1, N'Berlin', NULL, 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (9, 1, N'Madrid', NULL, 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (10, 1, N'Rome', NULL, 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (11, 2, N'Earth', NULL, 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (12, 2, N'Jupiter', N'Jupiter is a world of extremes. It''s the largest planet in our solar system – if it were a hollow shell, 1,000 Earths could fit inside. It''s also the oldest planet, forming from the dust and gases left over from the Sun''s formation 4.5 billion years ago. But it has the shortest day in the solar system, taking only 10.5 hours to spin around once on its axis.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (13, 2, N'Mars', NULL, 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (14, 2, N'Saturn', NULL, 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (15, 3, N'Amazon River', N'The Amazon River in South America is approximately 6,400 km (4,000 mi) long.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (16, 3, N'Nile River', N'Nile River, the longest river in the world, called the father of African rivers. 
It rises south of the Equator and flows northward through northeastern Africa to drain into the Mediterranean Sea. 
It has a length of about 4,132 miles (6,650 kilometres) and drains an area estimated at 1,293,000 square miles (3,349,000 square kilometres).', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (17, 3, N'Yangtze River', N'The Yangtze River is the longest river in Asia.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (18, 3, N'Mississippi River', N'The Mississippi River is the second-longest river in North America.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (19, 4, N'Africa', N'Africa, the second largest continent (after Asia), covering about one-fifth of the total land surface of Earth.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (20, 4, N'Asia', N'Asia is the largest continent but does not have the Sahara Desert.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (21, 4, N'Australia', N'Australia is known for the Outback, not the Sahara Desert.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (22, 4, N'South America', N'South America has the Atacama Desert, not the Sahara.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (23, 5, N'China', N'China has the largest population in the world with over 1.4 billion people.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (24, 5, N'India', N'India has the second-largest population in the world.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (25, 5, N'USA', N'The USA has the third-largest population.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (26, 5, N'Indonesia', N'Indonesia is the fourth most populous country.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (27, 6, N'Vatican City', N'With an area of 49 hectares (121 acres) and as of 2023 a population of about 764, it is the smallest state in the world both by area and by population.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (28, 6, N'Monaco', N'Monaco is the second smallest country.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (29, 6, N'San Marino', N'San Marino is among the smallest countries but not the smallest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (30, 6, N'Liechtenstein', N'Liechtenstein is small but larger than Vatican City.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (31, 7, N'H2O', N'H2O is the chemical formula for water.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (32, 7, N'O2', N'O2 is the chemical formula for oxygen.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (33, 7, N'CO2', N'CO2 is the chemical formula for carbon dioxide.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (34, 7, N'H2SO4', N'H2SO4 is the chemical formula for sulfuric acid.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (35, 8, N'299,792 km/s', N'The speed of light in a vacuum is approximately 299,792 kilometers per second.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (36, 8, N'150,000 km/s', N'150,000 km/s is approximately half the speed of light.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (37, 8, N'1,000,000 km/s', N'1,000,000 km/s is much faster than the speed of light.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (38, 8, N'500,000 km/s', N'500,000 km/s is still faster than the speed of light.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (39, 9, N'Albert Einstein', N'Albert Einstein developed the theory of relativity. The theory of relativity usually encompasses two interrelated physics theories by Albert Einstein: special relativity and general relativity, proposed and published in 1905 and 1915, respectively.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (40, 9, N'Isaac Newton', N'Isaac Newton formulated the laws of motion and universal gravitation.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (41, 9, N'Galileo Galilei', N'Galileo made pioneering observations that laid the foundation for modern physics and astronomy.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (42, 9, N'Niels Bohr', N'Niels Bohr made foundational contributions to understanding atomic structure and quantum theory.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (43, 10, N'Mitochondria', N'Mitochondria are known as the powerhouse of the cell because they generate most of the cell’s supply of ATP (adenosine triphosphate).', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (44, 10, N'Nucleus', N'The nucleus contains the cell’s genetic material.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (45, 10, N'Ribosomes', N'Ribosomes are the site of protein synthesis.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (46, 10, N'Golgi apparatus', N'The Golgi apparatus is involved in modifying, sorting, and packaging proteins.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (47, 11, N'Leonardo da Vinci', N'Mona Lisa, oil painting on a poplar wood panel by Leonardo da Vinci, probably the world’s most famous painting. It was painted sometime between 1503 and 1519, when Leonardo was living in Florence.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (48, 11, N'Vincent van Gogh', N'Vincent van Gogh painted The Starry Night.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (49, 11, N'Pablo Picasso', N'Pablo Picasso is known for works like Guernica.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (50, 11, N'Claude Monet', N'Claude Monet is known for his water lilies series.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (51, 12, N'Cubism', N'Cubism, highly influential visual arts style of the 20th century that was created principally by the artists Pablo Picasso and Georges Braque in Paris between 1907 and 1914. The Cubist style emphasized the flat, two-dimensional surface of the picture plane.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (52, 12, N'Impressionism', N'Impressionism is associated with artists like Claude Monet.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (53, 12, N'Surrealism', N'Surrealism is associated with artists like Salvador Dali.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (54, 12, N'Baroque', N'Baroque is a style associated with artists like Caravaggio.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (55, 13, N'Paris', N'The Louvre Museum, located in Paris, is the national museum and art gallery of France. It was originally constructed as a royal residence, with construction beginning under Francis I in 1546 on the site of a 12th-century fortress.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (56, 13, N'Rome', N'The Vatican Museums are located in Rome.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (57, 13, N'New York', N'The Metropolitan Museum of Art is located in New York.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (58, 13, N'London', N'The British Museum is located in London.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (59, 14, N'Michelangelo', N'David, marble sculpture executed from 1501 to 1504 by the Italian Renaissance artist Michelangelo.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (60, 14, N'Donatello', N'Donatello created a different sculpture of David.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (61, 14, N'Bernini', N'Bernini was a prominent sculptor but did not create David.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (62, 14, N'Rodin', N'Rodin is known for works like The Thinker.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (63, 15, N'Plaster', N'Fresco painting typically involves applying water-based pigments on freshly applied plaster.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (64, 15, N'Oil', N'Oil is a medium used in oil painting, not fresco.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (65, 15, N'Acrylic', N'Acrylic paint is a fast-drying paint used in contemporary art.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (66, 15, N'Charcoal', N'Charcoal is used for drawing, not painting.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (67, 16, N'George Washington', N'George Washington was the first president of the United States during April 30, 1789 – March 4, 1797.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (68, 16, N'Thomas Jefferson', N'Thomas Jefferson was the third president of the United States during March 4, 1801 – March 4, 1809.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (69, 16, N'John Adams', N'John Adams was the second president of the United States during March 4, 1797 – March 3, 1801.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (70, 16, N'James Madison', N'James Madison was the fourth president of the United States during March 4, 1809 – March 3, 1817.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (71, 17, N'1945', N'World War II ended in 1945.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (72, 17, N'1918', N'1918 is the end year of World War I.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (73, 17, N'1939', N'1939 is the start year of World War II.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (74, 17, N'1965', N'1965 is not related to the end of World War II.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (75, 18, N'Cleopatra', N'Cleopatra was the ancient Egyptian queen famous for her beauty.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (76, 18, N'Nefertiti', N'Nefertiti was an Egyptian queen but is less famous for her beauty compared to Cleopatra.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (77, 18, N'Hatshepsut', N'Hatshepsut was a female pharaoh but is not known for her beauty.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (78, 18, N'Nefertari', N'Nefertari was the wife of Ramses II.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (79, 19, N'Mayflower', N'The Mayflower was the ship that brought the Pilgrims to America in 1620.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (80, 19, N'Santa Maria', N'Santa Maria was one of Christopher Columbus’s ships.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (81, 19, N'HMS Beagle', N'HMS Beagle was the ship that carried Charles Darwin on his voyage during 1831 – 1836.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (82, 19, N'Endurance', N'Endurance was the ship used by Ernest Shackleton on his Antarctic expedition during 1914 - 1916.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (83, 20, N'Neil Armstrong', N'Neil Armstrong was the first man to step on the moon on July 20, 1969.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (84, 20, N'Buzz Aldrin', N'Buzz Aldrin was the second man to step on the moon nineteen minutes after Neil Armstrong.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (85, 20, N'Yuri Gagarin', N'Yuri Gagarin was the first human to journey into outer space on 1961. Gagarin never went into space again but took an active part in training other cosmonauts.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (86, 20, N'Alan Shepard', N'Alan Shepard was the first American to travel into space on May 5, 1961.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (87, 21, N'Tokyo', N'Tokyo is the capital and largest city of Japan, known for its modern architecture and rich culture.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (88, 21, N'Kyoto', N'Kyoto was the capital of Japan before Tokyo, known for its classical Buddhist temples.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (89, 21, N'Osaka', N'Osaka is Japan’s third-largest city but not the capital.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (90, 21, N'Hiroshima', N'Hiroshima is known for the atomic bombing during World War II but is not the capital.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (91, 22, N'Australia', N'The Great Barrier Reef, the world’s largest coral reef system, is located in Australia.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (92, 22, N'Brazil', N'Brazil is home to the Amazon Rainforest, not the Great Barrier Reef.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (93, 22, N'South Africa', N'South Africa is known for its coastline but not the Great Barrier Reef.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (94, 22, N'Indonesia', N'Indonesia has large coral reefs but not the Great Barrier Reef.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (95, 23, N'Ural Mountains', N'The Ural Mountains form a natural boundary between Europe and Asia.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (96, 23, N'Himalayas', N'The Himalayas separate South Asia from the Tibetan Plateau but do not divide Europe and Asia.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (97, 23, N'Alps', N'The Alps are located entirely in Europe.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (98, 23, N'Andes', N'The Andes are located in South America.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (99, 24, N'New York City', N'New York City is famously referred to as the "Big Apple."', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (100, 24, N'Los Angeles', N'Los Angeles is known as the "City of Angels" but not the "Big Apple."', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (101, 24, N'Chicago', N'Chicago is often called the "Windy City," not the "Big Apple."', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (102, 24, N'Miami', N'Miami is known for its beaches but is not referred to as the "Big Apple."', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (103, 25, N'Antarctic Desert', N'The Antarctic Desert is the largest desert in the world, covering about 14 million square kilometers.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (104, 25, N'Sahara Desert', N'The Sahara is the largest hot desert but is smaller than the Antarctic Desert.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (105, 25, N'Arabian Desert', N'The Arabian Desert is located in the Middle East but is not the largest.', 0)
GO
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (106, 25, N'Gobi Desert', N'The Gobi Desert is located in Asia but is not the largest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (107, 26, N'Nile River', N'The Nile is the longest river in Africa, running through 11 countries.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (108, 26, N'Congo River', N'The Congo River is the second-longest in Africa but not the longest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (109, 26, N'Zambezi River', N'The Zambezi River is known for Victoria Falls but is not the longest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (110, 26, N'Niger River', N'The Niger River is the third-longest in Africa.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (111, 27, N'Monaco', N'Monaco is the second smallest country after Vatican City.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (112, 27, N'San Marino', N'San Marino is one of the smallest countries in the world but not the second smallest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (113, 27, N'Liechtenstein', N'Liechtenstein is a small European country but larger than Monaco.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (114, 27, N'Malta', N'Malta is a small island nation but larger than Monaco.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (115, 28, N'Atlantic Ocean', N'The Bermuda Triangle is located in the western part of the North Atlantic Ocean.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (116, 28, N'Pacific Ocean', N'The Pacific Ocean does not contain the Bermuda Triangle.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (117, 28, N'Indian Ocean', N'The Indian Ocean is located between Africa, Asia, and Australia but does not contain the Bermuda Triangle.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (118, 28, N'Arctic Ocean', N'The Arctic Ocean is the smallest ocean and does not contain the Bermuda Triangle.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (119, 29, N'Ottawa', N'Ottawa is the capital city of Canada, located in the province of Ontario.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (120, 29, N'Toronto', N'Toronto is the largest city in Canada but not the capital.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (121, 29, N'Vancouver', N'Vancouver is a major city in British Columbia but not the capital.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (122, 29, N'Montreal', N'Montreal is a large city in Quebec but not the capital of Canada.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (123, 30, N'Australia', N'Australia is often referred to as the "Land Down Under" because of its location in the Southern Hemisphere.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (124, 30, N'Antarctica', N'Antarctica is in the southern hemisphere but is not called the "Land Down Under."', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (125, 30, N'South America', N'South America is also in the southern hemisphere but is not referred to as the "Land Down Under."', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (126, 30, N'Africa', N'Africa is not referred to as the "Land Down Under."', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (127, 31, N'Brazil', N'The majority of the Amazon Rainforest is located in Brazil.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (128, 31, N'Peru', N'Part of the Amazon Rainforest is in Peru, but Brazil contains most of it.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (129, 31, N'Colombia', N'Colombia has a portion of the Amazon Rainforest but not as much as Brazil.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (130, 31, N'Venezuela', N'Venezuela has a small portion of the Amazon Rainforest but Brazil is more famous for it.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (131, 32, N'New York City', N'New York City is the most populous city in the United States with over 8 million people.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (132, 32, N'Los Angeles', N'Los Angeles is the second most populous city in the U.S., after New York.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (133, 32, N'Chicago', N'Chicago is the third largest city in the U.S. but not the most populous.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (134, 32, N'Houston', N'Houston is populous but not the largest in the U.S.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (135, 33, N'Greenland', N'Greenland is the largest island in the world by area.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (136, 33, N'Australia', N'Australia is considered a continent, not an island.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (137, 33, N'New Guinea', N'New Guinea is the second largest island in the world.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (138, 33, N'Borneo', N'Borneo is the third largest island in the world.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (139, 34, N'Portuguese', N'Portuguese is the official and national language of Brazil.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (140, 34, N'Spanish', N'Spanish is spoken in many South American countries but not the official language of Brazil.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (141, 34, N'English', N'English is not widely spoken in Brazil.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (142, 34, N'French', N'French is spoken in some nearby countries but not in Brazil.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (143, 35, N'Mount Kilimanjaro', N'Mount Kilimanjaro, located in Tanzania, is the tallest mountain in Africa.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (144, 35, N'Mount Kenya', N'Mount Kenya is the second tallest mountain in Africa.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (145, 35, N'Atlas Mountains', N'The Atlas Mountains are located in North Africa but are not the tallest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (146, 35, N'Ruwenzori Mountains', N'The Ruwenzori Mountains are tall but not the tallest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (147, 36, N'Au', N'The chemical symbol for gold is Au, derived from the Latin word "Aurum".', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (148, 36, N'Ag', N'Ag is the chemical symbol for silver.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (149, 36, N'Fe', N'Fe is the chemical symbol for iron.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (150, 36, N'Pb', N'Pb is the chemical symbol for lead.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (151, 37, N'Mars', N'Mars is often called the Red Planet due to its reddish appearance caused by iron oxide (rust) on its surface.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (152, 37, N'Venus', N'Venus is sometimes referred to as Earth’s twin, but not the Red Planet.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (153, 37, N'Jupiter', N'Jupiter is the largest planet in the solar system but not the Red Planet.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (154, 37, N'Saturn', N'Saturn is famous for its rings, not its red color.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (155, 38, N'100°C', N'Water boils at 100 degrees Celsius under normal atmospheric pressure.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (156, 38, N'0°C', N'0°C is the freezing point of water, not the boiling point.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (157, 38, N'50°C', N'50°C is below the boiling point of water.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (158, 38, N'212°C', N'212°C is the boiling point of water in Fahrenheit, not Celsius.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (159, 39, N'Oxygen', N'O represents oxygen on the periodic table, an essential element for life.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (160, 39, N'Osmium', N'Osmium is a different element but is represented by the symbol Os.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (161, 39, N'Oganesson', N'Oganesson is an element but has the symbol Og.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (162, 39, N'Oxide', N'Oxide is a compound, not an element.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (163, 40, N'Carbon dioxide', N'Plants absorb carbon dioxide (CO2) from the atmosphere during photosynthesis.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (164, 40, N'Oxygen', N'Plants release oxygen but do not absorb it from the atmosphere.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (165, 40, N'Nitrogen', N'Nitrogen is abundant in the atmosphere but is not absorbed by plants in significant amounts.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (166, 40, N'Methane', N'Plants do not absorb methane as part of their normal photosynthesis process.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (167, 41, N'206', N'The adult human body has 206 bones.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (168, 41, N'208', N'The human body has 206 bones, not 208.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (169, 41, N'210', N'There are 206 bones in the adult human body.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (170, 41, N'204', N'The adult human body has 206 bones, not 204.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (171, 42, N'Diamond', N'Diamond is the hardest natural substance on Earth.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (172, 42, N'Graphite', N'Graphite is soft and brittle, not the hardest substance.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (173, 42, N'Iron', N'Iron is hard, but diamond is much harder.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (174, 42, N'Quartz', N'Quartz is a hard mineral but is not harder than diamond.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (175, 43, N'The Sun', N'The Sun is the primary source of energy for Earth, providing light and heat.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (176, 43, N'Wind', N'Wind energy originates from solar energy, but the Sun is the ultimate source.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (177, 43, N'Water', N'Water energy is indirectly derived from the Sun through the water cycle.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (178, 43, N'Geothermal', N'Geothermal energy is from the Earth’s core, but the Sun is the main energy source for the surface.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (179, 44, N'Albert Einstein', N'Albert Einstein is widely regarded as the father of modern physics, especially for his theory of relativity.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (180, 44, N'Isaac Newton', N'Isaac Newton is known as the father of classical physics.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (181, 44, N'Galileo Galilei', N'Galileo made significant contributions to physics but is not considered the father of modern physics.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (182, 44, N'Niels Bohr', N'Niels Bohr contributed to quantum mechanics but is not considered the father of modern physics.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (183, 45, N'Mercury', N'Mercury is the closest planet to the Sun.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (184, 45, N'Venus', N'Venus is the second closest planet to the Sun.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (185, 45, N'Earth', N'Earth is the third planet from the Sun.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (186, 45, N'Mars', N'Mars is further from the Sun than Earth.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (187, 46, N'Photosynthesis', N'Photosynthesis is the process by which plants use sunlight to produce food from carbon dioxide and water.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (188, 46, N'Respiration', N'Respiration is the process by which plants and animals release energy, not make food.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (189, 46, N'Digestion', N'Plants do not digest food; they produce it through photosynthesis.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (190, 46, N'Fermentation', N'Fermentation is a process used by some organisms to generate energy without oxygen, not for food production.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (191, 47, N'Heart', N'The heart is responsible for pumping blood throughout the body.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (192, 47, N'Lungs', N'The lungs are responsible for gas exchange, not blood pumping.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (193, 47, N'Kidneys', N'The kidneys filter blood but do not pump it.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (194, 47, N'Liver', N'The liver processes nutrients but does not pump blood.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (195, 48, N'Nitrogen', N'Nitrogen makes up about 78% of the Earth’s atmosphere, making it the most common gas.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (196, 48, N'Oxygen', N'Oxygen makes up about 21% of the atmosphere.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (197, 48, N'Carbon dioxide', N'Carbon dioxide makes up a very small percentage of the atmosphere.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (198, 48, N'Argon', N'Argon is a noble gas but is not the most abundant gas in the atmosphere.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (199, 49, N'Na', N'Na is the chemical symbol for sodium, derived from its Latin name, "Natrium".', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (200, 49, N'S', N'S is the symbol for sulfur.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (201, 49, N'K', N'K is the symbol for potassium.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (202, 49, N'Cl', N'Cl is the symbol for chlorine.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (203, 50, N'Saturn', N'Saturn has the most moons of any planet, with over 80 confirmed moons.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (204, 50, N'Jupiter', N'Jupiter has many moons, but Saturn has more.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (205, 50, N'Mars', N'Mars has two small moons, Phobos and Deimos.', 0)
GO
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (206, 50, N'Neptune', N'Neptune has several moons, but not as many as Saturn or Jupiter.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (207, 51, N'Vincent van Gogh', N'Vincent van Gogh painted "The Starry Night" in 1889, one of his most famous works.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (208, 51, N'Pablo Picasso', N'Picasso is known for cubism, but he did not paint "The Starry Night".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (209, 51, N'Claude Monet', N'Monet is famous for his Impressionist paintings, not "The Starry Night".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (210, 51, N'Leonardo da Vinci', N'Leonardo da Vinci is known for works like "The Last Supper" and "Mona Lisa", not "The Starry Night".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (211, 52, N'Impressionism', N'Impressionism is known for its focus on light, color, and capturing moments.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (212, 52, N'Baroque', N'Baroque art is known for its grandeur and drama, not light and color.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (213, 52, N'Renaissance', N'Renaissance art focused more on realism and the human form.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (214, 52, N'Cubism', N'Cubism focuses on geometric shapes and abstract forms, not primarily on light and color.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (215, 53, N'Leonardo da Vinci', N'Leonardo da Vinci is often considered a central figure in the Renaissance.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (216, 53, N'Michelangelo', N'Michelangelo was a key artist of the Renaissance but is not considered the "father".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (217, 53, N'Raphael', N'Raphael was a great Renaissance painter but not regarded as the father of the movement.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (218, 53, N'Donatello', N'Donatello was an important early Renaissance sculptor but not the father of the movement.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (219, 54, N'Sistine Chapel', N'Michelangelo painted the ceiling of the Sistine Chapel in Vatican City.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (220, 54, N'St. Peter''s Basilica', N'Michelangelo designed parts of St. Peter''s Basilica, but he didn''t paint its ceiling.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (221, 54, N'The Louvre', N'The Louvre is an art museum, not the site of Michelangelo’s famous ceiling.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (222, 54, N'Notre-Dame Cathedral', N'Michelangelo did not work on Notre-Dame.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (223, 55, N'Pablo Picasso', N'Pablo Picasso is known for his Blue and Rose periods in the early 20th century.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (224, 55, N'Vincent van Gogh', N'Van Gogh is famous for his post-impressionist works, but not for a Blue or Rose period.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (225, 55, N'Claude Monet', N'Monet was a leading Impressionist artist but did not have Blue or Rose periods.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (226, 55, N'Henri Matisse', N'Matisse is known for his use of color, but not for these distinct periods.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (227, 56, N'Vincent van Gogh', N'Vincent van Gogh famously cut off part of his ear in 1888.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (228, 56, N'Rembrandt', N'Rembrandt is a famous Dutch painter, but there’s no story about him cutting off his ear.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (229, 56, N'Piet Mondrian', N'Mondrian is a Dutch painter known for his abstract works, but he did not cut off his ear.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (230, 56, N'Johannes Vermeer', N'Vermeer is another famous Dutch artist, but he did not cut off his ear.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (231, 57, N'Salvator Mundi', N'"Salvator Mundi", attributed to Leonardo da Vinci, was sold for $450.3 million in 2017.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (232, 57, N'The Mona Lisa', N'"The Mona Lisa" by Leonardo da Vinci is priceless and is not for sale.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (233, 57, N'Starry Night', N'Although very famous, "Starry Night" has never been sold at auction.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (234, 57, N'The Scream', N'"The Scream" by Edvard Munch has fetched high prices but is not the most expensive painting.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (235, 58, N'Surrealism', N'Salvador Dali was a prominent figure in the Surrealist movement, known for his dream-like paintings.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (236, 58, N'Cubism', N'Cubism is more associated with Picasso than Dali.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (237, 58, N'Impressionism', N'Dali did not work in the Impressionist style.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (238, 58, N'Futurism', N'Futurism is not the style Dali is associated with; he was a Surrealist.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (239, 59, N'Christ the Redeemer', N'Christ the Redeemer is an iconic statue located in Rio de Janeiro, Brazil.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (240, 59, N'The Statue of Liberty', N'The Statue of Liberty is in New York, USA, not Rio de Janeiro.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (241, 59, N'The Thinker', N'The Thinker is located in various locations, but not Rio de Janeiro.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (242, 59, N'David', N'The statue of David by Michelangelo is located in Florence, Italy.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (243, 60, N'Mosaic', N'Mosaic is a form of art that uses small pieces of glass, stone, or other materials to create an image.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (244, 60, N'Fresco', N'Fresco is a technique of painting on wet plaster, not using small pieces of material.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (245, 60, N'Collage', N'Collage involves assembling different materials on a surface, but it is different from mosaic.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (246, 60, N'Sculpture', N'Sculpture involves shaping materials like stone or metal, not small pieces to form an image.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (247, 61, N'Michelangelo', N'Michelangelo painted the ceiling of the Sistine Chapel between 1508 and 1512.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (248, 61, N'Leonardo da Vinci', N'Leonardo da Vinci did not paint the Sistine Chapel ceiling.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (249, 61, N'Raphael', N'Raphael was a great Renaissance artist, but Michelangelo painted the Sistine Chapel.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (250, 61, N'Donatello', N'Donatello was a sculptor, not a painter of the Sistine Chapel.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (251, 62, N'American Gothic', N'Grant Wood''s "American Gothic" depicts a farmer and his wife with a pitchfork.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (252, 62, N'The Hay Wain', N'"The Hay Wain" is an iconic painting by John Constable but does not depict a farmer with a pitchfork.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (253, 62, N'The Harvesters', N'"The Harvesters" is a painting by Pieter Bruegel but does not fit this description.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (254, 62, N'The Potato Eaters', N'Van Gogh''s "The Potato Eaters" depicts peasants but not a farmer with a pitchfork.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (255, 63, N'Fresco', N'Fresco is the technique of painting on wet plaster, commonly used during the Renaissance.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (256, 63, N'Mosaic', N'Mosaic involves assembling small pieces of glass or stone, not painting on plaster.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (257, 63, N'Encaustic', N'Encaustic is a painting technique that uses heated beeswax, not wet plaster.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (258, 63, N'Tempera', N'Tempera is a painting method using pigments mixed with a water-soluble binder, but not on wet plaster.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (259, 64, N'Leonardo da Vinci', N'Leonardo da Vinci painted "The Last Supper", one of his most famous works.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (260, 64, N'Michelangelo', N'Michelangelo did not paint "The Last Supper".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (261, 64, N'Raphael', N'Raphael did not paint "The Last Supper".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (262, 64, N'Donatello', N'Donatello was not involved in painting "The Last Supper".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (263, 65, N'Andy Warhol', N'Andy Warhol is famous for his "Campbell’s Soup Cans" series, a prime example of pop art.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (264, 65, N'Roy Lichtenstein', N'Lichtenstein is also a pop artist, but he is known for comic strip-style paintings.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (265, 65, N'Jean-Michel Basquiat', N'Basquiat was a neo-expressionist artist, not known for "Campbell’s Soup Cans".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (266, 65, N'Jasper Johns', N'Jasper Johns is famous for his paintings of flags and numbers, not "Campbell’s Soup Cans".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (267, 66, N'Margaret Thatcher', N'Margaret Thatcher was the first female Prime Minister of the United Kingdom, serving from 1979 to 1990.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (268, 66, N'Theresa May', N'Theresa May was the second female Prime Minister of the UK, serving from 2016 to 2019.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (269, 66, N'Angela Merkel', N'Angela Merkel was Chancellor of Germany, not Prime Minister of the UK.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (270, 66, N'Queen Elizabeth II', N'Queen Elizabeth II was the queen, not the prime minister.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (271, 67, N'1912', N'The Titanic sank on April 15, 1912, after hitting an iceberg.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (272, 67, N'1914', N'1914 is the year World War I started, not the sinking of the Titanic.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (273, 67, N'1905', N'The Titanic had not yet been built in 1905.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (274, 67, N'1920', N'The Titanic sank long before 1920.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (275, 68, N'Christopher Columbus', N'Christopher Columbus is credited with discovering the Americas in 1492, though indigenous peoples lived there long before.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (276, 68, N'Leif Erikson', N'Leif Erikson, a Viking, reached North America around 1000 AD but is not widely credited with its "discovery" in 1492.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (277, 68, N'Amerigo Vespucci', N'Amerigo Vespucci explored the New World, but it was Columbus who reached it in 1492.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (278, 68, N'Ferdinand Magellan', N'Ferdinand Magellan was an explorer, but he did not discover America in 1492.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (279, 69, N'Julius Caesar', N'Julius Caesar was assassinated on March 15, 44 BC, also known as the Ides of March.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (280, 69, N'Augustus', N'Augustus was the first emperor of Rome, but he was not assassinated on the Ides of March.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (281, 69, N'Nero', N'Nero was not assassinated on the Ides of March; he died in 68 AD.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (282, 69, N'Caligula', N'Caligula was assassinated, but not on the Ides of March.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (283, 70, N'The American Civil War', N'The American Civil War (1861–1865) was fought between the Union (North) and the Confederacy (South).', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (284, 70, N'The Revolutionary War', N'The Revolutionary War was fought between the American colonies and Great Britain, not between the North and South.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (285, 70, N'The War of 1812', N'The War of 1812 was between the United States and Great Britain, not between the North and South.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (286, 70, N'World War II', N'World War II was a global conflict, not a civil war within the United States.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (287, 71, N'Hiroshima', N'The first atomic bomb was dropped on Hiroshima, Japan, on August 6, 1945.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (288, 71, N'Nagasaki', N'Nagasaki was the second city hit by an atomic bomb on August 9, 1945.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (289, 71, N'Tokyo', N'Tokyo was firebombed during World War II, but it was not hit with an atomic bomb.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (290, 71, N'Kyoto', N'Kyoto was considered as a target but was not bombed.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (291, 72, N'Napoleon Bonaparte', N'Napoleon Bonaparte became Emperor of France in 1804.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (292, 72, N'Louis XIV', N'Louis XIV was a king, not an emperor.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (293, 72, N'Charles de Gaulle', N'Charles de Gaulle was a French military leader, but he was not an emperor.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (294, 72, N'Maximilian', N'Maximilian was installed as Emperor of Mexico by Napoleon III, not France.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (295, 73, N'Charles Lindbergh', N'Charles Lindbergh made the first solo transatlantic flight in 1927.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (296, 73, N'Amelia Earhart', N'Amelia Earhart was the first woman to fly solo across the Atlantic but not the first person.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (297, 73, N'Howard Hughes', N'Howard Hughes was an aviator, but Charles Lindbergh was the first to fly solo across the Atlantic.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (298, 73, N'The Wright Brothers', N'The Wright Brothers invented the airplane, but they did not fly solo across the Atlantic.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (299, 74, N'HMS Beagle', N'Charles Darwin sailed on the HMS Beagle during his journey to the Galapagos Islands.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (300, 74, N'HMS Victory', N'HMS Victory was Admiral Nelson''s flagship, not the ship Darwin sailed on.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (301, 74, N'Santa Maria', N'Santa Maria was one of the ships used by Christopher Columbus, not Darwin.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (302, 74, N'Endeavour', N'Endeavour was James Cook''s ship, not Darwin''s.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (303, 75, N'1989', N'The Berlin Wall fell in 1989, marking the end of the Cold War.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (304, 75, N'1991', N'The Soviet Union collapsed in 1991, but the Berlin Wall fell in 1989.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (305, 75, N'1987', N'The Berlin Wall fell in 1989, not 1987.', 0)
GO
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (306, 75, N'1990', N'While German reunification occurred in 1990, the wall fell in 1989.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (307, 76, N'Augustus', N'Augustus, formerly known as Octavian, became the first emperor of Rome in 27 BC.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (308, 76, N'Julius Caesar', N'Julius Caesar was a dictator but never an emperor. Augustus, his heir, became the first emperor.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (309, 76, N'Nero', N'Nero was an emperor but not the first.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (310, 76, N'Tiberius', N'Tiberius succeeded Augustus but was not the first emperor.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (311, 77, N'1945', N'The United Nations was established in 1945 after the end of World War II.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (312, 77, N'1919', N'The League of Nations was established in 1919, not the United Nations.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (313, 77, N'1950', N'The United Nations was already in existence by 1950.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (314, 77, N'1939', N'The United Nations was established after World War II, not at its onset.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (315, 78, N'Marie Curie', N'Marie Curie was the first woman to win a Nobel Prize in 1903 for her work in Physics.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (316, 78, N'Mother Teresa', N'Mother Teresa won the Nobel Peace Prize, but she was not the first female laureate.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (317, 78, N'Rosalind Franklin', N'Rosalind Franklin did not win a Nobel Prize during her lifetime.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (318, 78, N'Jane Addams', N'Jane Addams won the Nobel Peace Prize in 1931, but she was not the first woman to win a Nobel.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (319, 79, N'The assassination of Archduke Franz Ferdinand', N'The assassination of Archduke Franz Ferdinand of Austria in 1914 sparked World War I.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (320, 79, N'The invasion of Poland', N'The invasion of Poland marked the beginning of World War II, not World War I.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (321, 79, N'The Treaty of Versailles', N'The Treaty of Versailles ended World War I, it did not start it.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (322, 79, N'The Russian Revolution', N'The Russian Revolution occurred during World War I but did not start the war.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (323, 80, N'Abraham Lincoln', N'Abraham Lincoln issued the Emancipation Proclamation on January 1, 1863, during the American Civil War.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (324, 80, N'George Washington', N'George Washington was the first president but did not issue the Emancipation Proclamation.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (325, 80, N'Thomas Jefferson', N'Thomas Jefferson did not issue the Emancipation Proclamation.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (326, 80, N'Andrew Johnson', N'Andrew Johnson succeeded Lincoln but did not issue the Emancipation Proclamation.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1087, 81, N'Cheetah', N'The cheetah is the fastest land animal, capable of reaching speeds up to 60-70 mph (97-113 km/h).', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1088, 81, N'Leopard', N'Leopards are fast, but not as fast as cheetahs.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1089, 81, N'Lion', N'Lions are powerful but slower than cheetahs.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1090, 81, N'Gazelle', N'Gazelles are fast, but the cheetah is faster.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1091, 82, N'7', N'There are 7 continents: Africa, Antarctica, Asia, Europe, North America, Oceania, and South America.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1092, 82, N'6', N'Counting continents as 6 omits Antarctica or combines Europe and Asia (Eurasia), but commonly, there are 7.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1093, 82, N'5', N'There are 5 Olympic rings representing continents, but not all are counted in this way.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1094, 82, N'8', N'There are no commonly accepted classifications with 8 continents.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1095, 83, N'William Shakespeare', N'William Shakespeare wrote "Romeo and Juliet", one of his most famous plays.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1096, 83, N'Charles Dickens', N'Charles Dickens was a famous novelist, but not the author of "Romeo and Juliet".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1097, 83, N'Jane Austen', N'Jane Austen wrote novels, but "Romeo and Juliet" is by Shakespeare.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1098, 83, N'George Bernard Shaw', N'George Bernard Shaw was a playwright, but not the author of "Romeo and Juliet".', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1099, 84, N'Australia', N'Australia is famous for its population of kangaroos.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1100, 84, N'New Zealand', N'New Zealand is close to Australia but is not known for kangaroos.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1101, 84, N'South Africa', N'South Africa is famous for its wildlife, but not kangaroos.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1102, 84, N'India', N'India is known for many animals, but not kangaroos.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1103, 85, N'Canberra', N'Canberra is the capital city of Australia.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1104, 85, N'Sydney', N'Sydney is the largest city in Australia but not the capital.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1105, 85, N'Melbourne', N'Melbourne is another major Australian city but not the capital.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1106, 85, N'Brisbane', N'Brisbane is a major city but not the capital of Australia.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1107, 86, N'Blue whale', N'The blue whale is the largest mammal, growing up to 100 feet (30 meters) long.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1108, 86, N'Elephant', N'Elephants are the largest land mammals, but not the largest overall.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1109, 86, N'Giraffe', N'Giraffes are the tallest land animals, but not the largest.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1110, 86, N'Polar bear', N'Polar bears are large mammals, but much smaller than blue whales.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1111, 87, N'Edmund Hillary', N'Sir Edmund Hillary and Tenzing Norgay were the first to reach the summit of Mount Everest in 1953.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1112, 87, N'Tenzing Norgay', N'Tenzing Norgay also climbed Everest, but Edmund Hillary is traditionally listed first in records.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1113, 87, N'Reinhold Messner', N'Reinhold Messner climbed Everest without supplemental oxygen, but he was not the first to summit.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1114, 87, N'George Mallory', N'George Mallory attempted to climb Everest but did not succeed.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1115, 88, N'France', N'The Eiffel Tower is an iconic symbol of France and is located in Paris.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1116, 88, N'Italy', N'Italy is known for landmarks like the Colosseum, but not the Eiffel Tower.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1117, 88, N'Germany', N'Germany is not associated with the Eiffel Tower.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1118, 88, N'Spain', N'Spain has many landmarks, but the Eiffel Tower is in France.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1119, 89, N'The Simpsons', N'The Simpsons is the longest-running scripted TV show, debuting in 1989.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1120, 89, N'Doctor Who', N'Doctor Who is one of the longest-running sci-fi shows but does not surpass The Simpsons in overall length.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1121, 89, N'Meet the Press', N'Meet the Press is a long-running news show but not the longest overall.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1122, 89, N'Saturday Night Live', N'Saturday Night Live is long-running but not the longest in TV history.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1123, 90, N'1912', N'The Titanic sank on April 15, 1912, after hitting an iceberg.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1124, 90, N'1914', N'1914 is the year World War I started, not the sinking of the Titanic.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1125, 90, N'1905', N'The Titanic had not yet been built in 1905.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1126, 90, N'1920', N'The Titanic sank long before 1920.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1127, 91, N'Stapes', N'The stapes is the smallest bone in the human body, located in the middle ear.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1128, 91, N'Femur', N'The femur is the largest bone in the body.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1129, 91, N'Phalanges', N'Phalanges are small bones in fingers and toes, but the stapes is smaller.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1130, 91, N'Tibia', N'The tibia is a large bone in the lower leg.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1131, 92, N'Diamond', N'Diamond is the hardest known natural material on the Mohs scale of mineral hardness.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1132, 92, N'Quartz', N'Quartz is hard but not as hard as diamond.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1133, 92, N'Graphite', N'Graphite is soft and used in pencils.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1134, 92, N'Iron', N'Iron is strong but not the hardest natural material.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1135, 93, N'7', N'A rainbow has 7 colors: red, orange, yellow, green, blue, indigo, and violet.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1136, 93, N'6', N'A rainbow has 7 colors, not 6.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1137, 93, N'8', N'A rainbow is traditionally seen with 7 colors.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1138, 93, N'5', N'A rainbow has more than 5 colors.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1139, 94, N'Woody', N'Woody is the name of the toy cowboy in the Toy Story series.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1140, 94, N'Buzz Lightyear', N'Buzz Lightyear is a space ranger, not the cowboy.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1141, 94, N'Jessie', N'Jessie is a cowgirl, not the main cowboy.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1142, 94, N'Bullseye', N'Bullseye is Woody’s horse, not the cowboy.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1143, 95, N'Avocado', N'Avocado is the main ingredient in guacamole.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1144, 95, N'Tomato', N'Tomatoes may be added to guacamole, but the main ingredient is avocado.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1145, 95, N'Cucumber', N'Cucumber is not a common ingredient in guacamole.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1146, 95, N'Lettuce', N'Lettuce is not used in guacamole.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1147, 96, N'World Wide Web', N'WWW stands for World Wide Web, a system of interlinked hypertext documents.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1148, 96, N'Wide Web World', N'The correct order is World Wide Web.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1149, 96, N'Web Wide World', N'The acronym WWW stands for World Wide Web.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1150, 96, N'World Web Wide', N'This is not the correct order for WWW.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1151, 97, N'Portuguese', N'Portuguese is the official language of Brazil.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1152, 97, N'Spanish', N'Spanish is spoken in many Latin American countries, but not in Brazil.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1153, 97, N'French', N'French is not the official language of Brazil.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1154, 97, N'English', N'English is not the official language of Brazil.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1155, 98, N'Lacrosse', N'Lacrosse is the national sport of Canada, along with ice hockey.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1156, 98, N'Ice hockey', N'Ice hockey is also recognized as a national sport, but lacrosse is officially the summer sport.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1157, 98, N'Basketball', N'Basketball originated in Canada but is not the national sport.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1158, 98, N'Curling', N'Curling is popular in Canada but not the national sport.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1159, 99, N'Mars', N'Mars is called the Red Planet due to its reddish appearance.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1160, 99, N'Jupiter', N'Jupiter is a gas giant and not referred to as the Red Planet.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1161, 99, N'Venus', N'Venus is known for its bright appearance but is not the Red Planet.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1162, 99, N'Saturn', N'Saturn is known for its rings, not its color.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1163, 100, N'Greece', N'Greece hosted the first modern Olympic Games in Athens in 1896.', 1)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1164, 100, N'France', N'France hosted the second modern Olympic Games, not the first.', 0)
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1165, 100, N'United Kingdom', N'The UK has hosted the Olympics but did not host the first modern Games.', 0)
GO
INSERT [dbo].[answers] ([id], [question_id], [answer_text], [topic_info], [is_correct]) VALUES (1166, 100, N'United States', N'The U.S. has hosted several Olympics, but not the first modern Games.', 0)
SET IDENTITY_INSERT [dbo].[answers] OFF
GO
SET IDENTITY_INSERT [dbo].[questions] ON 

INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (1, N'What is the capital of France?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (2, N'What is the largest planet in our solar system?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (3, N'Which river is the longest in the world?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (4, N'Which continent is the Sahara Desert located in?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (5, N'Which country has the largest population?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (6, N'What is the smallest country in the world?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (7, N'What is the chemical symbol for water?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (8, N'What is the speed of light?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (9, N'Who developed the theory of relativity?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (10, N'What is the powerhouse of the cell?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (11, N'Who painted the Mona Lisa?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (12, N'What is the art style associated with Pablo Picasso?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (13, N'In which city is the Louvre Museum located?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (14, N'Who is known for the sculpture of David?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (15, N'What is the primary medium used in fresco painting?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (16, N'Who was the first president of the United States?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (17, N'What year did World War II end?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (18, N'Who was the ancient Egyptian queen famous for her beauty?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (19, N'What was the name of the ship that brought the Pilgrims to America?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (20, N'Who was the first man to step on the moon?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (21, N'What is the capital of Japan?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (22, N'Which country is home to the Great Barrier Reef?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (23, N'What mountain range separates Europe from Asia?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (24, N'Which city is known as the “Big Apple”?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (25, N'What is the largest desert in the world?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (26, N'What is the longest river in Africa?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (27, N'Which is the second smallest country in the world?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (28, N'In which ocean is the Bermuda Triangle located?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (29, N'What is the capital of Canada?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (30, N'Which continent is known as the “Land Down Under”?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (31, N'Which country is famous for the Amazon Rainforest?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (32, N'Which is the most populous city in the United States?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (33, N'What is the largest island in the world?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (34, N'What is the national language of Brazil?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (35, N'What is the tallest mountain in Africa?', N'Geography')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (36, N'What is the chemical symbol for gold?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (37, N'What planet is known as the Red Planet?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (38, N'What is the boiling point of water in Celsius?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (39, N'What element does "O" represent on the periodic table?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (40, N'What gas do plants absorb from the atmosphere?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (41, N'How many bones are in the human body?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (42, N'What is the hardest natural substance on Earth?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (43, N'What is the primary source of energy for the Earth?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (44, N'Who is known as the father of modern physics?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (45, N'Which planet is closest to the sun?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (46, N'What is the process by which plants make food?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (47, N'What organ is responsible for pumping blood through the body?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (48, N'What is the most common gas in the Earth’s atmosphere?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (49, N'What is the symbol for sodium on the periodic table?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (50, N'Which planet has the most moons?', N'Science')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (51, N'Who painted The Starry Night?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (52, N'What period of art is known for its focus on light and color?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (53, N'Who is known as the father of the Renaissance?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (54, N'Which famous building did Michelangelo paint the ceiling of?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (55, N'Which artist is famous for his blue and rose periods?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (56, N'Which Dutch painter is known for cutting off his ear?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (57, N'What is the most expensive painting ever sold?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (58, N'What is the name of the art style Salvador Dali is associated with?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (59, N'Which famous sculpture is located in Rio de Janeiro, Brazil?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (60, N'What is the term for art created using small pieces of glass or stone?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (61, N'Who painted the Sistine Chapel ceiling?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (62, N'What famous painting depicts a farmer and his wife with a pitchfork?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (63, N'What is the term for artwork done on wet plaster?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (64, N'Who painted "The Last Supper"?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (65, N'Which artist is known for his "Campbell’s Soup Cans" artwork?', N'Art')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (66, N'Who was the first female prime minister of the United Kingdom?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (67, N'What year did the Titanic sink?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (68, N'Who discovered America in 1492?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (69, N'Which Roman emperor was assassinated on the Ides of March?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (70, N'What war was fought between the North and the South in the United States?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (71, N'What city was the target of the first atomic bomb attack?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (72, N'Which French military leader became emperor of France?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (73, N'Who was the first person to fly solo across the Atlantic?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (74, N'What was the name of the ship Charles Darwin sailed on?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (75, N'What year did the Berlin Wall fall?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (76, N'Who was the first emperor of Rome?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (77, N'In which year was the United Nations established?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (78, N'Who was the first woman to win a Nobel Prize?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (79, N'What event started World War I?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (80, N'Which U.S. president issued the Emancipation Proclamation?', N'History')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (81, N'What is the fastest land animal?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (82, N'How many continents are there?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (83, N'Who wrote "Romeo and Juliet"?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (84, N'Which country is famous for the kangaroo?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (85, N'What is the capital of Australia?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (86, N'What is the largest mammal?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (87, N'Who was the first person to climb Mount Everest?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (88, N'Which country is known for the Eiffel Tower?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (89, N'What is the longest-running TV show in history?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (90, N'What year did the Titanic sink?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (91, N'Which is the smallest bone in the human body?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (92, N'What is the hardest known natural material?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (93, N'How many colors are in a rainbow?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (94, N'What is the name of the toy cowboy in Toy Story?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (95, N'What is the main ingredient in guacamole?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (96, N'What does the "WWW" stand for in a website browser?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (97, N'What is the official language of Brazil?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (98, N'What is the national sport of Canada?', N'General Knowledge')
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (99, N'Which planet is known as the Red Planet?', N'General Knowledge')
GO
INSERT [dbo].[questions] ([id], [question_text], [category]) VALUES (100, N'Which country hosted the first modern Olympic Games?', N'General Knowledge')
SET IDENTITY_INSERT [dbo].[questions] OFF
GO
ALTER TABLE [dbo].[answers]  WITH CHECK ADD FOREIGN KEY([question_id])
REFERENCES [dbo].[questions] ([id])
GO
USE [master]
GO
ALTER DATABASE [Tietovisa] SET  READ_WRITE 
GO
