--��ʦ��Ϣ��
create table Teacher
	(Tno char(8) Not null unique,		/*��ʦ��*/
	 Tname varchar(20) Not Null,		/*��ʦ����*/
	 Tsex char(2) Not Null,				/*��ʦ�Ա�*/
	 Clno char(8) Not Null,				/*�༶��*/
	 TPasswd char(8) Not Null);			/*��½����*/
--ѧ����Ϣ��
create table Student
	(Sno char(8) Not null unique,		/*ѧ��*/
	 Sname varchar(20) Not Null,		/*ѧ������*/
	 Ssex char(2) Not Null,				/*ѧ���Ա�*/
	 Clno char(8) Not Null,				/*�༶��*/
	 SPasswd char(8) Not Null);			/*��½����*/
--����Ա��Ϣ��
create table Administrator
	(Ano char(8) Not null unique,		/*����Ա��*/
	 Aname varchar(20) Not Null,		/*����Ա����*/
	 Asex char(2) Not Null,				/*����Ա�Ա�*/
	 APasswd char(8) Not Null);			/*��½����*/
--����
create table Question
	(Qno char(6) Not null unique,		/*���*/
	 Qtype varchar(10) Not Null,		/*��Ŀ����*/
	 Qtime date Not Null,				/*����ʱ��*/
	 Qcontent char(50),					/*��Ŀ����*/
	 Qanswer char(5));					/*��Ŀ��*/
--�Ծ��
create table Exampaper				
	(Eno char(6) Not null unique,		/*�Ծ��*/
	 Ename varchar(20) Not Null,		/*�Ծ�����*/
	 Etime date Not Null);				/*����ʱ��*/
--�Ծ�����
create table Exam_Question
	(Eno char(6) Not null,				/*�Ծ��*/
	 Qno varchar(20) Not Null,			/*���*/
	 Qorder char(2) Not Null);			/*��Ŀ˳��*/
--������Ϣ��
create table Test
	(TestName char(6) Not null unique,	/*��������*/
	 Tstate varchar(20) Not Null,		/*����״̬*/
	 Tsub char(10) Not Null,			/*���Կ�Ŀ*/
	 Tduration char(8),					/*����ʱ��*/
	 Tstime char(8),					/*���Կ�ʼʱ��*/
	 Tdtime char(8),					/*���Խ�ֹʱ��*/
	 Ltime char(2) Not Null);			/*���ƽ��뿼��ʱ��*/
--���ԡ�ѧ����
create table Test_Student
	(Qno char(6) Not null unique,		/*��������*/
	 Sname varchar(20) Not Null,		/*ѧ��*/
	 Seatno char(5) Not Null);			/*��λ��*/
--֪ͨ��
create table Notice
	(Nname varchar(20) Not Null,		/*֪ͨ����*/
	 Nstate char(2) Not Null,			/*֪ͨ״̬*/
	 Nctime char(8),					/*����ʱ��*/
	 Nptime char(8),					/*����ʱ��*/
	 Ncontent char(8));					/*֪ͨ����*/