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
								<table border="0" cellspacing="0" cellpadding="10">
									<form action="loginOk" method="post">
									<tr>
										<td class="td-type01">MEMBER ID</td>
										<td><input id="input01" type="text" name="id"></td>
									</tr>
									<tr>
										<td class="td-type01">PASSWORD</td>
										<td><input id="input01" type="password" name="pw"></td>
									</tr>
									<tr>
										<td colspan="2"><input id="button01" type="submit" value="로그인">&nbsp;&nbsp;&nbsp;&nbsp;
										<input id="button01" type="button" value="회원가입" onclick="javascript:window.location='join'"></td> 
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