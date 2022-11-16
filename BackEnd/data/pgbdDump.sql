-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: k7e203.p.ssafy.io    Database: dokcho
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `boss`
--

DROP TABLE IF EXISTS `boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boss` (
  `mission_id` bigint NOT NULL,
  `attack` int DEFAULT NULL,
  `hp` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `defence` int DEFAULT NULL,
  PRIMARY KEY (`mission_id`),
  CONSTRAINT `FK9xqlhauj24d0sa9t3308y36rp` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`mission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boss`
--

LOCK TABLES `boss` WRITE;
/*!40000 ALTER TABLE `boss` DISABLE KEYS */;
INSERT INTO `boss` VALUES (1,80,400,'다람쥐',30),(2,110,600,'사슴',80),(3,140,700,'학',140),(4,170,800,'여우',150),(5,200,900,'개',200),(6,230,1000,'고양이',140),(7,260,1100,'소',350),(8,300,1500,'호랑이',300);
/*!40000 ALTER TABLE `boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characterquiz`
--

DROP TABLE IF EXISTS `characterquiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characterquiz` (
  `character_quiz_id` bigint NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`character_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characterquiz`
--

LOCK TABLES `characterquiz` WRITE;
/*!40000 ALTER TABLE `characterquiz` DISABLE KEYS */;
INSERT INTO `characterquiz` VALUES (1,'이순신','한산도 대첩\\t삼도수군통제사\\t거북선'),(2,'정약용','수원 화성\\t거중기\\t목민심서'),(3,'장영실','측우기\\t앙부일구\\t노비 출신'),(4,'주몽','활을 잘쏨\\t알에서 태어남\\t해모수의 아들'),(5,'김유신','화랑\\t가야 출신\\t삼국통일'),(6,'장보고','신라의 호족\\t청해진\\t해상왕'),(7,'강감찬','거란\\t귀주대첩\\t고려의 장군'),(8,'서희','거란\\t외교\\t강동 6주'),(9,'정몽주','단심가\\t고려의 충신\\t이방원'),(10,'안중근','이토 히로부미\\t독립 운동가\\t약지'),(11,'윤봉길','도시락 폭탄\\t독립 운동가\\t한인 애국단'),(12,'김구','독립 운동가\\t대한민국 임시정부\\t백범'),(13,'안창호','신민회\\t독립 운동가\\t도산'),(14,'윤동주','시인\\t독립 운동가\\t별 헤는 밤'),(15,'전봉준','동학 농민 운동\\t최병갑\\t녹두 장군'),(16,'계백','황산벌\\t백제의 무신\\t5천 결사대'),(17,'이성계','조선 건국\\t위화도 회군\\t왜구와 홍건적'),(18,'유관순','독립 운동가\\t3.1운동\\t이화 학당');
/*!40000 ALTER TABLE `characterquiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consonant`
--

DROP TABLE IF EXISTS `consonant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consonant` (
  `consonant_id` bigint NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `hint` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`consonant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consonant`
--

LOCK TABLES `consonant` WRITE;
/*!40000 ALTER TABLE `consonant` DISABLE KEYS */;
INSERT INTO `consonant` VALUES (1,'미륵사지 석탑','미ㄹㅅㅈ ㅅㅌ','ㅁㄹㅅㅈ ㅅㅌ','전라북도 익산시 미륵사 터에 있는 백제 무왕 때의 화강암 석탑. 우리나라 석탑 가운데 가장 크고 오래된 것으로, 목탑에서 석탑으로 이행하는 과정의 구조를 보여 주는 중요한 탑이다. 우리나라 국보로, 국보 정식 명칭은 ‘익산 미륵사지 석탑’이다.'),(2,'다보탑','다ㅂㅌ','ㄷㅂㅌ','불국사 대웅전 앞 서쪽의 석가탑 맞은편에 자리잡고 있는 탑으로, 전형적인 쌍탑가람의 배치이다. 두 탑을 현재와 같이 동서로 나란히 세운 까닭은 \'현재의 부처\'인 석가여래가 설법하는 것을 \'과거의 부처\'인 다보불(多寶佛)이 옆에서 옳다고 증명한다는《법화경(法華經)》의 내용에 따른 것이다.'),(3,'석가탑','석ㄱㅌ','ㅅㄱㅌ','불국사 대웅전 앞뜰에 동서로 세워진 두 탑 중 서쪽에 있는 탑이다. 탑의 원래 이름은 \'석가여래상주설법탑(釋迦如來常住設法塔)\'이며 흔히 줄여서 \'석가탑\'이라고도 한다. 두 탑을 현재와 같이 동서로 나란히 세운 까닭은 \'현재의 부처\'인 석가여래가 설법하는 것을 \'과거의 부처\'인 다보불(多寶佛)이 옆에서 옳다고 증명한다는《법화경(法華經)》의 내용에 따른 것이다.'),(4,'석굴암','석ㄱㅇ','ㅅㄱㅇ','경상북도 경주시 진현동의 토함산 중턱에 있는 신라의 호국사상을 잘 나타내는 암자이다. 석굴은 남북국시대에 통일신라의 김대성이 만들었다. 한국을 대표하는 석굴사원으로 불교 문화재의 걸작이자 국보 제 24호. 현대에 그 예술성과 가치를 인정받아서 토함산 아랫자락의 불국사와 함께 1995년 유네스코 세계문화유산으로 지정되었다.'),(5,'첨성대','첨ㅅㄷ','ㅊㅅㄷ','경상북도 경주시 인왕동에 있는 선덕여왕때 지어진 신라시대의 천문대. 국보 제31호이고, 그 원형을 유지하는 것 가운데 현존하는 세계에서 가장 오래된 천문대이다. 화강암 벽돌 362개을 이용해 석축 27단을 1년의 시간과 28수 별자리, 혹은 27대 국왕인 선덕여왕을 상징하는 의미로 보기도 한다. '),(6,'성덕대왕 신종','성ㄷㄷㅇ ㅅㅈ','ㅅㄷㄷㅇ ㅅㅈ','성덕대왕신종(聖德大王神鐘) 또는 에밀레종은 남북국시대 통일신라에서 제작된 동종(銅鍾)으로, 성덕왕을 기리고자 경덕왕 시기 주조를 시작하여 손자인 혜공왕 7년(771년) 12월 14일에 완성된 대종이다.'),(7,'경천사지 십층석탑','경ㅊㅅㅈ 십ㅊㅅㅌ','ㄱㅊㅅㅈ ㅅㅊㅅㅌ','국보 제86호로, 개성 경천사지 십층석탑이라고도 한다. 높이 13.5m로 한국에서는 드문 대리석으로 만든 불탑이다. 훗날 조선 세조 때 만들어진 원각사지 10층 석탑에 영향을 주었다.'),(8,'조선왕조실록','조ㅅㅇㅈㅅㄹ','ㅈㅅㅇㅈㅅㄹ','조선 왕조가 태조부터 철종에 이르기까지 25대, 472년 간의 역사를 편찬한 사서.'),(9,'직지심체요절','직ㅈㅅㅊㅇㅈ','ㅈㅈㅅㅊㅇㅈ','고려 공민왕 21년(1372)에 백운 화상(白雲和尙)이 석가모니의 직지인심견성성불의 뜻을 그 중요한 대목만 뽑아 해설한 책. 세계 최초의 금속 활자본으로 공인되었으며, 현재 프랑스 국립 도서관에 소장되어 있다.'),(10,'무구정광대다라니경','무ㄱㅈㄱ대ㄷㄹㄴㄱ','ㅁㄱㅈㄱㄷㄷㄹㄴㄱ','751년경 세계 최초로 목판으로 인쇄된 불경이다. 1966년 10월 경주의 불국사 경내에 있는 석가탑(釋迦塔)을 보수하기 위해 탑을 해체하면서 다량의 사리장엄구와 함께 발견되었다.'),(11,'무령왕릉','무ㄹㅇㄹ','ㅁㄹㅇㄹ','충청남도 공주시 송산리 고분군 내에 있는 삼국시대 백제 제25대 무령왕과 왕비의 능.'),(12,'천마총','천ㅁㅊ','ㅊㅁㅊ','경상북도 경주시 황남동에 있는 신라 시대의 옛 무덤이다. 1973년 이전까지는 155호 고분으로 부르다 발굴 조사를 하는 도중 천마도가 그려진 말다래가 나와 천마총이라고 부르게 되었다.'),(13,'금동여래입상','금ㄷㅇㄹㅇㅅ','ㄱㄷㅇㄹㅇㅅ','구리로 만들어 도금한 통일신라시대의 불상. 얼굴은 알맞게 살이 쪘고 오무린 입, 감은 눈과 얼굴 전체에 나타난 웃음이 무한한 감명을 주는 삼국시대의 고격(古格)을 그대로 간직한 불상이다.'),(14,'칠지도','칠ㅈㄷ','ㅊㅈㄷ','칼의 좌우로 각각 3개씩의 칼날이 가지 모양으로 뻗어 있어 칠지도(七支刀)라고 부른다. 칼의 양면에는 60여 자의 명문(銘文)이 금상감(金象嵌) 기법으로 새겨져 있다. 무기로서의 실용성보다는 제의(祭儀) 등에서 상징적인 용도로 쓰였을 것으로 추정된다. 칠지도는 광개토대왕비와 더불어 고대 일본과 한반도의 관계를 알려주는 가장 오랜 문자 사료이다.'),(15,'호우명그릇','호ㅇㅁㄱㄹ','ㅎㅇㅁㄱㄹ','415년(고구려 장수왕 3)에 광개토대왕(廣開土大王, 재위 391-413)을 기리기 위해 제작한 그릇인 호우(壺杅) 10개 중 현존하는 유일한 청동 유개합(有蓋盒: 뚜껑이 있는 그릇)이다. 1946년에 경주 호우총(壺杅塚, 140호 고분)을 발굴하던 중 출토되었으며, 6세기 신라시대 고분에서 출토된 고구려의 유물이라는 점에서 양국 간 우호관계를 드러내는 자료로 평가받았다.'),(16,'삼국유사','삼ㄱㅇㅅ','ㅅㄱㅇㅅ','고려후기 승려 일연이 신라·고구려·백제의 유사를 서술한 역사서.'),(17,'삼국사기','삼ㄱㅅㄱ','ㅅㄱㅅㄱ','1145년경에 김부식 등이 고려 인종의 명을 받아 편찬한 삼국시대의 역사서. 기전체의 역사서로서 본기 28권(고구려 10권, 백제 6권, 신라·통일신라 12권), 지(志) 9권, 표 3권, 열전 10권으로 이루어져 있다.'),(18,'동의보감','동ㅇㅂㄱ','ㄷㅇㅂㄱ','조선 시대의 의학자인 허준이 선조 임금의 명령으로 편찬한 의학 서적. 중국과 우리나라의 의학 서적을 하나로 모아 완성한 동양 의학의 백과사전이라는 점을 인정받아 2009년에 유네스코 세계 기록 유산으로 등재되었다.'),(19,'흥인지문','홍ㅇㅈㅁ','ㅎㅇㅈㅁ','흥인지문(興仁之門)은 조선의 수도인 한양의 4대문(大門) 중의 하나로 동쪽의 대문이다. 속칭은 동대문(東大門)으로, 이는 조선 초기부터 불린 이름이다.'),(20,'보신각','보ㅅㄱ','ㅂㅅㄱ','서울특별시 종로구 종로 2가에 있는 종각. 서울보신각종을 걸어놓기 위해 만든 종각이다. 매년 12월 31일 자정에 이곳에서 \'제야의 종\' 타종행사가 열린다.'),(21,'난중일기','난ㅈㅇㄱ','ㄴㅈㅇㄱ','이순신(李舜臣, 1545~1598) 장군의 진중일기(陣中日記)로, 임진왜란(1592~1598) 때에 쓴 친필일기이다. 『난중일기』는 임진왜란이 발발한 1592년 1월부터 이순신 장군이 마지막으로 치른 노량(露梁) 해전에서 결정적인 승리를 앞두고 전사하기 직전인 1598년 11월까지 거의 날마다 적은 기록으로 총 7책 205장의 필사본으로 엮어져 있다.'),(22,'거북선','거ㅂㅅ','ㄱㅂㅅ','거북선은 임진왜란 당시 수전에서 활약한 거북 모양의 전투선이다. 정식 명칭은 귀선龜船이다. 거북선은 조선 수군의 주력 전선인 판옥선의 상체 부분을 개량해서 덮개를 덮은 구조이다.'),(23,'판옥선','판ㅇㅅ','ㅍㅇㅅ','판옥선(板屋船)은 임진왜란 때 크게 활약한 전선(戰船)으로 명종 때 개발된 조선시대의 대표적인 전투선이다. 거북선의 모형(母型)으로, 판옥전선이라고도 한다.'),(24,'신기전','신ㄱㅈ','ㅅㄱㅈ','조선시대에 사용된 로켓추진 화살. 1448년(세종 30년) 제작된 병기(兵器)로서 고려 말기에 최무선(崔茂宣)이 화약국에서 제조한 로켓형 화기(火器)인 주화(走火)를 개량한 것이다.'),(25,'감은사지 삼층석탑','감ㅇㅅㅈ 삼ㅊㅅㅌ','ㄱㅇㅅㅈ ㅅㅊㅅㅌ','경상북도 경주시 문무대왕면 감은사지에 있는 통일신라시대 초기의 2기의 화강석제 석탑. 2중의 기단에 사각형으로 쌓아올린 3층 석탑으로, 동·서 두 탑이 같은 규모와 구조이다.경상북도 경주시 문무대왕면 감은사지에 있는 통일신라시대 초기의 2기의 화강석제 석탑. 2중의 기단에 사각형으로 쌓아올린 3층 석탑으로, 동·서 두 탑이 같은 규모와 구조이다.'),(26,'용비어천가','용ㅂㅇㅊㄱ','ㅇㅂㅇㅊㄱ','1445년(세종 27) 4월에 편찬되어 1447년(세종 29) 5월에 간행된, 조선왕조의 창업을 송영(頌詠)한 노래이다. 모두 125장에 달하는 서사시로서, 한글로 엮은 책으로는 한국 최초의 것이다.'),(27,'대동여지도','대ㄷㅇㅈㄷ','ㄷㄷㅇㅈㄷ','조선후기 지리학자 김정호가 동서와 남북의 이어보기에 초점을 맞춘 병풍식의 첩 형식을 채택하여 1861년에 간행한 지도집.'),(28,'농사직설','농ㅅㅈㅅ','ㄴㅅㅈㅅ','조선 세종 때 발행된 농사 책이다. 지금까지 전해지는 농사 책 가운데 가장 오래되었으며 여러 가지 농사 기술 정보가 담겨 있다. 정초, 변호문 등의 학자들이 세종의 명령을 받아서 만들었다.'),(29,'팔만대장경','팔ㅁㄷㅈㄱ','ㅍㅁㄷㅈㄱ','총 81,258개의 목판 양면에 새겨 넣은 것으로, 팔만대장경이라 부른다. 팔만대장경은 모든 판목의 글자체가 동일하고 아름다워 당시 우리나라의 뛰어난 목판 인쇄술을 보여주고 있다.'),(30,'정림사지 오층석탑','정ㄹㅅㅈ 오ㅊㅅㅌ','ㅈㄹㅅㅈ ㅇㅊㅅㅌ','백제오층석탑이라고도 한다. 화강석으로 되었으며, 높이는 8.33m이다. 익산 미륵사지 석탑과 함께 2기만 남아 있는 백제시대의 석탑이다.'),(31,'부석사','부ㅅㅅ','ㅂㅅㅅ','경북 영주시 부석면 북지리 봉황산에 있는 절. 대한불교조계종 제16교구 본사인 고운사의 말사이다. 676년(문무왕 16) 2월에 의상이 왕명으로 창건한 뒤 화엄종의 중심 사찰로 삼았다.'),(32,'불국사','불ㄱㅅ','ㅂㄱㅅ','경상북도 경주시 토함산(吐含山) 서쪽 중턱에 있는 남북국시대 통일신라 김대성의 발원으로 창건한 사찰.'),(33,'분황사','분ㅎㅅ','ㅂㅎㅅ','634년(선덕여왕 3) 경주에 세운 절이다. 이 절의 석탑은 신라 석탑 중 가장 오래된 석탑이다. 솔거가 그린 분황사의 관음보살이 유명하다. 자장과 원효가 이 절에 머물렀다. 왕분사(王芬寺)라고도 한다.'),(34,'해인사','해ㅇㅅ','ㅎㅇㅅ','경상남도 합천군 가야면 가야산(伽倻山)에 있는 남북국시대 통일신라의 승려 순응과 이정이 창건한 사찰.'),(35,'훈민정음','훈ㅁㅈㅇ','ㅎㅁㅈㅇ','1443년에 창제된 훈민정음에 대한 한문해설서.《훈민정음예의본(訓民正音例義本)》과 《훈민정음해례본(訓民正音解例本)》이 있다.'),(36,'금동미륵보살반가사유상','금ㄷㅁㄹㅂㅅ반ㄱㅅㅇㅅ','ㄱㄷㅁㄹㅂㅅㅂㄱㅅㅇㅅ','삼국 시대에 만들어진 불상 중 하나이다. 반가부좌 자세를 한 미륵보살을 구리에 금을 입혀 표현한 불상이기 때문에 금동미륵보살 반가사유상이라고 부른다.'),(37,'수원 화성','수ㅇ ㅎㅅ','ㅅㅇ ㅎㅅ','조선 22대 왕 정조가 뒤주 속에서 불운하게 세상을 떠난 아버지 사도세자의 능을 양주에서 화산으로 이전하고 그 부근 주민들을 팔달산 아래 현재 수원으로 옮기면서 축성한 성이다.'),(38,'측우기','측ㅇㄱ','ㅊㅇㄱ','1440년을 전후하여 발명되어 1442년(세종 24)부터 20세기 초 일제의 통감부에 의해 근대적 기상관측이 시작될 때까지 조선 왕조의 공식적인 우량 관측기구로 사용된 도구로, 현대의 우량계에 해당한다. 금속제 원통형 그릇에 빗물을 받아 표준화된 눈금의 자로 그 깊이를 측정했으며, 같은 규격의 기구와 자를 서울의 천문관서와 지방의 관아에 설치하여 전국적으로 우량 관측 및 보고 체계를 갖추었다.'),(39,'앙부일구','앙ㅂㅇㄱ','ㅇㅂㅇㄱ','천구의 모양을 본 떠 만든 반구 형태의 해시계. 앙부일구는 세종 때에 처음 제작하였는데, 종묘 남쪽 거리와 혜정교 옆에 설치하여 공중용 해시계로 사용하였다. 앙부일구는 오목한 반구 안에 북극을 지향하는 영침과 영침의 그림자를 받는 시반면으로 이루어져 있다. 시반면에는 24기(12절기와 12중기)를 나타내는 13개 계절선과 15분 간격의 시간을 나타내는 시각선이 있다.'),(40,'혼천의','혼ㅊㅇ','ㅎㅊㅇ','천체의 운행과 그 위치를 측정하여 천문시계의 구실을 하였던 기구로 선기옥형, 혼의, 혼의기라고도 한다. 삼국시대 후기에서 통일신라 시대와 고려 시대에 사용했을 것으로 추정된다. 문헌상에 남아있는 제작기록은 1433(세종 15)가 처음이다.'),(41,'혼일강리역대국도지도','혼ㅇㄱㄹㅇㄷ국ㄷㅈㄷ','ㅎㅇㄱㄹㅇㄷㄱㄷㅈㄷ','1402년(태종 2)에 대사성 권근(權近), 좌정승 김사형(金士衡), 우정승 이무(李茂), 검상 이회(李薈)가 만든 세계지도를 15세기 후반에서 16세기 초반 사이에 모사한 지도이다. 지도에는 중앙에 중국이 포진하고 있고 동쪽으로 조선, 남쪽 바다에는 일본이 위치해 있으며 서쪽에는 아라비아 반도, 아프리카·유럽 대륙이 그려져 있다. 당시의 세계지도로는 동서양을 막론하고 가장 뛰어난 지도중의 하나로 평가되고 있다.');
/*!40000 ALTER TABLE `consonant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'고조선의 청동 검','청동 검','STORY_ITEM'),(2,'고구려군의 깃발','삼족오의 깃발','STORY_ITEM'),(3,'신라의 천문대','첨성대','STORY_ITEM'),(4,'고려의 신비로운 도자기','고려청자','STORY_ITEM'),(5,'조선의 해시계','앙부일구','STORY_ITEM'),(6,'이순신의 일기','난중일기','STORY_ITEM'),(7,'대한민국의 국기','태극기','STORY_ITEM'),(8,'','','STORY_ITEM'),(11,'고조선의 청동 거울','청동 거울','STORY_ITEM'),(12,'광개토대왕의 업적을 기리기 위해 세워진 비','광개토대왕릉비','STORY_ITEM'),(13,'아름다운 신라의 금관','금관','STORY_ITEM'),(14,'외적을 물리치기 위해 만들어진 고려의 대장경','팔만대장경','STORY_ITEM'),(15,'백성을 가르치는 바른 소리','훈민정음','STORY_ITEM'),(16,'임진왜란에서 활약한 조선 수군의 군함','거북선','STORY_ITEM'),(17,'대한민국의 국기','태극기','STORY_ITEM'),(18,'허준이 편찬한 의학 서적','동의보감','STORY_ITEM'),(21,'풀깨비의 체력을 50 회복 시켜준다.','회복 물약(소)','USE_ITEM'),(22,'상대방의 공격을 1회 무효화 한다.','공격 무효화','USE_ITEM'),(23,'공격을 2번 연속 사용한다.','더블 어택','USE_ITEM'),(24,'아이템을 사용한 배틀에서 공격력을 20% 증가 시켜준다.','공격력 증가','USE_ITEM'),(25,'전체 체력의 80%를 희생하여 상대방을 10%확률로 즉사시키는 주문을 발동한다.','희생','USE_ITEM'),(28,'죽음에 이르는 그 어떤 공격이라도 체력 1을 보존하게 한다.','생존','USE_ITEM'),(29,'사용한 공격의 데미지의 30%를 체력으로 전환한다.','흡혈','USE_ITEM'),(30,'아이템을 사용한 턴에 한하여 상대방의 공격력을 30 감소 시켜준다.','무력화','USE_ITEM'),(31,'풀깨비의 체력을 200회복 시켜 준다.','회복 물약(중)','USE_ITEM'),(32,'풀깨비의 체력을 500회복 시켜 준다.','회복 물약(대)','USE_ITEM'),(33,'상대방에게 30의 피해를 주고 10턴 동안 상대방 턴이 시작할 때 마다 10 데미지를 준다.','독극물','USE_ITEM'),(34,'상대방를 기절시켜 행동하지 못하게 만든다.','기절','USE_ITEM'),(35,'사용한 배틀에서 방어력 30%를 증가시킨다.','방어력 증가','USE_ITEM');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mission` (
  `mission_id` bigint NOT NULL AUTO_INCREMENT,
  `characters` varchar(255) DEFAULT NULL,
  `exp` int DEFAULT NULL,
  `item` bigint DEFAULT NULL,
  `line1` varchar(1000) DEFAULT NULL,
  `line2` varchar(1000) DEFAULT NULL,
  `line3` varchar(1000) DEFAULT NULL,
  `line4` varchar(1000) DEFAULT NULL,
  `relic` bigint DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `line0` varchar(1000) DEFAULT NULL,
  `next` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` VALUES (1,'단군',100,1,'거기 아해야, 잠시 날 도와주지 않으련?\\t나는 고조선을 세운 단군이라고 한단다.\\t며칠 전에 우리 고조선의 보물 중 하나인 청동 거울을 다람쥐가 훔쳐가 버렸단다.\\t날 좀 도와주지 않겠니?\\t고맙구나.','우헤헹! 나는 호랑이 님의 부하 다람쥐야!\\t청동 거울의 신비한 빛은 우리 호랑이 님께 어울리지!\\t돌려 달라고? 너 나보다 고조선에 대해 잘 알아?','…생각보다 잘 아네?\\t그래도 안 돌려 줄 거야. 너 나보다 잘 싸워?','청동 거울을 찾아주었구나. 고맙네.\\t이 청동 거울은 청동 방울, 청동 검과 함께 하늘이 우리에게 내려준 3가지 보물 중 하나이지.\\t자네에게는 이 청동 검을 주겠네.\\t호랑이를 찾는다고 했지? 미안하네만 호랑이는 우리 어머니와 알던 사이이고 난 소식을 못 들은 지 좀 됐어.\\t그러고 보니 고구려에서 호랑이에 현상금을 걸었다던데… 한번 찾아가 보는 게 어떤가?',11,'단군 할아버지는 예전에 호랑이와 알던 사이라고 한다. 단군 할아버지를 찾아가 단서를 찾아보자.','이 곳에 터를 잡으면 좋은 나라가 될게야.','단군을 찾아가자.\\t단군을 찾아가자.\\t왼쪽 숲에 숨어 있는 다람쥐를 찾아보자.\\t다람쥐에게 말을 걸어 유물을 돌려받자.\\t청동거울을 단군에게 돌려주러 가자.\\t길을 따라 장수왕을 도와주러 가자.'),(2,'장수왕',100,2,'누구냐!!!!!\\t아, 허준 선생의 제자로구나. 자네 사슴을 보지 못했나?\\t호랑이의 부하인 사슴 녀석이 선왕의 업적을 기리는 능비를 뽑아가 버렸네. 용서할 수 없어!\\t자네도 호랑이를 찾고 있다고? 그럼 나를 좀 도와주게.','하하하! 나는 호랑이 님을 모시는 사슴이다!\\t이 능비는 정복왕 광개토대왕의 것이라며? 그 업적은 이제 호랑이 님의 것이다!!\\t나보다 삼국 시대에 대해 모르는 녀석에게는 돌려줄 수 없지!','…흠 그래도 쉽게 돌려줄 순 없지!\\t내 뿔은 장식이 아니라고!!','오오! 능비를 되찾았군!!\\t훌륭하다! 내 상을 내리도록 하지!!\\t이것은 우리 고구려 군의 삼족오 깃발일세.\\t호랑이를 찾고 있다고 했지.. 듣자 하니 신라에서도 문제가 있었다더군. 한번 찾아가 보는 게 어떤가?',12,'고구려가 호랑이에게 현상금을 걸었다고 한다. 장수왕을 찾아가 단서를 찾아보자.','나는 오래 살아서 장수왕이라네.','장수왕을 찾아가자.\\t장수왕을 찾아가자.\\t장수왕 왼쪽 아래 숲에 숨어 있는 사슴을 찾아보자.\\t사슴에게 말을 걸어 유물을 돌려받자.\\t광개토대왕릉비를 장수왕에게 돌려주러 가자.\\t오른쪽 첨성대 근처의 선덕여왕을 도와주러 가자.'),(3,'선덕여왕',150,3,'어서오게. 자네가 고구려를 도와줬다지?\\t마침 우리도 호랑이 때문에 속을 썩이고 있던 참이었네.\\t호랑이의 부하 왜가리가 우리 신라의 금관을 물고 날아가 버렸어.\\t혼란을 틈타 비담이 난을 일으키는 바람에 왜가리를 쫓을 수도 없는 참이었지… 자네가 좀 도와줄 수 있겠나?','까아악!! 나는 호랑이 님의 수하 왜가리!!\\t이 아름다운 금관은 하늘을 지배하는 나에게 어울리지~ 물론 호랑이 님께 바칠 거지만!!\\t나보다 통일 신라 시대에 대해 잘 안다면 금관이 어울릴지도?','제법인데?\\t하지만 금관이 어울린다 해서 돌려 준다는 건 아니라고?','금관을 찾아왔나? 고맙네. 한시름 놓을 수 있겠군.\\t보답으로 이걸 주지. 이번에 짓기로 한 첨성대의 모형이네.\\t그러고 보니 지난 밤 고려의 군사가 이동하는 걸 봤는데… 호랑이와 관련이 있을 지도 모르겠군. 한번 찾아가 보는게 어떤가?',13,'신라가 호랑이 때문에 곤경에 처했다고 한다. 선덕여왕을 찾아가 단서를 찾아보자.','내가 바로 이 땅 최초의 여왕이다.','선덕여왕을 찾아가자.\\t선덕여왕을 찾아가자.\\t첨성대 뒤쪽에 숨어 있는 왜가리를 찾아가자.\\t왜가리에게 말을 걸어 유물을 돌려받자.\\t금관을 선덕여왕에게 돌려주러 가자.\\t길을 따라 창덕궁 앞 공민왕을 찾아가자.'),(4,'공민왕',150,4,'신돈이냐? 아니군… 자네는 누구냐?\\t호랑이? 그 놈의 부하가 어제 팔만대장경을 훔쳐갔지.\\t팔만대장경은 자주 정신의 상징과도 같은 물건인데 어찌…\\t그래, 팔만대장경을 찾아주면 호랑이에 대한 정보를 주마.\\t어제 나타난 놈의 부하는 여우다.','히히히! 나는 호랑이 님의 오른팔 여우란다!\\t내 변신 능력과 이 팔만대장경의 가르침만 있으면 우리 호랑이 님을 부처로 만들 수 있겠지!\\t너 고려 시대에 대해 좀 알고 있니?','보기보다 똑똑하구나!\\t그럼 보기보다 강한지 확인해볼까?','팔만대장경을 찾아왔다고? 아주 잘했다!!\\t보답으로 이 고려 청자를 주마. 아름답지?\\t그리고 이건 여우가 떨어트린 쪽지다. 자네라면 읽을 수 있겠지.',14,'지난 밤, 고려의 군사가 대규모로 이동하는 걸 목격했다고 한다. 공민왕을 찾아가 단서를 찾아보자.','이 나라엔 개혁이 필요하다!','공민왕을 찾아가자.\\t공민왕을 찾아가자.\\t창덕궁 아래 쪽 숲에 숨어 있는 여우를 찾아가자.\\t여우에게 말을 걸어 유물을 돌려받자.\\t팔만 대장경을 공민왕에게 돌려주러 가자.\\t길을 따라 좌측 끝까지 가면 세종대왕을 만날 수 있다.'),(5,'세종대왕',200,5,'오 허준 선생의 제자 아닌가? 선생은 잘 계신가?\\t그렇군… 실은 나도 얼마 전에 훈민정음을 빼앗겨 버렸네만…\\t자네가 되찾아 주겠다고? 고맙구나!\\t훈민정음은 감투를 쓴 개가 훔쳐가 버렸다고 하네. 부디 찾아주게.','멍멍!\\t멍멍멍멍!','멍멍멍멍!\\t….멍!','찾아왔는가? 고맙네!\\t아마 사람 말을 배우고 싶었던 게지… 가엾은 것들\\t그래 상으로 이 앙부일구를 주지.\\t이게 있으면 해가 떠있는 동안에는 시간을 알 수 있을걸세.\\t듣자 하니 남쪽 바다에서 시끄러운 소동이 있었다던데. 자네가 찾고 있는 호랑이와 관련이 있지 않겠나?',15,'한글로 작성된 동물의 쪽지를 발견했다. 세종대왕을 찾아가 단서를 찾아보자.','조선의 궁궐에 당도한 것을 환영하오, 낯선이여. ','세종대왕을 찾아가자.\\t세종대왕을 찾아가자.\\t왼쪽 아래 마을에 돌아다니는 개를 찾아가자.\\t무슨 소리인지 모르겠지만 유물을 받아내기 위해 한 번 더 말을 걸어보자.\\t훈민정음을 들고 세종대왕에게 돌아가자.\\t길을 따라 바다 옆에 있는 이순신을 찾아가자.'),(6,'이순신',200,6,'그래, 무슨 일인가?\\t…그렇군. 우리 군에서도 며칠 전 호랑이의 부하인 고양이가 사건을 일으켰지.\\t거북선 한 척을 훔쳐 가버렸네. 안에 무기로 가득 차서 상당히 위험한 상황이야.\\t이런… 왜놈들이다. 자네에게 고양이를 맡겨도 되겠나? 부탁하지.','야옹~ 나는 호랑이 파의 귀염둥이 고양이~\\t이 거북선과 무기들만 있으면 이 땅은 호랑이 님의 것이야!\\t돌려 달라고? 너 건방지구나?','음~ 나와 말을 섞을 정도 머리는 되네?\\t그럼 한 번 뺏어가봐!','다녀왔나? 나도 지금 왜선 10척을 바다에 수장시키고 왔지.\\t음, 멀쩡하군! 무기도 다 그대로야! 수고했네.\\t보답으로 이 거북선 안에서 뭐든지 하나 가져가게.\\t응? 내 일기를 달라고? 안될 건 없네만…\\t근데 그 일기 사이에 있는 천은 뭔가? 고양이가 흘리고 간 모양이군. 한 번 조사해보게.',16,'남쪽 바다가 시끄럽다는 소문을 들었다. 이순신을 찾아가 단서를 찾아보자.','죽고자 하면 살 것이요. 살고자 하면 죽을 것이다.','이순신을 찾아가자.\\t이순신을 찾아가자.\\t호수 주변에 숨어 있는 고양이를 찾아가자.\\t고양이로부터 유물을 받아내자.\\t거북선을 들고 이순신에게 돌아가자.\\t길 끝에 있는 유관순을 찾아가자.'),(7,'유관순',250,7,'안녕하세요? 누구시죠? 그건…\\t네 저희가 만든 태극기에요. 사실 어제 모두 도둑맞아 버려서 곤란하던 참이었어요.\\t저희를 도와주신다고요? 정말 감사합니다!\\t태극기는 호랑이의 부하인 소가 훔쳐갔어요! 제발 찾아주세요!','음메~ 나는 소야.\\t호랑이 님이 태극기 훔쳐서 일본 순사한테 일러버리라 했어.\\t응? 돌려 달라고? 너 일제강점기에 대해 좀 알아?','음메~ 너 좀 아는구나?\\t그럼 내가 힘이 세다는 것도 알아?','와! 감사합니다!\\t이제 이 태극기를 갖고 천안에서 만세 운동을 할 거에요!\\t태극기 한 장 드릴게요! 부디 함께 해 주세요!\\t참, 호랑이는 백두산에 숨어 있다고 하던데… 한 번 찾아가 보시겠어요?',17,'찢어진 태극기를 발견했다. 유관순을 찾아가 단서를 찾아보자.','대한 독립 만세!','유관순을 찾아가자.\\t유관순을 찾아가자.\\t유관순 아래 쪽에 있는 밭에서 소를 찾자.\\t소에게 말을 걸어 유물을 돌려받자.\\t태극기를 들고 유관순에게 돌아가자.\\t오르막길의 끝, 백두산에서 호랑이를 찾자.'),(8,'호랑이',250,8,'어흥! 내가 있는 곳을 용케도 찾아왔구나!\\t올라와라!','오랜만이다. 허준의 제자…\\t동의보감을 돌려 달라고? 그럼 퀴즈를 맞춰 보시지.','어흥!역시 머리 쓰는 건 나랑 안 맞아!\\t덤벼라!','오오… 동의보감을 찾아왔구나!',18,'호랑이가 숨은 곳을 알아냈다. 호랑이를 혼내주자.','어흥!','호랑이를 찾아가자.\\t호랑이를 찾아가자.\\t호랑이를 찾아가자.\\t호랑이를 찾아가자.\\t허준에게 돌아가자.\\t');
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster` (
  `monster_id` bigint NOT NULL AUTO_INCREMENT,
  `attack` int DEFAULT NULL,
  `hp` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `defence` int DEFAULT NULL,
  `growth_attack` int DEFAULT NULL,
  `growth_defence` int DEFAULT NULL,
  `growth_hp` int DEFAULT NULL,
  PRIMARY KEY (`monster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
INSERT INTO `monster` VALUES (1,100,400,'개나리몬',70,30,30,100),(2,80,500,'도꼬마리몬',100,20,50,150),(3,150,300,'마늘몬',50,40,10,100),(4,130,650,'석류몬',70,35,40,80);
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `quiz_id` bigint NOT NULL AUTO_INCREMENT,
  `answer1` varchar(255) DEFAULT NULL,
  `answer2` varchar(255) DEFAULT NULL,
  `answer3` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL,
  `mission_id` bigint DEFAULT NULL,
  `answer4` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `FK8l4mnrefd1yvtrf8rgshbayc1` (`mission_id`),
  CONSTRAINT `FK8l4mnrefd1yvtrf8rgshbayc1` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`mission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'청동 거울','고인돌','간석기','(가) 시대와 관련 있는 유물이 아닌 것은?','간석기',1,'비파형 동검','https://img.comcbt.com/cbt/data/k3/k320200208/k320200208m1.gif?1581317351'),(2,'고인돌 덮개돌 끌기','철제 농기구로 밭 일구기','갈판과 갈돌로 곡식 갈기','(가)에 들어갈 내용으로 가장 적절한 것은?','갈판과 갈돌로 곡식 갈기',1,'비파형 동검 모형 만들기','https://img.comcbt.com/cbt/data/k3/k320181027/k320181027m1.gif?1540875895'),(3,'비파형 동검','빗살무늬 토기','철제 갑옷','다음 유적이 만들어진 시기에 사용되었던 유물로 옳은 것은?','빗살무늬 토기',1,'청동 거울','https://img.comcbt.com/cbt/data/k3/k320130126/k320130126m1.gif?1476226581'),(4,'살수 대첩','행주 대첩','진포 대첩','밑줄 그은 ‘나’가 이끈 전투로 옳은 것은?','살수 대첩',2,'황산 대첩','https://img.comcbt.com/cbt/data/k3/k320191027/k320191027m3.gif?1573301993'),(5,'무령왕','진흥왕','고국천왕','다음 가상 인터뷰에 등장하는 왕으로 옳은 것은?','소수림왕',2,'소수림왕','https://img.comcbt.com/cbt/data/k3/k320161022/k320161022m5.gif?1477283995'),(6,'법흥왕','근초고왕','의자왕','밑줄 그은 ‘이 왕’으로 옳은 것은?','법흥왕',2,'광개토대왕','https://img.comcbt.com/cbt/data/k3/k320160123/k320160123m5.gif?1476226674'),(7,'김유신','김춘추','장보고','다음 인물 카드의 주인공으로 옳은 것은?','김유신',2,'최치원','https://img.comcbt.com/cbt/data/k3/k320131026/k320131026m6.gif?1476226608'),(8,'의창','환곡','상평창','다음 대본에 등장하는 왕이 실시한 제도로 옳은 것은?','진대법',2,'진대법','https://img.comcbt.com/cbt/data/k3/k320140524/k320140524m2.gif?1476226618'),(9,'골품 제도','음서 제도','화랑 제도','밑줄 그은 ‘신분 제도’로 옳은 것은?','골품 제도',3,'화백 제도','https://img.comcbt.com/cbt/data/k3/k320130126/k320130126m8.gif?1476226588'),(10,'도침','복신','흑치상치','(가)에 들어갈 인물로 옳지 않은 것은?','연개소문',3,'연개소문','https://img.comcbt.com/cbt/data/k3/k320141025/k320141025m12.gif?1476226631'),(11,'이순신','정중부','강감찬','다음 설명에 해당하는 인물로 옳은 것은?','장보고',3,'장보고','https://img.comcbt.com/cbt/data/k3/k320120818/k320120818m7.gif?1476226574'),(12,'고주몽','왕건','대조영','(가) 나라를 세운 인물로 옳은 것은?','대조영',3,'김수로','https://img.comcbt.com/cbt/data/k3/k320131026/k320131026m9.gif?1476226608'),(13,'왕건','궁예','신검','다음 학생이 생각하고 있는 인물로 옳은 것은?','궁예',3,'견훤','https://img.comcbt.com/cbt/data/k3/k320190126/k320190126m11.gif?1549750835'),(14,'삼별초','별무반','별기군','다음 가상 상장을 받은 사람이 조직한 특수 부대로 옳은 것은?','별무반',4,'훈련도감','https://img.comcbt.com/cbt/data/k3/k320131026/k320131026m12.gif?1476226602'),(15,'(가)','(나)','(다)','고려 시대 문화관에 들어 있는 문화유산으로 적절하지 않은 것은?','(가)',4,'(라)','https://img.comcbt.com/cbt/data/k3/k320111022/k320111022m14.gif?1476226546'),(16,'망이·망소이의 난','무신정변','원종과 애노의 난','다음 만화 장면에 해당하는 사건으로 옳은 것은?','무신정변',4,'갑신정변','https://img.comcbt.com/cbt/data/k3/k320190126/k320190126m20.gif?1549750836'),(17,'만적의 난','팔만대장경판 제작','망이·망소이의 난','연표의 (가) 시기에 있었던 사실로 옳지 않은 것은?','팔만대장경판 제작',4,'윤관의 동북 9성 개척','https://img.comcbt.com/cbt/data/k3/k320130126/k320130126m17.gif?1476226583'),(18,'태조','광종','공민왕','(가)에 들어갈 왕으로 옳은 것은?','광종',4,'충렬왕','https://img.comcbt.com/cbt/data/k3/k320180811/k320180811m14.gif?1535439853'),(19,'측우기 제작','농사직설 보급','수원 화성 축조','밑줄 그은 ‘왕’의 업적으로 옳지 않은 것은?','수원 화성 축조',5,'삼강행실도 편찬','https://img.comcbt.com/cbt/data/k3/k320150808/k320150808m27.gif?1476226655'),(20,'영조','선조','태종','(가)에 들어갈 왕으로 옳은 것은?','태종',5,'광종','https://img.comcbt.com/cbt/data/k3/k320190126/k320190126m22.gif?1549750836'),(21,'한산도 대첩','행주 대첩','진주성 대첩','자료 속 인물과 관련된 역사적 사실로 옳은 것은?','한산도 대첩',5,'귀주 대첩','https://img.comcbt.com/cbt/data/k3/k320111022/k320111022m19.gif?1476226546'),(22,'조선경국전','대전회통','경국대전','(가)에 들어갈 내용으로 옳은 것은?','경국대전',5,'대전통편','https://img.comcbt.com/cbt/data/k3/k320180527/k320180527m23.gif?1527514651'),(23,'종묘','경복궁','보신각','밑줄 그은 ‘이곳’에 해당하는 문화유산의 이름으로 옳은 것은?','종묘',5,'사직단','https://img.comcbt.com/cbt/data/k3/k320171028/k320171028m27.gif?1517336979'),(24,'삼포왜란','임진왜란','정묘호란','다음에 해당하는 역사적 사건으로 옳은 것은?','병자호란',6,'병자호란','https://img.comcbt.com/cbt/data/k3/k320121027/k320121027m27.gif?1476226578'),(25,'박제가','정약전','박지원','밑줄 그은 ‘이 사람’으로 옳은 것은?','홍대용',6,'홍대용','https://img.comcbt.com/cbt/data/k3/k320180811/k320180811m25.gif?1535439854'),(26,'북벌 추진','척화비 건립','경국대전 완성','밑줄 그은 ‘이 왕’의 업적으로 옳은 것은?','수원 화성 건설',6,'수원 화성 건설','https://img.comcbt.com/cbt/data/k3/k320160813/k320160813m30.gif?1476226686'),(27,'갑신정변','병인양요','신미양요','다음 자료에서 설명하는 사건으로 옳은 것은?','병인양요',6,'임오군란','https://img.comcbt.com/cbt/data/k3/k320151024/k320151024m31.gif?1476226663'),(28,'수원 화성 건설','집현전 설치','당백전 발행','다음 자료에 나타난 왕의 업적으로 옳은 것은?','균역법 실시',6,'균역법 실시','https://img.comcbt.com/cbt/data/k3/k320141025/k320141025m26.gif?1476226634'),(29,'김구','박은식','이봉창','다음 인물 카드의 주인공으로 옳은 것은?','이봉창',7,'안중근','https://img.comcbt.com/cbt/data/k3/k320120114/k320120114m20.gif?1476226553'),(30,'신민회','북로 군정서','한국 광복군','다음 가상 인터뷰에서 밑줄 그은‘비밀 단체’로 옳은 것은?','신민회',7,'조선 의용대','https://img.comcbt.com/cbt/data/k3/k320120114/k320120114m34.gif?1476226556'),(31,'광혜원','신민회','대한민국 임시 정부','생각 지도 (가)에 들어갈 내용으로 적절한 것은?','대한민국 임시 정부',7,'독립 협회','https://img.comcbt.com/cbt/data/k3/k320111022/k320111022m28.gif?1476226548'),(32,'김원봉','안창호','윤봉길','(가)에 해당하는 인물로 옳은 것은?','장인환',7,'장인환','https://img.comcbt.com/cbt/data/k3/k320190126/k320190126m26.gif?1549750836'),(33,'3·1 운동','광주 학생 항일 운동','국채 보상 운동','(가)에 들어갈 내용으로 옳은 것은?','국채 보상 운동',7,'6·10 만세 운동','https://img.comcbt.com/cbt/data/k3/k320161022/k320161022m33.gif?1477283993'),(34,'고구려인의 의생활','발해인의 무역 활동','백제인의 해외진출','(가)에 들어갈 내용으로 적절한 것은?','고구려인의 의생활',8,'신라인의 종교 생활','https://img.comcbt.com/cbt/data/k3/k320171028/k320171028m8.gif?1517336981'),(35,'영선사','연행사','조사 시찰단','(가)에 들어갈 사절단으로 옳은 것은?','통신사',8,'통신사','https://img.comcbt.com/cbt/data/k3/k320180203/k320180203m30.gif?1518210951'),(36,'계백','최무선','곽재우','다음 가상 인터뷰의 주인공으로 옳은 것은?','곽재우',8,'을지문덕','https://img.comcbt.com/cbt/data/k3/k320180203/k320180203m24.gif?1518210950'),(37,'(가) - (나) - (다)','(가) - (다) - (나)','(나) - (가) - (다)','(가)~(다)의 사건을 일어난 순서대로 옳게 나열한 것은?','(가) - (나) - (다)',8,'(다) - (가) - (나)','https://img.comcbt.com/cbt/data/k3/k320180203/k320180203m21.gif?1518210950'),(38,'(가)','(나)','(다)','밑줄 그은 ‘조약’이 체결된 시기를 연표에서 옳게 고른 것은?','(라)',8,'(라)','https://img.comcbt.com/cbt/data/k3/k320170527/k320170527m35.gif?1496784659'),(39,'신문왕','무열왕','법흥왕','(가)에 들어갈 왕으로 옳은 것은?','신문왕',8,'진흥왕','https://img.comcbt.com/cbt/data/k3/k320170121/k320170121m7.gif?1485229220'),(40,'백강 전투','청산리 전투','쌍성보 전투','다음 대본에 나타난 전투로 옳은 것은?','청산리 전투',8,'매소성 전투','https://img.comcbt.com/cbt/data/k3/k320160528/k320160528m37.gif?1476226681');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `users_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `monster_id` bigint DEFAULT NULL,
  `now_mission_id` bigint DEFAULT NULL,
  PRIMARY KEY (`users_id`),
  KEY `FK20l270v6g1uqdsh9de6n6qu9d` (`monster_id`),
  CONSTRAINT `FK20l270v6g1uqdsh9de6n6qu9d` FOREIGN KEY (`monster_id`) REFERENCES `monster` (`monster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `users_item`
--

DROP TABLE IF EXISTS `users_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_item` (
  `users_item_id` bigint NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `users_id` bigint DEFAULT NULL,
  PRIMARY KEY (`users_item_id`),
  KEY `FKlbhvc3s3hbalugnayw02m5ejj` (`item_id`),
  KEY `FK8krg35sjgtquidnfb0hoj2gaf` (`users_id`),
  CONSTRAINT `FK8krg35sjgtquidnfb0hoj2gaf` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`),
  CONSTRAINT `FKlbhvc3s3hbalugnayw02m5ejj` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `users_mission`
--

DROP TABLE IF EXISTS `users_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_mission` (
  `users_mission_id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `mission_id` bigint DEFAULT NULL,
  `users_id` bigint DEFAULT NULL,
  PRIMARY KEY (`users_mission_id`),
  KEY `FKeijndh3a2852xodx6f4a6obcj` (`mission_id`),
  KEY `FKa6jp9gto6l4tyg6914r0fwp35` (`users_id`),
  CONSTRAINT `FKa6jp9gto6l4tyg6914r0fwp35` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`),
  CONSTRAINT `FKeijndh3a2852xodx6f4a6obcj` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`mission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_monster`
--

DROP TABLE IF EXISTS `users_monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_monster` (
  `users_monster_id` bigint NOT NULL AUTO_INCREMENT,
  `exp` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `monster_id` bigint DEFAULT NULL,
  `users_id` bigint DEFAULT NULL,
  PRIMARY KEY (`users_monster_id`),
  KEY `FKjwlvqluvc72wm8fov4vyvdlh5` (`monster_id`),
  KEY `FKj5kw1sq1pmv040lbj31pembld` (`users_id`),
  CONSTRAINT `FKj5kw1sq1pmv040lbj31pembld` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`),
  CONSTRAINT `FKjwlvqluvc72wm8fov4vyvdlh5` FOREIGN KEY (`monster_id`) REFERENCES `monster` (`monster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `words_id` bigint NOT NULL AUTO_INCREMENT,
  `answer1` varchar(255) DEFAULT NULL,
  `answer2` varchar(255) DEFAULT NULL,
  `answer3` varchar(255) DEFAULT NULL,
  `answer4` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`words_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'모사','항설','자득','삼일','가담','항설','길거리나 마을에 떠도는 이야기로서 근거 없이 나도는 말들'),(2,'하장','이사','주구','지란','가렴','주구','관리가 세금 따위를 가혹하게 받고 빼앗아 백성을 못살게 구는 가혹한 정치'),(3,'박명','양명','단심','만파','미인','박명','여자의 용모가 빼어나고 재주가 많으면 운명이 기구함'),(4,'월장','난망','일파','일확','각골','난망','깊이 새기어 두고 은혜를 잊지 않음'),(5,'생심','요연','일도','타진','언감','생심','감히 그런 마음을 먹을 수도 없음'),(6,'안석','우돌','야독','이설','감언','이설','남의 비위를 맞추는 달콤한 말과 이로운 조건만 들어 상대방이 듣기 좋게 하는 말'),(7,'죽마','덕지','간산','연분','감지','덕지','대단히 고맙게 여김'),(8,'갑박','을박','정박','병박','갑론','을박','여러 사람이 서로 자기의 의견을 내세워 남의 의견을 반박함으로써 서로 논박함'),(9,'백선','천선','만석','억선','개과','천선','허물을 고쳐 착하게 됨'),(10,'절미','절진','절선','절두','거두','절미','군더더기 말은 빼고 요점만 말함'),(11,'견심','사심','생심','물심','견물','생심','어떤 물건을 보았을 때 갖고 싶은 욕심이 생기는 것으로, 소유욕을 경계하라는 뜻이 내포되어 있다'),(12,'낙엽','보은','추풍','보답','결초','보은','풀을 엮어서 은혜를 갚는다는 뜻으로, 죽어서도 은혜를 갚음'),(13,'감언','분석','공론','망동','경거','망동','경솔하고 분수없이 행동하는 것'),(14,'지세','난명','대청','파란','고장','난명','한쪽 손바닥으로는 소리를 내기가 어렵듯이, 혼자만의 힘으로는 일을 하기가 어려움'),(15,'감래','감가','고래','고가','고진','감래','고생을 다하면 낙이 온다'),(16,'망신','만장','망상','미문','과대','망상','자기의 현재 상태를 실제보다 턱없이 크게 평가하여 사실인 것처럼 믿게 하는 것'),(17,'일심','불급','이조','가급','과유','불급','지나침은 모자람과 같다는 말로, 지나침과 부족함은 낫고 못함을 따질 것이 없이 둘 다 잘못이라는 것'),(18,'일선','이선','익선','인선','다다','익선','많을수록 좋다'),(19,'서주','동주','남주','북주','동분','서주','이리저리 바쁘게 돌아다닌다는 것'),(20,'남풍','동풍','북풍','서풍','마이','동풍','남의 말을 전혀 귀담아 듣지 아니함을 비유한 말'),(21,'중식','소식','대식','다식','박학','다식','학식이 넓고 아는 것이 많음'),(22,'초단','초가','초몽','초발','사면','초가','사방에서 초나라의 노래 소리가 들린다는 뜻으로, 주위에 온통 적들만 있고 도와주는 이는 없는 경우에 쓰는 말'),(23,'지단','지란','지명','지소','선견','지명','사건이 일어나기 전에 미리 아는 밝은 지혜나 안목'),(24,'양득','택일','양일','이조','양자','택일','둘 중에서 하나를 택하는 것'),(25,'불망','생심','도단','불변','오매','불망',' 누군가를 그리워하여 자나 깨나 잊지 못함'),(26,'지일','지곡','지문','지신','온고','지신','옛 것을 익히고 그것을 미루어서 새 것을 앎'),(27,'등수','등목','등월','등화','풍전','등화','바람 앞의 등불처럼 아주 위태로운 지경'),(28,'양지','양호','양난','양퇴','진퇴','양난','나아갈 수도 뒤로 물러날 수도 없이 궁지에 빠짐'),(29,'미찬','성찬','구식','단식','진수','성찬','맛이 좋고 잘 차린 음식'),(30,'안석','누각','난적','삼적','좌불','안석','불안하거나 걱정스러워 한군데 오래 앉아 있지 못한다는 뜻');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16  8:47:03
