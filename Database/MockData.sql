DELIMITER //
-- -----------------------------------------------------
-- Mock data session
-- -----------------------------------------------------
INSERT INTO academic_year (AYcode) VALUES
('2016-2017'),
('2017-2018'),
('2018-2019'),
('2019-2020'),
('2020-2021')
;

	       
INSERT INTO faculty (Fcode, Fname) VALUES 
	('F001I', 'Faculty of Engineering'),
	('F002E', 'Faculty of Economics and Mangement')
;
	       
	       
INSERT INTO program (Pcode, Pname) VALUES
	('P001C', 'Computer Science'),
	('P002B', 'Business Administration'),
	('P003F', 'Finance and Accounting'),
	('P004E', 'Electrical Engineering'),
	('P005M', 'Mechanical Engineering'),
	('P006A', 'Architecture'),
	('P007C', 'Civil Engineering')
;
	       
	       
INSERT INTO module (Mcode, Mname) VALUES 
    	('M001A', 'Introductory Accounting'),
    	('M002F', 'Introductory Finance'),
    	('M003F', 'Investment Finance'),
    	('M004M', 'Business Management'),
    	('M005E', 'Microeconomics'),
    	('M006E', 'Macroeconomics'),
    	('M007A', 'Algebra'),
    	('M008C', 'Calculus'),
    	('M009D', 'Discrete Mathematics'),
    	('M010B', 'Databases'),
    	('M011N', 'Computer Networks'),
    	('M012B', 'Business Administration'),
    	('M013R', 'Realtime systems'),
    	('M014O', 'Operating systems'),
    	('M015I', 'IT Security'),
    	('M016P', 'Programming Exercises')
;
 
INSERT INTO semester (Scode, AYcode) VALUES 
	('S001o', '2020-2021'),
	('S002q', '2020-2021'),
	('S003g', '2020-2021'),
	('S004x', '2020-2021'),
    
	('S005z', '2019-2020')
;


INSERT INTO class (Ccode, size, Scode, Mcode) VALUES 
	('C001t', '35', 'S001o', 'M001A'),
	('C002h', '40', 'S001o', 'M002F'),
	('C003a', '32', 'S001o', 'M003F'),
	('C004m', '37', 'S001o', 'M004M'),

	('C005u', '33', 'S002q', 'M005E'),
	('C006y', '33', 'S002q', 'M006E'),
	('C007q', '35', 'S002q', 'M007A'),
	('C008n', '37', 'S002q', 'M008C'),

	('C009u', '35', 'S003g', 'M009D'),
	('C010i', '32', 'S003g', 'M010B'),
	('C011z', '38', 'S003g', 'M011N'),
	('C012c', '39', 'S003g', 'M012B'),

	('C013x', '33', 'S004x', 'M013R'),
	('C014d', '30', 'S004x', 'M014O'),
	('C015q', '31', 'S004x', 'M015I'),
	('C016q', '37', 'S004x', 'M016P'),
    
	('C017t', '30', 'S005z', 'M010B'),
    ('C018t', '31', 'S005z', 'M001A')
;

INSERT INTO employee_user (user_id, full_name, gender, email) VALUES
	('U001r','Lona Perrigan','female','LonaPerrigan@gmail.com'),
	('U002r','Lou Hinds','female','LouHinds@gmail.com'),
	('U003r','Floy Blanco','male','FloyBlanco@gmail.com'),
	('U004r','Tena Mee','male','TenaMee@gmail.com'),
	('U005r','Mabelle Fusco','female','MabelleFusco@gmail.com'),
	('U006r','Dicie Mcbride','male','DicieMcbride@gmail.com'),
	('U007r','Theresa Buhmann','female','TheresaBuhmann@gmail.com'),
	('U008r','Alvena Pierce','female','AlvenaPierce@gmail.com'),
	('U009r','Katheryn Hinesley','male','KatherynHinesley@gmail.com'),
	('U010r','Dora Guglielmi','female','DoraGuglielmi@gmail.com'),
	('U011r','Carol Mayer','male','CarolMayer@gmail.com'),
	('U012r','Marian Sirois','female','MarianSirois@gmail.com'),
	('U013r','Inga Mccune','female','IngaMccune@gmail.com'),
	('U014r','Tillie Smith','male','TillieSmith@gmail.com'),
	('U015r','Olive Hayslett','female','OliveHayslett@gmail.com'),
	('U016r','Paralee Midden','male','ParaleeMidden@gmail.com'),
	('U017r','Lewis Ross','female','LewisRoss@gmail.com'),
	('U018r','Antoinette Stocker','male','AntoinetteStocker@gmail.com'),
	('U019r','Vida Harden','male','VidaHarden@gmail.com'),
	('U020r','Howard Niesman','male','HowardNiesman@gmail.com'),
	('U021r','Genevieve Young','female','GenevieveYoung@gmail.com'),
	('U022r','Clifford Lodge','male','CliffordLodge@gmail.com'),
	('U023r','Izora Dickerson','female','IzoraDickerson@gmail.com'),
	('U024r','Lea Kauffman','female','LeaKauffman@gmail.com'),
	('U025r','Clarinda Reeves','female','ClarindaReeves@gmail.com'),
	('U026r','Jessie Lofton','female','JessieLofton@gmail.com'),
	('U027r','Lyda Sears','female','LydaSears@gmail.com'),
	('U028r','Christine Loera','male','ChristineLoera@gmail.com'),
	('U029r','Arizona Bishop','male','ArizonaBishop@gmail.com'),
	('U030r','Carlotta Hernandez','male','CarlottaHernandez@gmail.com'),
	('U031r','Margarita Simmons','female','MargaritaSimmons@gmail.com'),
	('U032r','Junie Mathews','female','JunieMathews@gmail.com'),
	('U033r','Hannah Heter','female','HannahHeter@gmail.com'),
	('U034r','Sophia Frankel','male','SophiaFrankel@gmail.com'),
	('U035r','Pinkie Cantrell','male','PinkieCantrell@gmail.com'),
	('U036r','Byrd Mathis','male','ByrdMathis@gmail.com'),
	('U037r','Emmer Haveman','female','EmmerHaveman@gmail.com'),
	('U038r','Lemma Calderon','female','LemmaCalderon@gmail.com'),
	('U039r','Madge Hykes','male','MadgeHykes@gmail.com'),
	('U040r','Lela Cordeiro','female','LelaCordeiro@gmail.com'),
	('U041r','Deborah Trevino','male','DeborahTrevino@gmail.com'),
	('U042r','Margie Todd','female','MargieTodd@gmail.com'),
	('U043r','Claudie Southard','female','ClaudieSouthard@gmail.com'),
	('U044r','Constance Payne','female','ConstancePayne@gmail.com'),
	('U045r','Octavia Mariska','male','OctaviaMariska@gmail.com'),
	('U046r','Antonia Bekis','male','AntoniaBekis@gmail.com'),
	('U047r','Rella Gruis','female','RellaGruis@gmail.com'),
	('U048r','Nona Tineo','female','NonaTineo@gmail.com'),
	('U049r','Anna Adkison','male','AnnaAdkison@gmail.com'),
	('U050r','Gwendolyn Edwards','male','GwendolynEdwards@gmail.com')
;

INSERT INTO employee_account (login, employee_password, user_id) VALUES
	('Lona', 'Perrigan', 'U001r'),
	('Lou',	'Hinds', 'U002r'),
	('Floy', 'Blanco', 'U003r'),
	('Tena', 'Mee',	'U004r'),
	('Mabelle', 'Fusco', 'U005r'),
	('Dicie', 'Mcbride', 'U006r'),
	('Theresa',	'Buhmann', 'U007r'),
	('Alvena', 'Pierce', 'U008r'),
	('Katheryn', 'Hinesley', 'U009r'),
	('Dora', 'Guglielmi', 'U010r'),
	('Carol', 'Mayer', 'U011r'),
	('Marian', 'Sirois', 'U012r'),
	('Inga', 'Mccune', 'U013r'),
	('Tillie', 'Smith',	'U014r'),
	('Olive', 'Hayslett', 'U015r'),
	('Paralee',	'Midden', 'U016r'),
	('Lewis', 'Ross', 'U017r'),
	('Antoinette', 'Stocker', 'U018r'),
	('Vida', 'Harden', 'U019r'),
	('Howard', 'Niesman', 'U020r'),
	('Genevieve', 'Young', 'U021r'),
	('Clifford', 'Lodge', 'U022r'),
	('Izora', 'Dickerson', 'U023r'),
	('Lea',	'Kauffman',	'U024r'),
	('Clarinda', 'Reeves', 'U025r'),
	('Jessie', 'Lofton', 'U026r'),
	('Lyda', 'Sears', 'U027r'),
	('Christine', 'Loera', 'U028r'),
	('Arizona',	'Bishop', 'U029r'),
	('Carlotta', 'Hernandez', 'U030r'),
	('Margarita', 'Simmons', 'U031r'),
	('Junie', 'Mathews', 'U032r'),
	('Hannah', 'Heter',	'U033r'),
	('Sophia', 'Frankel', 'U034r'),
	('Pinkie', 'Cantrell', 'U035r'),
	('Byrd', 'Mathis', 'U036r'),
	('Emmer', 'Haveman', 'U037r'),
	('Lemma', 'Calderon', 'U038r'),
	('Madge', 'Hykes', 'U039r'),
	('Lela', 'Cordeiro', 'U040r'),
	('Deborah',	'Trevino', 'U041r'),
	('Margie', 'Todd', 'U042r'),
	('Claudie',	'Southard',	'U043r'),
	('Constance', 'Payne', 'U044r'),
	('Octavia',	'Mariska', 'U045r'),
	('Antonia',	'Bekis', 'U046r'),
	('Rella', 'Gruis', 'U047r'),
	('Nona', 'Tineo', 'U048r'),
	('Anna', 'Adkison',	'U049r'),
	('Gwendolyn', 'Edwards', 'U050r')
;

INSERT INTO lecturer (Lcode, Lname, user_id) VALUES 
	('L001v', 'Lona Perrigan','U001r'),
	('L002o', 'Marian Sirois','U012r'),
	('L003r', 'Izora Dickerson','U023r'),
	('L004v', 'Sophia Frankel','U034r'),
	('L005a', 'Octavia Mariska','U045r'),
	('L006e', 'Rella Gruis','U047r'),
	('L007u', 'Nona Tineo','U048r'),
	('L008h', 'Anna Adkison','U049r'),
	('L009f', 'Gwendolyn Edwards','U050r'),
	('L010m', 'Lou Hinds','U002r'),
	('L011g', 'Floy Blanco','U003r'),
	('L012m', 'Tena Mee','U004r'),
	('L013l', 'Mabelle Fusco','U005r'),
	('L014a', 'Dicie Mcbride','U006r'),
	('L015m', 'Theresa Buhmann','U007r')
;

Insert into questionnaire 
	(Ccode, Lcode, gender, attendance, question_1, question_2, question_3, question_4,
	 question_5, question_6, question_7, question_8, question_9, question_10, question_11,
	 question_12, question_13, question_14, question_15, question_16, question_17, question_18)
Values 
	( 'C002h', 'L001v', 'male', 'often', '3', '2', '2', '4','5','3', '4', '2', '5', '3', '1', '4', '5', '2', '4', '4', '5', 'Hello'),
	( 'C005u', 'L001v', 'female', 'rarely', '5', '2', '2', '4', '3', '1', '4', '2', '5', '1', '3', '4', '5', '5', '2', '4', '5', 'Hi 1'),
	( 'C003a', 'L002o', 'female', 'sometimes', '3', '2', '4', '4', '5', '1', '2', '2', '1', '1', '4', '2', '5', '3', '2', '4', '2', 'Hi 2'),
	( 'C002h', 'L001v', 'male', 'rarely', '4', '5', '4', '4', '2', '4', '2', '5', '1', '2', '1', '4', '3', '5', '2', '4', '2', 'Hi 3'),
	( 'C001t', 'L002o', 'male', 'often', '2', '5', '4', '5', '3', '1', '3', '4', '1', '2', '1', '3', '4', '5', '1', '5', '2', 'Hi 4'),
    ('C002h','L001v','female','never','1','5','1','3','4','1','1','not','1','2','not','not','not','not','2','3','5',''),
('C005u','L001v','female','never','1','5','1','3','4','1','1','not','1','2','not','not','not','not','2','3','5',''),
('C014d','L010m','female','never','3','5','not','1','2','4','5','not','2','3','1','1','1','4','2','4','5',''),
('C003a','L002o','female','often','3','not','5','3','5','5','2','1','3','not','2','1','2','4','4','3','3',''),
('C010i','L006e','female','sometimes','5','5','4','3','4','2','3','not','1','not','2','4','not','2','not','2','1',''),
('C017t','L015m','male','rarely','not','4','3','5','1','5','2','4','3','3','1','1','3','1','3','4','3',''),
('C017t','L014a','female','always','5','3','3','3','5','4','5','not','2','1','1','5','5','3','4','1','5',''),
('C005u','L004v','female','never','2','5','not','not','1','1','4','not','5','2','5','5','3','5','5','2','3',''),
('C014d','L010m','male','often','2','4','1','4','1','4','2','1','2','5','2','2','1','not','5','3','2',''),
('C018t','L009f','male','sometimes','4','1','2','not','5','3','1','4','3','2','not','2','1','2','4','1','5',''),
('C005u','L004v','female','sometimes','1','5','2','1','2','5','4','5','4','2','5','not','2','3','5','not','3',''),
('C005u','L005a','female','always','2','1','3','3','2','1','2','not','not','4','2','4','not','5','4','3','not',''),
('C005u','L001v','male','never','not','not','5','not','4','3','1','1','3','1','4','not','5','not','not','1','not',''),
('C012c','L009f','female','never','2','3','4','2','3','1','3','2','not','5','3','2','4','1','4','1','5',''),
('C001t','L015m','male','always','1','2','not','1','2','3','5','4','5','not','5','5','4','3','1','2','4',''),
('C013x','L007u','female','often','2','3','4','4','1','4','5','4','5','5','4','2','1','not','1','5','4',''),
('C017t','L014a','male','often','1','3','2','5','5','1','2','3','5','5','1','not','2','not','5','2','5',''),
('C002h','L001v','male','sometimes','not','4','1','4','4','3','1','2','3','4','3','4','1','1','1','3','2',''),
('C018t','L009f','male','often','2','not','2','4','5','5','3','5','2','5','2','3','1','5','5','4','4',''),
('C010i','L006e','male','rarely','5','not','3','not','5','3','1','3','3','2','4','2','3','4','2','3','4',''),
('C003a','L002o','female','never','1','3','4','not','1','5','5','5','not','not','not','4','5','2','3','not','5',''),
('C015q','L011g','male','rarely','3','not','5','2','2','1','4','not','5','5','5','5','3','1','1','not','3',''),
('C005u','L005a','male','never','4','not','3','not','2','3','4','not','not','2','5','1','not','2','2','1','4',''),
('C002h','L003r','female','rarely','4','not','4','4','3','3','5','1','4','4','3','not','not','2','1','5','5',''),
('C005u','L004v','male','sometimes','4','1','2','5','2','3','4','not','5','3','3','4','5','2','3','not','3',''),
('C012c','L008h','male','never','1','4','5','5','1','2','3','5','2','5','2','4','5','2','2','4','4',''),
('C005u','L005a','male','never','5','5','3','1','2','4','4','not','5','4','4','5','2','1','not','2','2',''),
('C016q','L014a','female','often','2','1','5','not','4','1','2','4','5','4','not','4','not','not','4','4','1',''),
('C015q','L012m','female','sometimes','not','3','1','3','2','4','3','not','not','not','1','not','5','3','not','1','not',''),
('C010i','L006e','male','rarely','1','3','4','4','5','3','1','2','1','1','3','4','3','5','5','2','5',''),
('C012c','L008h','male','often','not','4','5','3','5','1','5','4','1','5','not','1','3','4','not','4','1',''),
('C010i','L001v','male','often','5','4','4','2','5','1','4','1','not','not','4','not','2','2','2','4','4',''),
('C008n','L005a','male','always','4','5','3','1','4','4','4','not','not','2','5','5','3','4','1','1','5',''),
('C002h','L003r','female','often','4','2','2','4','1','2','3','3','not','3','3','2','1','2','4','4','not',''),
('C002h','L004v','male','always','5','3','3','4','4','4','3','2','5','3','4','2','3','3','4','2','5',''),
('C006y','L004v','male','often','3','5','5','5','4','3','5','1','1','2','3','5','5','5','3','2','3',''),
('C015q','L011g','male','never','not','3','5','3','1','5','2','5','5','3','2','not','3','1','3','3','3',''),
('C003a','L002o','female','always','1','3','4','3','4','4','4','3','4','not','4','5','3','5','1','4','not',''),
('C007q','L001v','female','always','5','3','2','not','2','5','3','4','3','2','3','5','not','2','2','2','5',''),
('C011z','L007u','female','rarely','3','not','3','2','2','3','4','4','1','3','2','1','1','5','5','1','5',''),
('C001t','L015m','male','sometimes','2','2','4','5','2','4','3','1','4','1','3','not','5','1','3','2','2',''),
('C018t','L009f','male','never','5','5','1','2','5','4','4','4','1','3','3','2','5','2','not','4','3',''),
('C012c','L009f','female','sometimes','5','1','5','5','1','3','4','3','1','3','3','5','4','not','3','not','2',''),
('C012c','L008h','female','often','2','not','2','not','5','4','4','not','not','5','not','3','1','1','not','4','5',''),
('C012c','L009f','female','always','4','2','not','not','2','4','4','4','1','3','5','5','not','1','5','not','3',''),
('C011z','L007u','female','often','3','2','3','2','4','3','1','not','1','4','not','5','4','1','1','not','not',''),
('C002h','L001v','female','often','1','1','3','5','1','2','1','5','not','3','5','1','4','not','1','not','1',''),
('C017t','L015m','male','rarely','2','4','2','not','5','4','5','not','1','not','2','4','not','not','1','3','3',''),
('C010i','L006e','female','rarely','4','3','4','4','3','2','3','3','5','3','4','3','1','1','5','not','2',''),
('C014d','L010m','male','never','not','3','5','1','5','3','3','2','3','1','5','5','4','not','4','5','4',''),
('C002h','L003r','female','always','2','4','4','5','5','5','1','2','1','1','1','1','1','1','3','1','3',''),
('C018t','L009f','male','always','not','2','3','3','4','2','4','not','not','not','3','5','5','5','1','2','1',''),
('C009u','L006e','male','never','3','1','not','4','1','5','4','1','3','3','5','not','4','3','2','not','not',''),
('C016q','L013l','female','rarely','5','5','4','not','2','2','5','not','2','3','3','1','4','3','3','4','2',''),
('C002h','L003r','male','often','2','4','4','2','4','5','4','2','1','not','5','2','4','3','3','1','1',''),
('C014d','L010m','female','often','5','3','2','1','1','5','4','5','2','2','1','not','3','not','2','3','1',''),
('C010i','L006e','male','sometimes','1','2','1','1','1','5','1','3','2','3','5','not','3','3','4','3','5',''),
('C008n','L005a','female','often','5','1','2','4','2','5','1','1','not','3','3','1','4','not','5','not','not',''),
('C001t','L002o','female','never','5','4','5','1','5','3','1','3','not','1','not','4','4','5','not','3','1',''),
('C001t','L015m','male','never','3','5','4','4','5','5','4','4','5','1','4','5','5','4','1','3','not',''),
('C002h','L003r','female','rarely','5','2','not','2','5','5','4','not','1','4','5','2','not','3','1','2','not',''),
('C008n','L005a','female','often','1','not','4','2','3','3','5','3','3','4','1','4','4','not','5','3','2',''),
('C009u','L006e','male','sometimes','1','1','2','4','1','4','1','4','4','3','4','not','2','not','3','2','3',''),
('C011z','L007u','female','always','3','2','2','4','3','1','5','not','not','2','1','not','not','2','not','4','5',''),
('C009u','L006e','male','often','not','1','2','2','4','4','1','4','1','1','4','4','1','5','4','2','4',''),
('C010i','L006e','male','always','1','not','4','not','4','1','5','4','1','4','3','5','4','not','5','4','1',''),
('C003a','L002o','male','never','3','3','2','5','4','2','4','4','1','not','2','not','1','3','1','2','1',''),
('C010i','L001v','male','often','5','not','2','not','2','4','2','not','2','1','2','not','2','1','5','3','4',''),
('C015q','L011g','female','never','1','3','2','1','5','4','3','4','not','not','3','2','3','3','not','5','4',''),
('C005u','L005a','female','always','not','not','not','4','5','4','1','not','not','1','not','not','2','5','3','5','not',''),
('C007q','L001v','male','sometimes','2','3','2','1','1','4','3','4','2','3','4','5','5','4','5','5','3',''),
('C005u','L001v','female','never','5','3','2','3','3','1','3','5','3','4','5','not','1','3','not','2','4',''),
('C013x','L007u','male','never','1','2','4','3','1','5','3','1','not','5','1','4','2','5','not','1','2',''),
('C001t','L002o','female','rarely','2','4','1','3','4','1','3','1','2','4','2','3','4','3','2','1','4',''),
('C002h','L001v','male','rarely','2','2','3','3','2','2','1','2','1','4','3','2','5','not','5','not','1',''),
('C002h','L003r','male','rarely','4','3','2','3','3','4','1','4','4','1','not','2','not','4','not','2','2',''),
('C009u','L006e','female','rarely','5','4','1','5','5','4','3','2','5','5','4','not','4','1','3','not','3',''),
('C002h','L001v','female','sometimes','1','not','3','1','1','2','3','5','2','3','2','5','2','5','5','3','4',''),
('C015q','L012m','female','rarely','2','4','4','2','5','4','5','4','5','3','4','3','5','1','1','2','5',''),
('C002h','L004v','female','often','not','1','4','5','5','3','4','5','3','not','not','2','3','2','4','not','not',''),
('C010i','L001v','female','sometimes','1','5','3','3','2','1','1','1','not','1','5','2','5','4','not','3','2',''),
('C016q','L013l','male','always','not','2','not','2','2','2','3','5','4','4','not','2','5','1','2','2','not',''),
('C015q','L012m','female','rarely','not','2','4','4','4','3','2','1','2','3','2','2','not','1','1','3','1',''),
('C016q','L013l','male','always','2','4','2','2','1','4','5','not','2','not','1','4','5','2','1','4','not',''),
('C017t','L014a','male','sometimes','3','not','5','5','5','1','5','1','1','2','3','4','2','4','5','4','not',''),
('C014d','L010m','female','rarely','1','5','2','not','2','3','4','1','5','5','5','1','3','2','2','not','3',''),
('C018t','L009f','male','rarely','1','2','4','1','1','1','1','5','not','4','5','5','3','1','1','5','not',''),
('C007q','L001v','female','never','3','2','4','4','2','4','1','4','4','2','not','3','1','1','not','4','2',''),
('C016q','L013l','female','rarely','5','2','1','2','4','4','2','5','4','4','1','5','not','3','5','5','2',''),
('C016q','L014a','female','rarely','1','1','not','not','3','5','3','4','not','3','5','2','5','4','1','3','2',''),
('C012c','L009f','male','rarely','3','2','3','5','1','5','5','5','1','3','5','2','4','3','1','5','1',''),
('C017t','L015m','female','rarely','4','4','1','not','4','3','2','3','3','not','1','4','not','not','not','5','1',''),
('C008n','L005a','female','often','1','5','3','not','5','3','3','not','3','2','not','3','5','not','3','3','1',''),
('C014d','L010m','female','always','1','not','not','2','3','1','5','4','5','5','2','5','4','4','2','4','5',''),
('C017t','L014a','male','often','1','3','2','4','2','3','4','2','4','3','4','not','2','1','not','5','2',''),
('C013x','L007u','female','rarely','not','1','3','not','5','1','4','4','not','1','2','4','4','3','1','3','1',''),
('C015q','L012m','male','never','1','not','2','1','1','2','4','2','not','4','not','3','3','2','not','2','2',''),
('C005u','L001v','female','always','3','3','3','1','1','1','1','5','4','5','1','5','4','not','2','4','4',''),
('C007q','L001v','female','never','1','5','5','1','3','2','4','not','4','3','5','1','not','not','not','5','5',''),
('C010i','L001v','male','always','3','1','not','not','2','5','5','1','4','2','2','4','1','1','3','4','3',''),
('C002h','L003r','male','never','2','1','4','3','2','1','3','2','3','3','1','not','5','3','1','2','not','')
;

INSERT INTO dean (start_date, end_date, user_id, Fcode) VALUES
	('2020-01-14', '2020-11-12', 'U003r', 'F002E'),
	('2020-04-07', '2020-11-05', 'U004r', 'F001I')
;

INSERT INTO program_coordinator (start_date, end_date, user_id, Pcode) VALUES
	('2020-02-15', '2020-10-18', 'U014r', 'P002B'),
    ('2020-04-13', '2020-11-30', 'U011r', 'P004E'),
    ('2020-03-11', '2020-09-02', 'U004r', 'P006A'),
    ('2020-01-24', '2020-08-27', 'U006r', 'P005M'),
    ('2020-01-21', '2020-12-04', 'U013r', 'P007C'),
    ('2020-03-22', '2020-06-07', 'U015r', 'P001C'),
	('2020-05-25', '2020-12-10', 'U003r', 'P003F')
;

-- Support table to summary the gender, attendance and answer of each student
INSERT INTO question_support_gender(gender) VALUES
	('male'),
	('female'),
	('other')
;

INSERT INTO question_support_attendance(attendance) VALUES
	('never'),
	('rarely'),
	('sometimes'),
	('often'),
    	('always')
;

INSERT INTO question_support_number(answer_key) VALUES
	('1'),
	('2'),
	('3'),
	('4'),
	('5'),
	('not')
;

INSERT INTO lecturer_in_class (Ccode, Lcode) VALUES 
	('C001t', 'L015m'),
	('C001t', 'L002o'),

	('C002h', 'L001v'),
	('C002h', 'L003r'),
	('C002h', 'L004v'),

	('C003a', 'L002o'),
	('C004m', 'L003r'),

	('C005u', 'L001v'),
	('C005u', 'L004v'),
	('C005u', 'L005a'),

	('C006y', 'L004v'),
	('C007q', 'L001v'),
	('C008n', 'L005a'),
	('C009u', 'L006e'),

	('C010i', 'L006e'),
	('C010i', 'L001v'),

	('C011z', 'L007u'),

	('C012c', 'L008h'),
	('C012c', 'L009f'),

	('C013x', 'L007u'),
	('C014d', 'L010m'),
	('C015q', 'L011g'),
	('C015q', 'L012m'),

	('C016q', 'L013l'),
	('C016q', 'L014a'),
    
    ('C017t', 'L014a'),
    ('C017t', 'L015m'),
    
    ('C018t', 'L009f')
;

INSERT INTO ay_fac(AYcode,Fcode) VALUES
 ('2019-2020','F002E'),
 ('2020-2021','F001I'),
 ('2020-2021','F002E'),
 ('2019-2020','F001I');
 
 INSERT INTO ay_fac_p(Pcode,AYFcode) VALUES 
 ('P001C',1),
 ('P001C',4),
 ('P001C',3),
 ('P002B',2),
 ('P002B',1),
 ('P003F',4),
 ('P003F',3),
 ('P004E',4),
 ('P004E',2),
 ('P005M',4);
 
 INSERT INTO ay_fac_pm(Mcode,AYFPcode) VALUES
 ('M010B',8),
 ('M012B',2),
 ('M013R',4),
 ('M014O',1),
 ('M015I',4),
 ('M016P',7),
 ('M001A',1),
 ('M004M',3),
 ('M005E',9),
 ('M002F',10),
 ('M003F',1),
 ('M007A',3);

//

