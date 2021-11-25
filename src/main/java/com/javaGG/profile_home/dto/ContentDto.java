package com.javaGG.profile_home.dto;

public class ContentDto {
	
	private int qNum;
	private String qId;
	private String qName;
	private String qContent;
	private String qEmail;
	private String qDate;
	
	public ContentDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ContentDto(int qNum, String qId, String qName, String qContent, String qEmail, String qDate) {
		super();
		this.qNum = qNum;
		this.qId = qId;
		this.qName = qName;
		this.qContent = qContent;
		this.qEmail = qEmail;
	}

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public String getqId() {
		return qId;
	}

	public void setqId(String qId) {
		this.qId = qId;
	}

	public String getqName() {
		return qName;
	}

	public void setqName(String qName) {
		this.qName = qName;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getqEmail() {
		return qEmail;
	}

	public void setqEmail(String qEmail) {
		this.qEmail = qEmail;
	}

	public String getqDate() {
		return qDate;
	}

	public void setqDate(String qDate) {
		this.qDate = qDate;
	}
	
	
	
}
