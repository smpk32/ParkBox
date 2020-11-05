package com.thein.parkbox.testVo;

import java.util.Date;

public class vo {
	public vo() {
		super();
	}
	private String name;
	private String pw;
	private String phone;
	private Date birth;
	private int point;
	private Date sigdate;
	private Date lastLog;
	private char status;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getSigdate() {
		return sigdate;
	}
	public void setSigdate(Date sigdate) {
		this.sigdate = sigdate;
	}
	public Date getLastLog() {
		return lastLog;
	}
	public void setLastLog(Date lastLog) {
		this.lastLog = lastLog;
	}
	public char getStatus() {
		return status;
	}
	public void setStatus(char status) {
		this.status = status;
	}
}
