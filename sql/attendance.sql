drop table attendance;

create table attendance( --�⼮���̺�
	nalja date not null,
	num number,
	state varchar2(15), --�⼮ ���� �Ἦ ����
	foreign key(num) references member(num) on delete cascade --foreign key����. member���̺� num����
);

insert into attendance values('2020-08-04',6666,'�⼮');
insert into attendance values('2020-08-04',7777,'�⼮');
insert into attendance values('2020-08-04',8888,'�Ἦ');

commit;

select * from attendance;