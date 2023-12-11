CREATE DATABASE  IF NOT EXISTS `audiovibe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `audiovibe`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: audiovibe
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `title` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `song_id` int NOT NULL AUTO_INCREMENT,
  `likes` int DEFAULT NULL,
  `play_count` int DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  KEY `fk_artist_id` (`artist_id`),
  KEY `idx_song_id` (`song_id`),
  CONSTRAINT `fk_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3603 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES ('Hey, Soul Sister','neo mellow',1000,3000,533,51),('Love The Way You Lie','detroit hip hop',1001,3001,474,79),('TiK ToK','dance pop',1002,3002,478,284),('Bad Romance','dance pop',1003,3003,426,983),('Just the Way You Are','pop',1004,3004,330,564),('Baby','canadian pop',1005,3005,210,933),('Dynamite','dance pop',1006,3006,152,272),('Secrets','dance pop',1007,3007,87,333),('Empire State of Mind (Part II) Broken Down','hip pop',1008,3008,426,562),('Only Girl (In The World)','barbadian pop',1009,3009,298,709),('Club Can\'t Handle Me (feat. David Guetta)','dance pop',1010,3010,258,902),('Marry You','pop',1011,3011,317,264),('Cooler Than Me - Single Mix','dance pop',1012,3012,253,742),('Telephone','dance pop',1013,3013,236,848),('Like A G6','dance pop',1014,3014,386,936),('OMG (feat. will.i.am)','atl hip hop',1015,3015,242,50),('Eenie Meenie','dance pop',1016,3016,117,143),('The Time (Dirty Bit)','dance pop',1017,3017,172,481),('Alejandro','dance pop',1018,3018,91,681),('Your Love Is My Drug','dance pop',1019,3019,275,765),('Meet Me Halfway','dance pop',1020,3020,62,99),('Whataya Want from Me','australian pop',1021,3021,35,610),('Take It Off','dance pop',1022,3022,552,947),('Misery','pop',1023,3023,406,336),('All The Right Moves','dance pop',1024,3024,269,218),('Animal','indie pop',1025,3025,235,735),('Naturally','dance pop',1026,3026,427,76),('I Like It','dance pop',1027,3027,388,470),('Teenage Dream','dance pop',1028,3028,374,196),('California Gurls','dance pop',1029,3029,459,853),('ARTIST_SONG.csv','dance pop',1030,3030,140,718),('My First Kiss - feat. Ke$ha','dance pop',1031,3031,20,355),('Blah Blah Blah (feat. 3OH!3)','dance pop',1032,3032,388,716),('Imma Be','dance pop',1033,3033,127,621),('Try Sleeping with a Broken Heart','hip pop',1034,3034,33,349),('Sexy Bitch (feat. Akon)','dance pop',1035,3035,574,658),('Bound To You - Burlesque Original Motion Picture Soundtrack','dance pop',1036,3036,273,198),('If I Had You','australian pop',1037,3037,419,724),('Rock That Body','dance pop',1038,3038,341,481),('Dog Days Are Over','art pop',1039,3039,388,324),('Something\'s Got A Hold On Me - Burlesque Original Motion Picture Soundtrack','dance pop',1040,3040,399,312),('Doesn\'t Mean Anything','hip pop',1041,3041,327,514),('Hard','barbadian pop',1042,3042,255,683),('Loca','colombian pop',1043,3043,258,855),('You Lost Me','dance pop',1044,3044,117,941),('Not Myself Tonight','dance pop',1045,3045,252,338),('Written in the Stars (feat. Eric Turner)','dance pop',1046,3046,21,376),('DJ Got Us Fallin\' In Love (feat. Pitbull)','atl hip hop',1047,3047,285,296),('Castle Walls (feat. Christina Aguilera)','atl hip hop',1048,3048,156,333),('Break Your Heart','dance pop',1049,3049,49,705),('Hello','big room',1050,3050,118,984),('A Thousand Years','dance pop',1051,3051,159,502),('Someone Like You','british soul',1052,3052,498,876),('Give Me Everything','dance pop',1053,3053,433,578),('Just the Way You Are','pop',1054,3054,511,626),('Rolling in the Deep','british soul',1055,3055,513,381),('Run the World (Girls)','dance pop',1056,3056,50,291),('Moves Like Jagger - Studio Recording From The Voice Performance','pop',1057,3057,47,123),('Love On Top','dance pop',1058,3058,64,569),('Grenade','pop',1059,3059,55,145),('Tonight Tonight','dance pop',1060,3060,159,703),('What the Hell','canadian pop',1061,3061,466,742),('Born This Way','dance pop',1062,3062,316,452),('Monster','chicago rap',1063,3063,416,623),('Marry You','pop',1064,3064,484,157),('Best Thing I Never Had','dance pop',1065,3065,110,198),('Party Rock Anthem','dance pop',1066,3066,458,170),('We R Who We R','dance pop',1067,3067,556,532),('Price Tag','australian pop',1068,3068,110,788),('Good Life','dance pop',1069,3069,116,385),('Just Can’t Get Enough','dance pop',1070,3070,360,579),('On The Floor','dance pop',1071,3071,43,321),('What\'s My Name?','barbadian pop',1072,3072,444,261),('Yeah 3x','dance pop',1073,3073,405,504),('Without You (feat. Usher)','dance pop',1074,3074,206,699),('Sexy And I Know It','dance pop',1075,3075,367,347),('The Edge Of Glory','dance pop',1076,3076,93,150),('E.T.','dance pop',1077,3077,583,675),('Till the World Ends','dance pop',1078,3078,54,56),('I Wanna Go','dance pop',1079,3079,587,668),('Blow','dance pop',1080,3080,568,274),('You And I','dance pop',1081,3081,489,145),('Judas','dance pop',1082,3082,109,762),('Tonight (I\'m Fuckin\' You)','dance pop',1083,3083,451,859),('Please Don\'t Go','dance pop',1084,3084,494,277),('We Found Love','barbadian pop',1085,3085,34,894),('Marry The Night','dance pop',1086,3086,297,393),('1+1','dance pop',1087,3087,577,512),('Hold It Against Me','dance pop',1088,3088,567,906),('I\'m Into You','dance pop',1089,3089,261,65),('Papi','dance pop',1090,3090,445,134),('Cheers (Drink To That)','barbadian pop',1091,3091,209,475),('S&M Remix','barbadian pop',1092,3092,553,674),('Written in the Stars (feat. Eric Turner)','dance pop',1093,3093,380,932),('Jar of Hearts','dance pop',1094,3094,482,571),('Castle Walls (feat. Christina Aguilera)','atl hip hop',1095,3095,456,460),('Turning Page','acoustic pop',1096,3096,498,787),('Super Bass','dance pop',1097,3097,97,574),('Raise Your Glass','dance pop',1098,3098,106,474),('Invading My Mind','dance pop',1099,3099,280,466),('Moment 4 Life - Album Version (Edited)','dance pop',1100,3100,72,955),('Last Friday Night (T.G.I.F.)','dance pop',1101,3101,464,191),('Firework','dance pop',1102,3102,87,609),('Muny - Album Version (Edited)','dance pop',1103,3103,148,512),('Titanium (feat. Sia)','dance pop',1104,3104,193,545),('Locked Out of Heaven','pop',1105,3105,311,756),('Paradise','permanent wave',1106,3106,235,781),('Payphone','pop',1107,3107,325,356),('What Makes You Beautiful','boy band',1108,3108,255,706),('I Knew You Were Trouble.','pop',1109,3109,588,168),('Call Me Maybe','canadian pop',1110,3110,347,180),('Love You Like A Love Song','dance pop',1111,3111,415,463),('Set Fire to the Rain','british soul',1112,3112,275,921),('We Are Never Ever Getting Back Together','pop',1113,3113,193,193),('Stronger (What Doesn\'t Kill You)','dance pop',1114,3114,108,396),('Try','dance pop',1115,3115,531,367),('Starships','dance pop',1116,3116,412,968),('One More Night','pop',1117,3117,427,383),('Good Time','pop',1118,3118,353,734),('Glad You Came','boy band',1119,3119,210,156),('Beauty And A Beat','canadian pop',1120,3120,342,241),('International Love','dance pop',1121,3121,320,456),('Some Nights','baroque pop',1122,3122,307,431),('Boyfriend','canadian pop',1123,3123,437,528),('Part Of Me','dance pop',1124,3124,415,153),('Domino','australian pop',1125,3125,426,461),('Where Have You Been','barbadian pop',1126,3126,546,636),('Wide Awake','dance pop',1127,3127,594,787),('The One That Got Away','dance pop',1128,3128,538,743),('Dance Again','dance pop',1129,3129,330,65),('Turn Up the Music','dance pop',1130,3130,190,403),('Lights - Single Version','dance pop',1131,3131,221,167),('We Are Young (feat. Janelle Monáe)','baroque pop',1132,3132,504,287),('Diamonds','barbadian pop',1133,3133,196,732),('Don\'t Stop the Party (feat. TJR)','dance pop',1134,3134,511,272),('You Da One','barbadian pop',1135,3135,278,430),('Stereo Hearts (feat. Adam Levine)','dance pop',1136,3136,152,74),('It Will Rain','pop',1137,3137,493,585),('Blow Me (One Last Kiss)','dance pop',1138,3138,100,622),('Underneath the Tree','dance pop',1139,3139,179,206),('Wake Me Up','big room',1140,3140,483,122),('Story of My Life','boy band',1141,3141,210,147),('Just Give Me a Reason (feat. Nate Ruess)','dance pop',1142,3142,115,413),('Hall of Fame','celtic rock',1143,3143,298,319),('Roar','dance pop',1144,3144,179,828),('We Can\'t Stop','dance pop',1145,3145,210,366),('Don\'t You Worry Child - Radio Edit','big room',1146,3146,404,882),('Get Lucky (feat. Pharrell Williams & Nile Rodgers) - Radio Edit','electro',1147,3147,162,548),('Wrecking Ball','dance pop',1148,3148,204,603),('Impossible','pop',1149,3149,308,908),('Blurred Lines','dance pop',1150,3150,535,511),('Heart Attack','dance pop',1151,3151,402,735),('We Are Never Ever Getting Back Together','pop',1152,3152,250,564),('Die Young','dance pop',1153,3153,250,565),('Clarity','complextro',1154,3154,324,272),('Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix','art pop',1155,3155,585,692),('Under Control','dance pop',1156,3156,227,726),('Everybody Talks','indie pop',1157,3157,584,376),('Hold On, We\'re Going Home','canadian hip hop',1158,3158,501,320),('Best Song Ever','boy band',1159,3159,169,369),('Kiss You','boy band',1160,3160,348,901),('Sweet Nothing (feat. Florence Welch)','dance pop',1161,3161,25,528),('Lose Yourself to Dance','electro',1162,3162,207,897),('Work Bitch','dance pop',1163,3163,434,590),('Brave','acoustic pop',1164,3164,481,748),('Can\'t Hold Us (feat. Ray Dalton)','dance pop',1165,3165,232,271),('Feel This Moment (feat. Christina Aguilera)','dance pop',1166,3166,348,628),('Beneath Your Beautiful','pop',1167,3167,537,901),('Let Me Love You (Until You Learn To Love Yourself)','dance pop',1168,3168,574,310),('Thrift Shop (feat. Wanz)','dance pop',1169,3169,259,753),('If I Lose Myself - Alesso vs OneRepublic','dance pop',1170,3170,115,278),('The Way','dance pop',1171,3171,215,693),('Suit & Tie','dance pop',1172,3172,185,750),('#thatPOWER','dance pop',1173,3173,319,766),('I Love It (feat. Charli XCX)','candy pop',1174,3174,25,539),('Play Hard (feat. Ne-Yo & Akon) - New Edit','dance pop',1175,3175,289,376),('Daylight','pop',1176,3176,433,80),('Love Somebody','pop',1177,3177,462,481),('A Little Party Never Killed Nobody (All We Got)','dance pop',1178,3178,184,590),('Move','dance pop',1179,3179,100,623),('Walks Like Rihanna','boy band',1180,3180,435,545),('Rock N Roll','canadian pop',1181,3181,551,287),('Heartbreaker','canadian pop',1182,3182,174,853),('Mirrors - Radio Edit','dance pop',1183,3183,210,377),('Next To Me','dance pop',1184,3184,379,954),('Made In The USA','dance pop',1185,3185,449,710),('Clown','dance pop',1186,3186,120,99),('Girl On Fire (feat. Nicki Minaj) - Inferno Version','hip pop',1187,3187,145,720),('TKO','dance pop',1188,3188,527,710),('Come & Get It','dance pop',1189,3189,400,819),('Live It Up','dance pop',1190,3190,71,92),('We Own The Night','boy band',1191,3191,87,658),('Atlas - From “The Hunger Games: Catching Fire” Soundtrack','permanent wave',1192,3192,468,126),('What About Love','dance pop',1193,3193,189,701),('Take Back the Night','dance pop',1194,3194,52,752),('Applause','dance pop',1195,3195,55,831),('Anything Could Happen','dance pop',1196,3196,347,262),('Finally Found You','dance pop',1197,3197,557,899),('Pom Poms','boy band',1198,3198,254,462),('#Beautiful','dance pop',1199,3199,253,859),('How Ya Doin\'? (feat. Missy Elliott)','dance pop',1200,3200,570,655),('Crazy Kids (feat. will.i.am)','dance pop',1201,3201,129,999),('Ooh La La (from \"The Smurfs 2\"\")\"','dance pop',1202,3202,480,646),('People Like Us','dance pop',1203,3203,428,987),('Overdose','dance pop',1204,3204,298,409),('Right Now - Dyro Radio Edit','barbadian pop',1205,3205,517,562),('Give It 2 U','dance pop',1206,3206,278,943),('Foolish Games','alaska indie',1207,3207,123,656),('Outta Nowhere (feat. Danny Mercer)','dance pop',1208,3208,223,344),('Freak','atl hip hop',1209,3209,527,296),('All of Me','neo mellow',1210,3210,77,867),('Stay With Me','pop',1211,3211,355,75),('Summer','dance pop',1212,3212,548,784),('Happy - From \"Despicable Me 2\"\"\"','dance pop',1213,3213,36,601),('Rude','pop',1214,3214,484,81),('Shake It Off','pop',1215,3215,380,945),('Dark Horse','dance pop',1216,3216,536,643),('Hey Brother','big room',1217,3217,125,643),('Maps','pop',1218,3218,470,300),('Treasure','pop',1219,3219,406,840),('Let Her Go','folk-pop',1220,3220,182,812),('Problem','dance pop',1221,3221,275,331),('Pompeii','metropopolis',1222,3222,122,325),('Team','art pop',1223,3223,178,228),('Love Me Again','pop',1224,3224,386,857),('Latch','house',1225,3225,202,602),('Adore You','dance pop',1226,3226,552,326),('Love Never Felt So Good','pop',1227,3227,121,105),('Burn','dance pop',1228,3228,535,409),('She Looks So Perfect','boy band',1229,3229,279,677),('Fancy','australian hip hop',1230,3230,113,927),('Talk Dirty (feat. 2 Chainz)','dance pop',1231,3231,295,194),('Gorilla','pop',1232,3232,373,381),('human','dance pop',1233,3233,272,260),('Young Girls','pop',1234,3234,560,197),('Wiggle (feat. Snoop Dogg)','dance pop',1235,3235,473,419),('Love Runs Out','dance pop',1236,3236,389,282),('This Is How We Do','dance pop',1237,3237,170,76),('Mmm Yeah (feat. Pitbull)','dance pop',1238,3238,599,857),('A Little Party Never Killed Nobody (All We Got)','dance pop',1239,3239,26,856),('#SELFIE','electropop',1240,3240,266,705),('Partition','dance pop',1241,3241,344,368),('Birthday','dance pop',1242,3242,551,421),('G.U.Y.','dance pop',1243,3243,413,71),('Stay The Night - Featuring Hayley Williams Of Paramore','complextro',1244,3244,494,419),('Let It Go - From \"Frozen / Single Version\"','dance pop',1245,3245,226,936),('Wings','neo mellow',1246,3246,366,148),('Can\'t Remember to Forget You (feat. Rihanna)','colombian pop',1247,3247,553,354),('Shot Me Down (feat. Skylar Grey) - Radio Edit','dance pop',1248,3248,137,372),('Say Something','neo mellow',1249,3249,582,468),('A Sky Full of Stars','permanent wave',1250,3250,524,863),('Come Get It Bae','dance pop',1251,3251,502,675),('Chandelier','australian dance',1252,3252,516,768),('XO','dance pop',1253,3253,52,97),('We Are One (Ole Ola) [The Official 2014 FIFA World Cup Song]','dance pop',1254,3254,412,981),('Not About Angels','neo mellow',1255,3255,181,953),('Drunk in Love','dance pop',1256,3256,67,312),('Anaconda','dance pop',1257,3257,201,938),('Boom Clap - From the Motion Picture Das Schicksal ist ein mieser Verräter','candy pop',1258,3258,571,865),('La La La (Brasil 2014) (feat. Carlinhos Brown)','colombian pop',1259,3259,495,794),('Tee Shirt - Soundtrack Version','neo mellow',1260,3260,274,893),('Words as Weapons','neo mellow',1261,3261,121,513),('You\'re Mine (Eternal)','dance pop',1262,3262,243,644),('Sheezus','dance pop',1263,3263,467,195),('Cannonball','hollywood',1264,3264,563,93),('It\'s On Again - Main Soundtrack','hip pop',1265,3265,151,641),('I Luh Ya Papi','dance pop',1266,3266,309,584),('Not a Bad Thing','dance pop',1267,3267,216,307),('Thinking out Loud','pop',1268,3268,269,934),('I\'m Not The Only One','pop',1269,3269,406,996),('The Hills','canadian contemporary r&b',1270,3270,496,865),('Love Yourself','canadian pop',1271,3271,355,211),('Uptown Funk','dance pop',1272,3272,135,807),('Take Me To Church','irish singer-songwriter',1273,3273,282,809),('Sugar','pop',1274,3274,266,391),('Sorry','canadian pop',1275,3275,285,114),('FourFiveSeconds','barbadian pop',1276,3276,186,696),('Love Me Like You Do - From \"Fifty Shades Of Grey\"\"\"','dance pop',1277,3277,74,378),('Earned It (Fifty Shades Of Grey) - From The \"Fifty Shades Of Grey\"\" Soundtrack\"','canadian contemporary r&b',1278,3278,101,179),('What Do You Mean?','canadian pop',1279,3279,346,54),('Stitches','canadian pop',1280,3280,88,996),('Want to Want Me','dance pop',1281,3281,540,649),('My House','dance pop',1282,3282,244,924),('Waves - Robin Schulz Radio Edit','tropical house',1283,3283,118,57),('Night Changes','boy band',1284,3284,380,119),('How Deep Is Your Love','dance pop',1285,3285,412,386),('Never Forget You','dance pop',1286,3286,480,110),('Love Me Harder','dance pop',1287,3287,423,123),('Animals','pop',1288,3288,57,683),('Blame','dance pop',1289,3289,523,824),('Worth It','dance pop',1290,3290,392,111),('Break Free','dance pop',1291,3291,370,280),('Don\'t','pop',1292,3292,249,911),('Elastic Heart','australian dance',1293,3293,584,335),('Rather Be (feat. Jess Glynne)','dance pop',1294,3294,313,441),('Hello','british soul',1295,3295,337,671),('Dear Future Husband','dance pop',1296,3296,135,207),('43776','dance pop',1297,3297,460,487),('The Heart Wants What It Wants','dance pop',1298,3298,431,278),('Hey Mama (feat. Nicki Minaj, Bebe Rexha & Afrojack)','dance pop',1299,3299,158,677),('Genie In a Bottle','dance pop',1300,3300,599,247),('Company','canadian pop',1301,3301,575,984),('Sing','pop',1302,3302,73,821),('Jealous - Remix','dance pop',1303,3303,483,586),('Really Don\'t Care','dance pop',1304,3304,195,831),('Downtown (feat. Melle Mel, Grandmaster Caz, Kool Moe Dee & Eric Nally)','dance pop',1305,3305,68,934),('Only Love Can Hurt Like This','british soul',1306,3306,228,956),('Heartbeat Song','dance pop',1307,3307,288,761),('Up','dance pop',1308,3308,178,273),('Trumpets','dance pop',1309,3309,227,566),('Runnin\' (Lose It All)','tropical house',1310,3310,335,836),('Same Old Love','dance pop',1311,3311,237,557),('I Want You To Know','complextro',1312,3312,114,998),('Lips Are Movin','dance pop',1313,3313,357,646),('I\'ll Show You','canadian pop',1314,3314,199,237),('Here','canadian contemporary r&b',1315,3315,166,593),('I Lived','dance pop',1316,3316,465,655),('Fireball (feat. John Ryan)','dance pop',1317,3317,146,454),('Easy Love','dance pop',1318,3318,65,567),('The Feeling','canadian pop',1319,3319,140,572),('I Really Like You','canadian pop',1320,3320,592,249),('BO$$','dance pop',1321,3321,239,453),('Sugar','pop',1322,3322,101,631),('Focus','dance pop',1323,3323,316,984),('All About That Bass','dance pop',1324,3324,525,532),('On My Mind','dance pop',1325,3325,475,785),('Love Me Like You','dance pop',1326,3326,357,56),('Broken Arrows','big room',1327,3327,189,258),('Booty','dance pop',1328,3328,508,705),('What Do You Mean? - Acoustic','canadian pop',1329,3329,285,523),('Mark My Words','canadian pop',1330,3330,504,398),('Lay It All on Me','dance pop',1331,3331,362,73),('American Oxygen','barbadian pop',1332,3332,558,205),('Bang Bang','australian pop',1333,3333,30,681),('Reality - Radio Edit','belgian edm',1334,3334,265,210),('Alive','australian dance',1335,3335,546,980),('Sugar (feat. Francesco Yates)','dance pop',1336,3336,556,647),('Been You','canadian pop',1337,3337,91,607),('Prayer in C - Robin Schulz Radio Edit','french indie pop',1338,3338,391,391),('See You Again (feat. Charlie Puth)','hip hop',1339,3339,142,198),('Heroes (we could be)','big room',1340,3340,115,331),('Feel The Light - From The \"Home\"\" Soundtrack\"','dance pop',1341,3341,486,497),('Perfect','boy band',1342,3342,236,116),('Ghosttown','dance pop',1343,3343,376,323),('Bang My Head (feat. Sia & Fetty Wap)','dance pop',1344,3344,548,755),('Bloodstream','pop',1345,3345,193,396),('Living For Love','dance pop',1346,3346,231,302),('Baby Don\'t Lie','dance pop',1347,3347,197,628),('Don\'t Be so Hard on Yourself','dance pop',1348,3348,26,68),('Steal My Girl','boy band',1349,3349,377,143),('Celebrate (From the Original Motion Picture \"Penguins of Madagascar\"\")\"','dance pop',1350,3350,481,803),('We Are Here','hip pop',1351,3351,187,659),('St Jude','art pop',1352,3352,247,562),('Yesterday (feat. Bebe Rexha)','dance pop',1353,3353,275,739),('Time of Our Lives','dance pop',1354,3354,504,841),('Sparks','dance pop',1355,3355,170,873),('Mr. Put It Down','dance pop',1356,3356,375,316),('Legendary Lovers','dance pop',1357,3357,224,901),('Spark The Fire','dance pop',1358,3358,287,454),('Run Run Run','dance pop',1359,3359,195,140),('Let Me Be Your Lover','dance pop',1360,3360,241,380),('Dangerous','dance pop',1361,3361,94,502),('L.A.LOVE (la la)','dance pop',1362,3362,514,860),('The Hills','canadian contemporary r&b',1363,3363,164,320),('Love Yourself','canadian pop',1364,3364,107,79),('Cake By The Ocean','dance pop',1365,3365,458,666),('Don\'t Let Me Down','electropop',1366,3366,274,648),('In the Name of Love','big room',1367,3367,433,589),('Into You','dance pop',1368,3368,277,495),('This Is What You Came For','dance pop',1369,3369,89,251),('Million Reasons','dance pop',1370,3370,107,934),('Needed Me','barbadian pop',1371,3371,279,572),('7 Years','danish pop',1372,3372,297,897),('CAN\'T STOP THE FEELING! (Original Song from DreamWorks Animation\'s \"TROLLS\"\")\"','dance pop',1373,3373,426,902),('Work from Home (feat. Ty Dolla $ign)','dance pop',1374,3374,593,847),('Scars To Your Beautiful','canadian contemporary r&b',1375,3375,185,956),('Like I\'m Gonna Lose You (feat. John Legend)','dance pop',1376,3376,490,51),('Work','barbadian pop',1377,3377,540,529),('Stitches','canadian pop',1378,3378,300,438),('Me, Myself & I','hip hop',1379,3379,54,918),('I Took A Pill In Ibiza - Seeb Remix','dance pop',1380,3380,416,776),('Dangerous Woman','dance pop',1381,3381,594,835),('Starving','dance pop',1382,3382,112,705),('Shout Out to My Ex','dance pop',1383,3383,511,654),('Electric Love','electropop',1384,3384,483,579),('Confident','dance pop',1385,3385,362,358),('Too Good','canadian hip hop',1386,3386,525,426),('Roses','electropop',1387,3387,423,234),('Cold Water (feat. Justin Bieber & MØ)','dance pop',1388,3388,439,464),('Me Too','dance pop',1389,3389,481,602),('Light It Up (feat. Nyla & Fuse ODG) [Remix]','dance pop',1390,3390,593,859),('Ain\'t Your Mama','dance pop',1391,3391,160,938),('Close','dance pop',1392,3392,484,761),('Toothbrush','dance pop',1393,3393,393,615),('All We Know','electropop',1394,3394,43,554),('Final Song','dance pop',1395,3395,314,650),('Company','canadian pop',1396,3396,368,315),('Hands To Myself','dance pop',1397,3397,593,812),('All I Ask','british soul',1398,3398,313,682),('Just Like Fire (From the Original Motion Picture \"Alice Through The Looking Glass\"\")\"','dance pop',1399,3399,413,144),('NO','dance pop',1400,3400,30,967),('Kill Em With Kindness','dance pop',1401,3401,141,372),('Cool Girl','dance pop',1402,3402,117,388),('Runnin\' (Lose It All)','tropical house',1403,3403,487,552),('Here','canadian contemporary r&b',1404,3404,581,934),('Perfect Illusion','dance pop',1405,3405,413,856),('PILLOWTALK','dance pop',1406,3406,406,226),('Out Of The Woods','pop',1407,3407,353,652),('Rise','dance pop',1408,3408,175,182),('Wherever I Go','dance pop',1409,3409,517,316),('Body Say','dance pop',1410,3410,28,546),('Don\'t Be A Fool','canadian pop',1411,3411,446,763),('LIKE I WOULD','dance pop',1412,3412,337,197),('Cheap Thrills','australian dance',1413,3413,160,188),('I Got You','dance pop',1414,3414,525,749),('Run Away With Me','canadian pop',1415,3415,393,223),('Cruel (feat. ZAYN)','dance pop',1416,3416,492,66),('Send My Love (To Your New Lover)','british soul',1417,3417,122,409),('WTF (Where They From)','dance pop',1418,3418,545,726),('Desire','dance pop',1419,3419,586,271),('When We Were Young','british soul',1420,3420,363,821),('I Know What You Did Last Summer','canadian pop',1421,3421,117,292),('Wish That You Were Here - From “Miss Peregrine’s Home for Peculiar Children” Original Motion Picture','art pop',1422,3422,443,678),('Hurts','dance pop',1423,3423,122,358),('Change','dance pop',1424,3424,576,64),('Make Me... (feat. G-Eazy)','dance pop',1425,3425,186,955),('Keeping Your Head Up','neo mellow',1426,3426,455,920),('True Colors','complextro',1427,3427,52,154),('Make Me Like You','dance pop',1428,3428,247,129),('Champagne Problems','dance pop',1429,3429,297,521),('Blown','dance pop',1430,3430,519,450),('Start','neo mellow',1431,3431,187,351),('Pep Rally','dance pop',1432,3432,389,66),('Higher','canadian pop',1433,3433,311,293),('Invitation','dance pop',1434,3434,131,582),('One Call Away (feat. Tyga) - Remix','dance pop',1435,3435,368,186),('Beautiful Birds (feat. Birdy)','folk-pop',1436,3436,198,971),('Little Lies','dance pop',1437,3437,373,418),('Do You Wanna Come Over?','dance pop',1438,3438,473,270),('BURNITUP!','dance pop',1439,3439,190,176),('Picky - Remix','latin',1440,3440,264,287),('Behind Your Back','canadian latin',1441,3441,542,137),('Million Years Ago','british soul',1442,3442,151,206),('Shape of You','pop',1443,3443,593,966),('Closer','electropop',1444,3444,495,526),('Starboy','canadian contemporary r&b',1445,3445,235,376),('Treat You Better','canadian pop',1446,3446,170,193),('That\'s What I Like','pop',1447,3447,444,676),('Let Me Love You','electronic trap',1448,3448,516,598),('I Feel It Coming','canadian contemporary r&b',1449,3449,240,177),('Mercy','canadian pop',1450,3450,56,185),('Side To Side','dance pop',1451,3451,369,945),('Stay','complextro',1452,3452,370,284),('It Ain\'t Me (with Selena Gomez)','edm',1453,3453,269,303),('Malibu','dance pop',1454,3454,312,726),('Something Just Like This','electropop',1455,3455,118,231),('Rockabye (feat. Sean Paul & Anne-Marie)','dance pop',1456,3456,231,437),('I Don’t Wanna Live Forever (Fifty Shades Darker)','dance pop',1457,3457,444,970),('My Way','dance pop',1458,3458,71,50),('I\'m the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)','dance pop',1459,3459,270,655),('Praying','dance pop',1460,3460,392,687),('Despacito - Remix','latin',1461,3461,38,576),('The Greatest','australian dance',1462,3462,462,416),('There for You','big room',1463,3463,577,394),('Paris','electropop',1464,3464,128,958),('Crying in the Club','dance pop',1465,3465,285,470),('Mama','dance pop',1466,3466,170,71),('Slide (feat. Frank Ocean & Migos)','dance pop',1467,3467,449,799),('Swish Swish','dance pop',1468,3468,364,952),('Chained To The Rhythm','dance pop',1469,3469,490,997),('Cold (feat. Future)','pop',1470,3470,54,71),('Love','art pop',1471,3471,280,770),('Reggaetón Lento (Remix)','boy band',1472,3472,229,817),('All I Ask','british soul',1473,3473,466,831),('First Time','edm',1474,3474,223,135),('The Cure','dance pop',1475,3475,592,92),('How Far I\'ll Go - From \"Moana\"\"\"','canadian contemporary r&b',1476,3476,382,171),('Bodak Yellow','pop',1477,3477,550,277),('Rich Love (with Seeb)','dance pop',1478,3478,177,610),('Tired','electro house',1479,3479,125,504),('Came Here for Love','dance pop',1480,3480,190,610),('24K Magic','pop',1481,3481,249,166),('Strip That Down (feat. Quavo)','dance pop',1482,3482,505,649),('Cut To The Feeling','canadian pop',1483,3483,95,778),('OK - Spotify Version','dance pop',1484,3484,270,831),('Bon appétit','dance pop',1485,3485,544,214),('Summer Bummer (feat. A$AP Rocky & Playboi Carti)','art pop',1486,3486,57,359),('Get Low (with Liam Payne)','complextro',1487,3487,542,310),('Kissing Strangers','dance pop',1488,3488,86,793),('Slow Hands','dance pop',1489,3489,540,890),('Younger Now','dance pop',1490,3490,493,290),('Body Moves','dance pop',1491,3491,459,675),('Reality (feat. Janieck Devy) - Radio Edit','belgian edm',1492,3492,49,499),('Angel','dance pop',1493,3493,573,455),('Touch (feat. Kid Ink)','dance pop',1494,3494,579,200),('We Don\'t Talk Anymore - DROELOE Remix','dance pop',1495,3495,112,159),('Love Incredible (feat. Camila Cabello)','downtempo',1496,3496,267,823),('No Vacancy (with Sebastián Yatra)','dance pop',1497,3497,263,101),('Rich Boy','big room',1498,3498,240,81),('Lust for Life (with The Weeknd)','art pop',1499,3499,183,73),('Greenlight (feat. Flo Rida & LunchMoney Lewis)','dance pop',1500,3500,276,419),('Influence','dance pop',1501,3501,194,142),('Remember I Told You','dance pop',1502,3502,539,98),('Messin\' Around','dance pop',1503,3503,594,990),('Water Under the Bridge','british soul',1504,3504,76,772),('Free Me','australian dance',1505,3505,566,919),('Kissing Strangers - Remix','dance pop',1506,3506,195,606),('A L I E N S','permanent wave',1507,3507,226,378),('One Kiss (with Dua Lipa)','dance pop',1508,3508,128,419),('Havana (feat. Young Thug)','dance pop',1509,3509,130,259),('I Like It','pop',1510,3510,186,849),('New Rules','dance pop',1511,3511,268,609),('There\'s Nothing Holdin\' Me Back','canadian pop',1512,3512,35,106),('no tears left to cry','dance pop',1513,3513,268,336),('IDGAF','dance pop',1514,3514,216,200),('In My Blood','canadian pop',1515,3515,561,597),('Wolves','dance pop',1516,3516,135,386),('Dusk Till Dawn - Radio Edit','dance pop',1517,3517,117,277),('Attention','dance pop',1518,3518,492,318),('Electricity (with Dua Lipa)','edm',1519,3519,152,149),('Love On The Brain','barbadian pop',1520,3520,205,346),('Let Me Go (with Alesso, Florida Georgia Line & watt)','dance pop',1521,3521,368,84),('Silence','brostep',1522,3522,319,533),('Sorry Not Sorry','dance pop',1523,3523,374,378),('Shallow - Radio Edit','dance pop',1524,3524,259,248),('These Days','dance pop',1525,3525,163,836),('What Lovers Do (feat. SZA)','pop',1526,3526,584,349),('Finesse - Remix; feat. Cardi B','pop',1527,3527,568,567),('Perfect Duet (Ed Sheeran & Beyoncé)','pop',1528,3528,225,191),('Bad At Love','dance pop',1529,3529,200,815),('Him & I (with Halsey)','hip hop',1530,3530,196,284),('Friends (with BloodPop®)','canadian pop',1531,3531,46,228),('Wild Thoughts (feat. Rihanna & Bryson Tiller)','dance pop',1532,3532,253,529),('My My My!','dance pop',1533,3533,177,761),('Capital Letters','dance pop',1534,3534,489,871),('Sick Boy','electropop',1535,3535,519,383),('Tequila','contemporary country',1536,3536,389,375),('Look What You Made Me Do','pop',1537,3537,287,329),('Youth (feat. Khalid)','canadian pop',1538,3538,586,838),('Bad Liar','dance pop',1539,3539,222,520),('Anywhere','dance pop',1540,3540,340,784),('Say Something','dance pop',1541,3541,386,65),('Chun-Li','dance pop',1542,3542,375,838),('Sign of the Times','dance pop',1543,3543,438,172),('Familiar','dance pop',1544,3544,540,417),('Let Me','dance pop',1545,3545,412,859),('Supernova','dance pop',1546,3546,213,247),('Nervous','canadian pop',1547,3547,373,433),('First Time','edm',1548,3548,476,640),('End Game','pop',1549,3549,225,271),('Mi Gente (feat. Beyoncé)','latin',1550,3550,473,471),('Lemon','hip hop',1551,3551,210,608),('For You (With Rita Ora)','dance pop',1552,3552,470,870),('Want To','dance pop',1553,3553,550,227),('What I Need (feat. Kehlani)','dance pop',1554,3554,545,153),('Wait','pop',1555,3555,587,708),('What About Us','dance pop',1556,3556,265,903),('Kissing Strangers','dance pop',1557,3557,252,674),('2U (feat. Justin Bieber)','dance pop',1558,3558,498,312),('Walk On Water (feat. Beyoncé)','detroit hip hop',1559,3559,363,655),('This Town','dance pop',1560,3560,364,991),('Girls (feat. Cardi B, Bebe Rexha & Charli XCX)','dance pop',1561,3561,385,718),('MOVE TO MIAMI','dance pop',1562,3562,440,768),('Miss You (with Major Lazer & Tory Lanez)','downtempo',1563,3563,299,897),('Filthy','dance pop',1564,3564,538,616),('Never Be the Same - Radio Edit','dance pop',1565,3565,583,846),('Ferrari','dance pop',1566,3566,243,229),('Supplies','dance pop',1567,3567,358,839),('Boom Boom','moroccan pop',1568,3568,163,579),('...Ready For It? - BloodPop® Remix','pop',1569,3569,156,958),('Drip (feat. Migos)','pop',1570,3570,435,143),('Tell Me You Love Me - NOTD Remix','dance pop',1571,3571,158,257),('Memories','pop',1572,3572,131,817),('Lose You To Love Me','dance pop',1573,3573,442,439),('Someone You Loved','pop',1574,3574,44,563),('Señorita','canadian pop',1575,3575,452,285),('How Do You Sleep?','pop',1576,3576,120,677),('South of the Border (feat. Camila Cabello & Cardi B)','pop',1577,3577,28,388),('Trampoline (with ZAYN)','electropop',1578,3578,520,841),('Happier','brostep',1579,3579,127,539),('Truth Hurts','escape room',1580,3580,415,229),('Good as Hell (feat. Ariana Grande) - Remix','escape room',1581,3581,210,54),('Higher Love','edm',1582,3582,249,745),('Only Human','boy band',1583,3583,429,118),('Beautiful People (feat. Khalid)','pop',1584,3584,417,246),('Sucker','boy band',1585,3585,445,449),('Don\'t Call Me Up','dance pop',1586,3586,305,335),('I Don\'t Care (with Justin Bieber)','pop',1587,3587,342,910),('Talk (feat. Disclosure)','alternative r&b',1588,3588,358,573),('Giant (with Rag\'n\'Bone Man)','dance pop',1589,3589,82,170),('Takeaway','electropop',1590,3590,513,71),('All Around The World (La La La)','big room',1591,3591,319,318),('Girls Like You (feat. Cardi B)','pop',1592,3592,402,933),('Call You Mine','electropop',1593,3593,519,159),('No Guidance (feat. Drake)','dance pop',1594,3594,55,299),('Antisocial (with Travis Scott)','pop',1595,3595,482,53),('Taki Taki (feat. Selena Gomez, Ozuna & Cardi B)','electronic trap',1596,3596,150,857),('Con Calma - Remix','latin',1597,3597,549,278),('Find U Again (feat. Camila Cabello)','dance pop',1598,3598,583,889),('Cross Me (feat. Chance the Rapper & PnB Rock)','pop',1599,3599,310,85),('No Brainer (feat. Justin Bieber, Chance the Rapper & Quavo)','dance pop',1600,3600,81,69),('Nothing Breaks Like a Heart (feat. Miley Cyrus)','dance pop',1601,3601,37,816),('Kills You Slowly','electropop',1602,3602,134,727);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 13:36:20