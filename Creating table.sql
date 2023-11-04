create table nurse
(
  nurseid int primary key,
  nursename varchar(50) not null,
  NurseBirthDate date not null,
  dateassigned date default  getdate()
);
create table carecenter
(
  centerid int primary key,
  centerlocation varchar(100),
  nurseincharge INT,
  FOREIGN KEY(NurseinCharge) REFERENCES NURSE(NurseID));


select * from nurse;
select * from carecenter;
alter table carecenter add CareCenterType VARCHAR(100);
alter table carecenter alter column CareCenterType INT;
alter table carecenter drop column CareCenterType;
alter table  carecenter
drop constraint FK_nurseincharge;