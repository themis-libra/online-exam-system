--教师信息表
create table Teacher
	(Tno char(8) Not null unique,		/*教师号*/
	 Tname varchar(20) Not Null,		/*教师姓名*/
	 Tsex char(2) Not Null,				/*教师性别*/
	 Clno char(8) Not Null,				/*班级号*/
	 TPasswd char(8) Not Null);			/*登陆密码*/
--学生信息表
create table Student
	(Sno char(8) Not null unique,		/*学号*/
	 Sname varchar(20) Not Null,		/*学生姓名*/
	 Ssex char(2) Not Null,				/*学生性别*/
	 Clno char(8) Not Null,				/*班级号*/
	 SPasswd char(8) Not Null);			/*登陆密码*/
--管理员信息表
create table Administrator
	(Ano char(8) Not null unique,		/*管理员号*/
	 Aname varchar(20) Not Null,		/*管理员姓名*/
	 Asex char(2) Not Null,				/*管理员性别*/
	 APasswd char(8) Not Null);			/*登陆密码*/
--题库表
create table Question
	(Qno char(6) Not null unique,		/*题号*/
	 Qtype varchar(10) Not Null,		/*题目类型*/
	 Qtime date Not Null,				/*创建时间*/
	 Qcontent char(50),					/*题目内容*/
	 Qanswer char(5));					/*题目答案*/
--试卷表
create table Exampaper				
	(Eno char(6) Not null unique,		/*试卷号*/
	 Ename varchar(20) Not Null,		/*试卷名称*/
	 Etime date Not Null);				/*创建时间*/
--试卷—题库表
create table Exam_Question
	(Eno char(6) Not null,				/*试卷号*/
	 Qno varchar(20) Not Null,			/*题号*/
	 Qorder char(2) Not Null);			/*题目顺序*/
--考试信息表
create table Test
	(TestName char(6) Not null unique,	/*考试名称*/
	 Tstate varchar(20) Not Null,		/*考试状态*/
	 Tsub char(10) Not Null,			/*考试科目*/
	 Tduration char(8),					/*考试时长*/
	 Tstime char(8),					/*考试开始时间*/
	 Tdtime char(8),					/*考试截止时间*/
	 Ltime char(2) Not Null);			/*限制进入考试时间*/
--考试—学生表
create table Test_Student
	(Qno char(6) Not null unique,		/*考试名称*/
	 Sname varchar(20) Not Null,		/*学号*/
	 Seatno char(5) Not Null);			/*座位号*/
--通知表
create table Notice
	(Nname varchar(20) Not Null,		/*通知名称*/
	 Nstate char(2) Not Null,			/*通知状态*/
	 Nctime char(8),					/*创建时间*/
	 Nptime char(8),					/*发布时间*/
	 Ncontent char(8));					/*通知内容*/