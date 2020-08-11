package com.bitjeju.member;

public class MemberDto {
	private String id_email, name, dept, password, lecture;
	private int num, lvl, phone;
	private int rownum;
	
	public MemberDto() {}
	
	public MemberDto(int num, String name) {
		super();
		this.num = num;
		this.name = name;
	}

	public MemberDto(String id_email, String name, String dept,
			String password, String lecture, int num, int lvl, int phone,
			int rownum) {
		super();
		this.id_email = id_email;
		this.name = name;
		this.dept = dept;
		this.password = password;
		this.lecture = lecture;
		this.num = num;
		this.lvl = lvl;
		this.phone = phone;
		this.rownum = rownum;
	}

	public String getId_email() {
		return id_email;
	}

	public void setId_email(String id_email) {
		this.id_email = id_email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLecture() {
		return lecture;
	}

	public void setLecture(String lecture) {
		this.lecture = lecture;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dept == null) ? 0 : dept.hashCode());
		result = prime * result
				+ ((id_email == null) ? 0 : id_email.hashCode());
		result = prime * result + ((lecture == null) ? 0 : lecture.hashCode());
		result = prime * result + lvl;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + num;
		result = prime * result
				+ ((password == null) ? 0 : password.hashCode());
		result = prime * result + phone;
		result = prime * result + rownum;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDto other = (MemberDto) obj;
		if (dept == null) {
			if (other.dept != null)
				return false;
		} else if (!dept.equals(other.dept))
			return false;
		if (id_email == null) {
			if (other.id_email != null)
				return false;
		} else if (!id_email.equals(other.id_email))
			return false;
		if (lecture == null) {
			if (other.lecture != null)
				return false;
		} else if (!lecture.equals(other.lecture))
			return false;
		if (lvl != other.lvl)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (num != other.num)
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (phone != other.phone)
			return false;
		if (rownum != other.rownum)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MemberDto [id_email=" + id_email + ", name=" + name + ", dept="
				+ dept + ", password=" + password + ", lecture=" + lecture
				+ ", num=" + num + ", lvl=" + lvl + ", phone=" + phone
				+ ", rownum=" + rownum + "]";
	}
	
}
