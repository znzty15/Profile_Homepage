package com.javaGG.profile_home.dao;

import java.util.ArrayList;

import com.javaGG.profile_home.dto.ContentDto;
import com.javaGG.profile_home.dto.MemberDto;

public interface IDao {
	
	public ArrayList<ContentDto> listDao();
	public void writeDao(String qId, String qName, String qContent, String qEmail);
	public ContentDto qviewDao(String qNum);
	public void deleteDao(String qNum);
	public void modifyDao(String qName, String qContent, String qEmail, String qNum);
	public void joinDao(String mId, String mPw, String mName, String mEmail);
	public MemberDto loginOkDao(String mId);
	public int checkIdDao(String mId);
	public int checkPwDao(String mId, String mPw);
	public void infoModifyOkDao(String mPw, String mName, String mEmail, String mId);
}
