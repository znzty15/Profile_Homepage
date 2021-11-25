package com.javaGG.profile_home.dto;

public class MemberDto {
	
	private String mId;
	private String mPw;
	private String mName;
	private String mEmail;
	private String mDate;
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MemberDto(String mId, String mPw, String mName, String mEmail, String mDate) {
		super();
		this.mId = mId;
		this.mPw = mPw;
		this.mName = mName;
		this.mEmail = mEmail;
		this.mDate = mDate;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPw() {
		return mPw;
	}

	public void setmPw(String mPw) {
		this.mPw = mPw;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmDate() {
		return mDate;
	}

	public void setmDate(String mDate) {
		this.mDate = mDate;
	}
	
	
	
}
