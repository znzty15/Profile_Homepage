<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
									<form action="modify" method="post">
									<input type="hidden" name="qNum" value="${qview.qNum}">
									<tr>
										<td class="td-type01">ID</td>
										<!--  <td><input id="input01" type="text" name="qId" value="<% if(session.getAttribute("id") != null) {out.println(session.getAttribute("id"));} else {out.println("Guest");} %>" readonly></td> -->
										<td class="td-type01"><input id="input01" type="text" name="qId" value="${qview.qId}" readonly></td>
									</tr>
									<tr>
										<td class="td-type01">NAME</td>
										<td><input id="input01" type="text" name="qName" value="${qview.qName}"></td>
									</tr>
									<tr>
										<td class="td-type01">QUESTION</td>
										<td><textarea name="qContent" rows="5">${qview.qContent}</textarea></td>
									</tr>
									<tr>
										<td class="td-type01">E-MAIL</td>
										<td><input id="input01" type="text" name="qEmail" value="${qview.qEmail}"></td>
									</tr>
									<tr>
										<td class="td-type01">DATE</td>
										<td><input id="input01" type="text" name="qDate" value="<c:out value="${fn:substring(qview.qDate,0,10)}" />" readonly></td>
									</tr>
									<tr>
										<td colspan="2"><input id="button01" type="submit" value="질문수정">&nbsp;&nbsp;&nbsp;&nbsp;
										<input id="button01" type="button" value="글목록" onclick="javascript:window.location='list'">
										</td>
									</tr>
									<tr>
										<td colspan="2" align="right" class="td-type01"><a class="content" href="delete?qNum=${qview.qNum}"><strike>QUESTION DELETE</strike></a></td>
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