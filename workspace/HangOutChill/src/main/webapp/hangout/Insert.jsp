<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>專欄資訊</title>
</head>
<body>
<div align="center">
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.HangoutBean" />
<table border="1">
<tr><td>員工編號<td><input type="text" disabled value="<%= emp.getArticleID() %>">
<td>員工編號<td><input type="text" disabled value="<%= emp.getArticleName() %>">
<td>員工編號<td><input type="text" disabled value="<%= emp.getNormalAccount() %>">
<td>員工編號<td><input type="text" disabled value="<%= emp.getPlaceID() %>">
<td>員工編號<td><input type="text" disabled value="<%= emp.getContent() %>">
<td>員工編號<td><input type="text" disabled value="<%= emp.getTheme() %>">
<td>員工編號<td><input type="text" disabled value="<%= emp.getWriteDate() %>">
<td>員工編號<td><input type="text" disabled value="<%= emp.getEditDate() %>">

<a href="SelectAll">查看所有專欄</a>
</table>
</div>
</body>
</html>