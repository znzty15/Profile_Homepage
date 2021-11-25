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
								<%
									int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
	                              	int checkPw = Integer.parseInt(request.getAttribute("checkPw").toString());
									
									if(checkId == 0) {
								%>
									<script language="JavaScript">
										alert("아이디가 존재하지 않습니다.");
										history.go(-1);
									</script>
								<%
									} else if(checkPw == 0) {
								%>
									<script language="JavaScript">
										alert("비밀번호가 맞지 않습니다.");
										history.go(-1);
									</script>
								<%
									} else {
										session.setAttribute("ValidMem", "yes");
									}
								%>
									<tr>
										<td class="td-type01">
											${mName }님 안녕하세요.<br>
											로그인에 성공하셨습니다.
										</td>
									</tr>
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