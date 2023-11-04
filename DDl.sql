use section4;
--DDL Commands ( Data Definition language commands)
-- create , alter , drop
--employee (empID(pk), emqname,salary between 0 to 20000,deptname(IT,mgnt,finance),Phone number unique,mngID(Fk) of empid)
-- String data datatype is text , varchar,nvarchar,char,nchar
--float data datatype is decimal, numeric
--pk and fk datatype should be saame
CREATE TABLE employe(
    empid int,
    empname VARCHAR(50) not null,
    salary NUMERIC (7,2),
    phonenumb CHAR (10) unique,
    deptname varchar (20),
    mang_id int REFERENCES employee(empid),
    CONSTRAINT pk_emp_empid PRIMARY KEY(empid),
    CONSTRAINT ck_emp_salary CHECK(salary between 0 and 20000),
    CONSTRAINT ck_emp_deptname CHECK(deptname in ('it','mgnt','finance')));
   

CREATE TABLE course(
    courseid char(6),
    cname VARCHAR(100) unique,
    CONSTRAINT pk_course_courseid PRIMARY KEY(courseid),
    CONSTRAINT uq_course_cname UNIQUE(cname));


CREATE TABLE certificate(
    certificateid int,
    empid int,
    courseid char(6),
    certificate_desc char (50) default 'N/A',
    CONSTRAINT pk_certificate_certificateid PRIMARY KEY(certificateid),
    CONSTRAINT fk_certificate_empid FOREIGN KEY (empid) REFERENCES employee(empid),
    CONSTRAINT fk_certificate_courseid FOREIGN KEY (courseid) REFERENCES course(courseid));
    
--drop table command
-- drop fk table first and then pk table
DROP table certificate;
DROP table course;
DROP table employe;


CREATE TABLE customer(
    customerid int,
    custname VARCHAR(50) not null,
    custaddress VARCHAR (50),
    custnumb CHAR (10) unique,
    CONSTRAINT pk_cust_customerid PRIMARY KEY(customerid));

CREATE TABLE order1(
    orderid int,
    orderdate date,
    customerid int,
    CONSTRAINT pk_order_orderid PRIMARY KEY(orderid),
    CONSTRAINT fk_cust_customerid FOREIGN KEY (customerid) REFERENCES customer(customerid));


CREATE TABLE orderproduct(
    orderid int,
    customerid int,
    quantityordered int,
    CONSTRAINT cpk_ordprod_orderproductid PRIMARY KEY(orderid,customerid),
    CONSTRAINT ck_emp_quantityordered CHECK(quantityordered > 0));

CREATE TABLE product(
    productid int,
    proddesc VARCHAR(100) default 'N/A',
    unitprice numeric(10,2),
    CONSTRAINT pk_pro_productid PRIMARY KEY(productid),
    CONSTRAINT ck_pro_unitprice CHECK(unitprice > 0));