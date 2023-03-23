create table section (
    course_id varchar(8),
    sec_id varchar(8),
    semester varchar(6),
    year numeric(4,0),
    primary key (course_id, sec_id, semester, year),
    check(semester in ('Fall', 'Winter', 'Spring', 'Summer'))
);

create table namasec (
    nama varchar(24),
    course_id varchar(8),
    sec_id varchar(8),
    semester varchar(6),
    year numeric(4,0),
    constraint fk_namasection foreign key (course_id, sec_id, semester, year) references section (course_id, sec_id, semester, year)
);

INSERT INTO section VALUES('CR0001', 'SC0003', 'Spring', '2002');

insert into namasec values('orang', 'CR0001', 'SC0003', 'Spring', '2002');

insert into namasec values('orang', 'CR0001', 'SC0003', 'Spring', '2020');

select * from section;
select * from namasec;

select * from section natural join namasec;

alter session set "_ORACLE_SCRIPT"=true;
CREATE USER kamal IDENTIFIED BY abcd1234;
grant select on section to kamal;
grant create session to kamal;
revoke select on section from kamal;

--sbg user coba
select * from sys.section;