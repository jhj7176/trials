drop table bitjejudept;

create table bitjejudept(
	dept varchar2(20) primary key,
	lvl number unique not null
);
--�μ��� ���ѷ����� ���� ���̺�, 6���� �μ��� ������. 

insert into bitjejudept values ('�Ϲ�ȸ��',1);
insert into bitjejudept values ('������',2);
insert into bitjejudept values ('����',3);
insert into bitjejudept values ('����',4);
insert into bitjejudept values ('����',5);
insert into bitjejudept values ('������',6);

select * from bitjejudept;