## EXERCISES 

You will now create sample data and test cases for your project. This data should be used to populate your project (and provided in your seed.sql of your project deliverables) and should also be used to demonstate (i.e. test) that your application behaves as expected.

### E1) ATHELETE DATA 

Create 20 female athletes and 20 male athletes to seed for your project.

Athletes Schema: 
```
athletes(id, identifier, created, modified, name ,email, dob, identified_gender)
With id as primary key
```

Creating 20 female athletes:
```sql 
Insert Into athletes(id, identifier, name, email,dob, identified_gender)
Values 	(1, 'ath1','serena williams','serena1@gmail.com','1978-01-02','F'),
		(2, 'ath2','maria sharapova','maria2@gmail.com', '1974-04-05','F'),
		(3, 'ath3','venus williams','venus3@gmail.com','1979-07-07','F'),
		(4, 'ath4','saina nehwal','saina4@gmail.com' '1982-09-23','F'),
		(5, 'ath5','caroline wozniacki','caroline5@gmail.com','1973-12-05','F'),
		(6, 'ath6','simona halep','simona6@gmail.com', '1986-02-06','F'),
		(7, 'ath7','alex morgan','alex7@gmail.com','1971-11-02','F'),
		(8, 'ath8','fu yuanhui','fu8@gmail.com','1988-02-07','F'),
		(9, 'ath9','lindsey vonn','lindsey9@gmail.com', '1968-12-09','F'),
		(10, 'ath10','michelle wie','michelle10@gmail.com','1964-11-22','F'),
		(11, 'ath11','victoria azarenka','victoria11@gmail.com','1970-11-26','F'),
		(12, 'ath12','sania mirza','sania12@gmail.com', '1975-03-18','F'),
		(13, 'ath13','garbine muguruza','garbine13@gmail.com','1980-05-10','F'),
		(14, 'ath14','danica patrick','danica14@gmail.com', '1969-06-06','F'),
		(15, 'ath15','ding ning','ding15@gmail.com', '1979-11-04','F'),
		(16, 'ath16','tessa virtue','tess16@gmail.com', '1985-03-19','F'),
		(17, 'ath17','simone biles','simone17@gmail.com', '1983-09-14','F'),
		(18, 'ath18','p.v sindhu','pv18@gmail.com','1970-02-09','F'),
		(19, 'ath19','angelique kerber', 'angelique19@gmail.com','1968-10-20','F'),
		(20, 'ath20','alina zagitova', 'alina20@gmail.com','1992-10-25','F');

```

Creating 20 male athletes:

```sql 
Insert Into athletes(id, identifier, name,email, dob, identified_gender)
values 	(21,'ath21','kobe bryant','kobe21@gmail.com','1978-08-23','M'),
		(22,'ath22','david beckham','david22@gmail.com','1975-05-02','M'),
		(23,'ath23','tiger woods','tiger23@gmail.com','1975-12-30','M'),
		(24,'ath24','lebron james','lebron24@gmail.com','1984-12-30','M'),
		(25,'ath25','michael jordan','michael25@gmail.com','1963-02-17','M'),
		(26,'ath26','alex rodriguez','alex26@gmail.com','1975-07-27','M'),
		(27,'ath27','dennis rodman','dennis27@gmail.com','1961-05-13','M'),
		(28,'ath28','mike tyson','mike28@gmail.com','1966-06-30','M'),
		(29,'ath29','muhammad ali','muhammad29@gmail.com','1942-01-17','M'),
		(30,'ath30','lance armstrong','lance30@gmail.com','1971-09-18','M'),
		(31,'ath31','derek jeter','derek31@gmail.com','1974-06-26','M'),
		(32,'ath32','ethan zohn','ethan32@gmail.com','1973-11-12','M'),
		(33,'ath33','tim tebow','tim33@gmail.com','1987-08-14','M'),
		(34,'ath34','michael phelps','michael34@gmail.com','1985-06-30','M'),
		(35,'ath35','roger federer','roger35@gmail.com','1981-08-08','M'),
		(36,'ath36','peyton manning','peyton36@gmail.com','1976-03-24','M'),
		(37,'ath37','terrell owens','terrell37@gmail.com','1973-12-07','M'),
		(38,'ath38','magic johnson','magic38@gmail.com','1959-08-14','M'),
		(39,'ath39','shaquille oneal','shaquille39@gmail.com','1972-03-06','M'),
		(40,'ath40','william jenner','william40@gmail.com','1949-10-28','M');

```

### E2) COMPETITION DATA

Create 5 competitions(name, date, etc)

Competitions schema:
```
competitions(id,name,competition_date, max_num_male, max_num_female, num_events, venue, contact_person)
With id as primary key
```

Creating 5 competitions:

```sql
Insert into competitions(id,name, competition_date, venue)
Values 	(1,'10k run','2021-01-10','ottawa'),
		(2,'As many burpees in 7 minutes','montreal','2021-03-12'),
		(3,'21/15/9 of thrusters and pull-ups in 10 minutes','toronto','2021-04-15'),
		(4,'As many rounds of 1,2,3 in 10 minutes','vancouver','2021-05-24'),
		(5,'mountain trail 10 miles','british colombia','2021-05-02'),
```

### E3) EVENT MATRIX

Finish the matrix of all possible ways to score an event. Use truth table like approach to ensure you cover all scenarios.


|# | Main Score | Main Tie-Break | Secondary Score | Secondary Tie-Break |
|--|------------|----------------|-----------------|---------------------|
|1 | Count DESC | NULL           | NULL            | NULL                |
|2 | Count DESC | Time ASC       | NULL            | NULL                |
|3 | Count DESC | Time DESC      | NULL            | NULL                |
|4 | Count DESC | Count DESC     | NULL            | NULL                |
|5 | Count DESC | Count ASC      | NULL            | NULL                |
|6 | Count ASC  | NULL           | NULL            | NULL                |
|7 | Count ASC  | Time ASC       | NULL            | NULL                |
|8 | Count ASC  | Time DESC      | NULL            | NULL                |
|9 | Count ASC  | Count DESC     | NULL            | NULL                |
|10| Count ASC  | Count ASC      | NULL            | NULL                |
|11| Time DESC  | NULL           | NULL            | NULL                |
|12| Time DESC  | Time ASC       | NULL            | NULL                |
|13| Time DESC  | Time DESC      | NULL            | NULL                |
|14| Time DESC  | Count DESC     | NULL            | NULL                |
|15| TIme DESC  | Count ASC      | NULL            | NULL                |
|16| TIme ASC   | NULL           | NULL            | NULL                |
|17| Time ASC   | Time ASC       | NULL            | NULL                |
|18| Time ASC   | Time DESC      | NULL            | NULL                |
|19| Time ASC   | Count DESC     | NULL            | NULL                |
|20| Time ASC   | Count ASC      | NULL            | NULL                |


### E4) DATABASE MODELS

Now that you have plenty of sample data, re-work your competitions database to ensure the scenarios above are fully supported.