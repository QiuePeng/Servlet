<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.HangoutBean" />
<tr><td>員工編號<td><input type="text" disabled value="<%= emp.getArticleID() %>">
</body>
</html>