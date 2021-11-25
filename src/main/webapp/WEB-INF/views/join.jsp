<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## Hyun's Profile Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<script language="JavaScript" src="${pageContext.request.contextPath}/resources/js/members.js" ></script>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
		<tbody>
			<tr>
				<td><span class="title01">DEVELOPER HYUN'S PROFILE</span></td>
			</tr>
			<tr>
				<td><span class="title02">I'm Gaeun Hyun, a developer who wants a development job. Please call me back.</span></td>
			</tr>
			<tr>
				<table width="70%" border="0" cellspacing="0" cellpadding="10">
					<tbody>
						<tr>
							<td height="500" bgcolor="#D5D5D5">
								<center>
								<table border="0" cellspacing="0" cellpadding="10">
									<form action="joinOk" method="post" name="reg_frm">
									<tr>
										<td class="td-type01">MEMBER ID</td>
										<td><input id="input01" type="text" name="id"></td>
									</tr>
									<tr>
										<td class="td-type01">PASSWORD</td>
										<td><input id="input01" type="password" name="pw"></td>
									</tr>
									<tr>
										<td class="td-type01">PW CHECK</td>
										<td><input id="input01" type="password" name="pw_check"></td>
									</tr>
									<tr>
										<td class="td-type01">NAME</td>
										<td><input id="input01" type="text" name="name"></td>
									</tr>
									<tr>
										<td class="td-type01">E-MAIL</td>
										<td><input id="input01" type="text" name="email"></td>
									</tr>
									<tr>
										<td colspan="2"><input id="button01" type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;
										<input id="button01" type="button" value="로그인" onclick="javascript:window.location='login'"></td>
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