<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>header</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
	<table class="t-type02" width="100%" border="0" cellspacing="0"	cellpadding="0">
		<tr height="30">
			<td width="69%">&nbsp;</td>
			<td width="5%"><a href="${pageContext.request.contextPath}/">home</a></td>
			<td width="5%">
			<%
            	String sId = (String) session.getAttribute("id");
         
            	if (sId == null) {
         	%>
         		<a href="login">login</a>
         	<% 
            	} else {
         	%>
         		<a href="logout">logout</a>
         	<%
            	} 
         	%>
			</td>
			<td width="5%">
			<%	         
	            if (sId == null) {
	         %>
	         <a href="join">join</a>
	         <% 
	            } else {
	         %>
	         <a href="infoModify">modify</a>
	         <%
	            } 
	         %>
	         
			</td>
			<td width="5%"><a href="profile">profile</a></td>
			<td width="6%"><a href="question">question</td>
			<td width="5%"><a href="contact">contact</a></td>
		</tr>
		<tr>
		<tr>
			<td height="50" colspan="7" bgcolor="#ffffff">&nbsp;</td>
		</tr>
	</table>
</body>
</html>