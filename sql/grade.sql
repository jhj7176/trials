drop table grade;

create table grade(  			--�������̺�
	num number primary key,		--ȸ����ȣ�� ������ �ĺ���. ������̺� num����
	exam1 number,				--���輺��
	exam2 number,
	exam3 number,
	foreign key(num) references member(num) on delete cascade
);

select * from grade;

insert into grade(num,exam1) values(6666, 100);
insert into grade(num,exam1,exam2) values(7777, 80,90);
insert into grade values(8888, 90,70,100);


update grade set exam3=77 where num=6666;


delete from grade;

commit