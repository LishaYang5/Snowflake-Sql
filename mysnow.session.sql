CREATE DATABASE IF NOT EXISTS MY_DB;

USE MY_DB;

CREATE SCHEMA IF NOT EXISTS FiftySQL;

CREATE TABLE FiftySQL.SC (
  SId varchar(10) DEFAULT NULL,
  CId varchar(10) DEFAULT NULL,
  score decimal(18,1) DEFAULT NULL
) ;

INSERT INTO FiftySQL.SC VALUES 
    ('01','01',80.0),
    ('01','02',90.0),
    ('01','03',99.0),
    ('02','01',70.0),
    ('02','02',60.0),
    ('02','03',80.0),
    ('03','01',80.0),
    ('03','02',80.0),
    ('03','03',80.0),
    ('04','01',50.0),
    ('04','02',30.0),
    ('04','03',20.0),
    ('05','01',76.0),
    ('05','02',87.0),
    ('06','01',31.0),
    ('06','03',34.0),
    ('07','02',89.0),
    ('07','03',98.0);


CREATE TABLE FiftySQL.Course (
  CId varchar(10) DEFAULT NULL,
  Cname varchar(10) DEFAULT NULL,
  TId varchar(10) DEFAULT NULL
) ;

INSERT INTO FiftySQL.Course VALUES 
    ('01','语文','02'),
    ('02','数学','01'),
    ('03','英语','03');


CREATE TABLE FiftySQL.Student (
  SId varchar(10) DEFAULT NULL,
  Sname varchar(10) DEFAULT NULL,
  Sage datetime DEFAULT NULL,
  Ssex varchar(10) DEFAULT NULL
);

INSERT INTO FiftySQL.Student VALUES 
    ('01','赵雷','1990-01-01 00:00:00','男'),
    ('02','钱电','1990-12-21 00:00:00','男'),
    ('03','孙风','1990-12-20 00:00:00','男'),
    ('04','李云','1990-12-06 00:00:00','男'),
    ('05','周梅','1991-12-01 00:00:00','女'),
    ('06','吴兰','1992-01-01 00:00:00','女'),
    ('07','郑竹','1989-01-01 00:00:00','女'),
    ('09','张三','2017-12-20 00:00:00','女'),
    ('10','李四','2017-12-25 00:00:00','女'),
    ('11','李四','2012-06-06 00:00:00','女'),
    ('12','赵六','2013-06-13 00:00:00','女'),
    ('13','孙七','2014-06-01 00:00:00','女');


CREATE TABLE FiftySQL.Teacher (
  TId varchar(10) DEFAULT NULL,
  Tname varchar(10) DEFAULT NULL
);

INSERT INTO FiftySQL.Teacher VALUES 
    ('01','张三'),
    ('02','李四'),
    ('03','王五');