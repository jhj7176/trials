drop table lectures;
drop sequence lectures_seq;

create sequence lectures_seq;
create table lectures(								--�������̺�
	lecture_name varchar2(50),			--���¸�
	start_day date,									--�����Ⱓ
	end_day date,
	num number,										--ȸ����ȣ/./��簭���� ȸ����ȣ�� ��
	lecture_room number,							--���ǽǹ�ȣ
	lecture_num number  primary key,
	foreign key(num) references member(num) on delete cascade
);

select * from LECTURES;

insert into lectures values ('������������A',sysdate,sysdate,4444,401,lectures_seq.nextval);
insert into lectures values ('UI/UX ������ ����',sysdate,sysdate,4444,401,lectures_seq.nextval);
insert into lectures values ('�ȵ���̵� ������ ����',sysdate,sysdate,4444,401,lectures_seq.nextval);

delete from LECTURES;

commit