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
									<tr>
										<td class="td-type02">NO</td>
										<!--  <td class="td-type01"><% if(session.getAttribute("id") != null) {out.println(session.getAttribute("id"));} else {out.println("Guest");} %></td> -->
										<td class="td-type02">ID</td>
										<td class="td-type02">NAME</td>
										<td class="td-type02">QEUSTION</td>
										<td class="td-type02">DATE</td>
									</tr>
									<c:forEach items="${list}" var="dto"> 
									<tr>
										<td class="td-type03" bgcolor="#b5b5b5">${dto.qNum}</td>
										<td class="td-type03">${dto.qId}</td>
										<td class="td-type03">${dto.qName}</td>
										<td class="td-type04"><a class="content" href="qview?qNum=${dto.qNum}">
										<c:choose>
											<c:when test="${fn:length(dto.qContent)>25}">
												<c:out value="${fn:substring(dto.qContent,0,24)}" />
											</c:when>
											<c:otherwise>
												<c:out value="${dto.qContent}" />
											</c:otherwise>
										</c:choose>
										</a></td>
										<td class="td-type03"><c:out value="${fn:substring(dto.qDate,0,10)}" /></td>
									</tr>
									</c:forEach>
									<tr>
										<td colspan="5" align="right"><input id="button01" type="button" value="질문하기" onclick="javascript:window.location='question'"></td> 
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