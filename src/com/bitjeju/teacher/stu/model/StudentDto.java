package com.bitjeju.teacher.stu.model;

import java.sql.Date;
import java.util.ArrayList;

public class StudentDto {
	private int num, lecture_room, lecture_num, exam1, exam2, exam3, phone;
	//�л� ȸ����ȣ, ���ǽ� ���¹�ȣ,���輺��, ����ó
	private Date start_day, end_day;
	private String name, teacher_name, lecture_name;
	//�л��̸�, �����̸�, ���¸�
	private ArrayList<String> attList;
	//�⼮���̺� ������ ���� ����Ʈ
	private ArrayList<Date> attNaljaList;

	public StudentDto(int num, int lecture_room, int lecture_num, int exam1, int exam2, int exam3, int phone,
			Date start_day, Date end_day, String name, String teacher_name, String lecture_name,
			ArrayList<String> attList, ArrayList<Date> attNaljaList) {
		super();
		this.num = num;
		this.lecture_room = lecture_room;
		this.lecture_num = lecture_num;
		this.exam1 = exam1;
		this.exam2 = exam2;
		this.exam3 = exam3;
		this.phone = phone;
		this.start_day = start_day;
		this.end_day = end_day;
		this.name = name;
		this.teacher_name = teacher_name;
		this.lecture_name = lecture_name;
		this.attList = attList;
		this.attNaljaList = attNaljaList;
	}

	@Override
	public String toString() {
		return "StudentDto [num=" + num + ", lecture_room=" + lecture_room + ", lecture_num=" + lecture_num + ", exam1="
				+ exam1 + ", exam2=" + exam2 + ", exam3=" + exam3 + ", phone=" + phone + ", start_day=" + start_day
				+ ", end_day=" + end_day + ", name=" + name + ", teacher_name=" + teacher_name + ", lecture_name="
				+ lecture_name + ", attList=" + attList + ", attNaljaList=" + attNaljaList + "]";
	}

	public String getLecture_name() {
		return lecture_name;
	}

	public void setLecture_name(String lecture_name) {
		this.lecture_name = lecture_name;
	}

	public StudentDto() {
		// TODO Auto-generated constructor stub
	}
	
	public double attRate() {
		int cnt = 0;//�⼮ ī��Ʈ.
		for (int i=0 ; i<attList.size();i++) {//����Ʈ ������ = �� �������� �� �� 
			if(attList.get(i).equals("�⼮")) { 		//�� ������ �� '�⼮'�� ��
				cnt++;	//�⼮�ϸ� ī��Ʈ +1	
			}//if
		}//for
		double ar = 0;
		if(attList.size()!=0) {
			ar = cnt*100/attList.size()*1.0;
		}
		
		return ar;//�⼮�ѳ�/�Ѽ����� 
	}
	
	public double classProgress() {//���� �����ϼ�/��ü�����Ⱓ
		return attList.size()*100/90*1.0;
	}
	
	public int cntAtt() {
		int cnt=0;
		for (int i=0 ; i<attList.size();i++) {//����Ʈ ������ = �� �������� �� �� 
			if(attList.get(i).equals("�⼮")) { 		//�� ������ �� '�⼮'�� ��
				cnt++;	//�⼮�ϸ� ī��Ʈ +1	
			}//if
		}//for
		return cnt;
	}
	public int cntLate() {
		int cnt=0;
		for (int i=0 ; i<attList.size();i++) {//����Ʈ ������ = �� �������� �� �� 
			if(attList.get(i).equals("����")) { 		//�� ������ �� '����'�� ��
				cnt++;	//�����ϸ� ī��Ʈ +1	
			}//if
		}//for
		return cnt;
	}
	public int cntEarly() {
		int cnt=0;
		for (int i=0 ; i<attList.size();i++) {//����Ʈ ������ = �� �������� �� �� 
			if(attList.get(i).equals("����")) { 		//�� ������ �� '����'�� ��
				cnt++;	//�����ϸ� ī��Ʈ +1	
			}//if
		}//for
		return cnt;
	}
	public int cntAbsent() {
		int cnt=0;
		for (int i=0 ; i<attList.size();i++) {//����Ʈ ������ = �� �������� �� �� 
			if(attList.get(i).equals("�Ἦ")) { 		//�� ������ �� '�Ἦ'�� ��
				cnt++;	//�Ἦ�ϸ� ī��Ʈ +1	
			}//if
		}//for
		return cnt;
	}

	
	
	public ArrayList<String> getAttList() {
		return attList;
	}



	public void setAttList(ArrayList<String> attList) {
		this.attList = attList;
	}



	public ArrayList<Date> getAttNaljaList() {
		return attNaljaList;
	}



	public void setAttNaljaList(ArrayList<Date> attNaljaList) {
		this.attNaljaList = attNaljaList;
	}



	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getLecture_room() {
		return lecture_room;
	}
	public void setLecture_room(int lecture_room) {
		this.lecture_room = lecture_room;
	}
	public int getLecture_num() {
		return lecture_num;
	}
	public void setLecture_num(int lecture_num) {
		this.lecture_num = lecture_num;
	}
	public int getExam1() {
		return exam1;
	}
	public void setExam1(int exam1) {
		this.exam1 = exam1;
	}
	public int getExam2() {
		return exam2;
	}
	public void setExam2(int exam2) {
		this.exam2 = exam2;
	}
	public int getExam3() {
		return exam3;
	}
	public void setExam3(int exam3) {
		this.exam3 = exam3;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public Date getStart_day() {
		return start_day;
	}
	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}
	public Date getEnd_day() {
		return end_day;
	}
	public void setEnd_day(Date end_day) {
		this.end_day = end_day;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}

}
