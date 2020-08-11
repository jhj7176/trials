drop table lectures;
drop sequence lectures_seq;

create sequence lectures_seq;
create table lectures(								--강좌테이블
	lecture_name varchar2(50),			--강좌명
	start_day date,									--교육기간
	end_day date,
	num number,										--회원번호/./담당강사의 회원번호가 들어감
	lecture_room number,							--강의실번호
	lecture_num number  primary key,
	foreign key(num) references member(num) on delete cascade
);

select * from LECTURES;

insert into lectures values ('산업기사취득과정A',sysdate,sysdate,4444,401,lectures_seq.nextval);
insert into lectures values ('UI/UX 개발자 과정',sysdate,sysdate,4444,401,lectures_seq.nextval);
insert into lectures values ('안드로이드 개발자 과정',sysdate,sysdate,4444,401,lectures_seq.nextval);

delete from LECTURES;

commit