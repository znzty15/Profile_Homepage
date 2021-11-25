<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>>## Hyun's Profile Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<script language="JavaScript" src="${pageContext.request.contextPath}/resources/js/members.js" ></script>
</head>
<body>
   <%@ include file="include/header.jsp" %>
   <center>
   <table class="t-type01" width="1200" border="0" cellspacing="0" cellpadding="20">
      <tbody>
         <tr>
            <td><span class="title01">DEVELOPER HYUN'S PROFILE</span></td>
			</tr>
			<tr>
				<td><span class="title02">I'm Gaeun Hyun, a developer who wants a development job. Please call me back.</span></td>
         </tr>
         <tr>
            <table width="1100" border="0" cellspacing="0" cellpadding="10">
               <tbody>
                  <tr>
                     <td height="500" bgcolor="#D5D5D5">
                        <center>
                        <h3>${memberDto.mName }님의 회원정보</h3>
                        <table border="0" cellspacing="0" cellpadding="10">
                           <form action="infoModify" method="post" name="reg_frm">
                           <tr>
                              <td class="td-type01">MEMBER ID</td>
                              <td class="memberinfo">${memberDto.mId }</td>
                           </tr>
                           <tr>
                              <td class="td-type01">PASSWORD</td>
                              <td class="memberinfo">${memberDto.mPw }</td>
                           </tr>
                           <tr>
                              <td class="td-type01">NAME</td>
                              <td class="memberinfo">${memberDto.mName }</td>
                           </tr>
                           <tr>
                              <td class="td-type01">E-MAIL</td>
                              <td class="memberinfo">${memberDto.mEmail }</td>
                           </tr>
                           <tr>
                              <td class="td-type01">Join Date</td>
                              <td class="memberinfo"><c:out value="${fn:substring(memberDto.mDate, 0, 10)}" /></td>
                           </tr>
                           <tr>
                              <td colspan="2"><input id="button01" type="button" value="정보수정" onclick="javascript:window.location='infoModify'">&nbsp;&nbsp;&nbsp;&nbsp;
                              <input id="button01" type="button" value="처음화면" onclick="javascript:window.location='index'"></td>
                           </tr>
                           </form>
                        </table>
                        </center>
                     </td>
                  </tr>
               </tbody>
            </table>
         </tr>
      </tbody>
   </table>
   </center>   
   <%@ include file="include/footer.jsp" %>   
</body>
</html>