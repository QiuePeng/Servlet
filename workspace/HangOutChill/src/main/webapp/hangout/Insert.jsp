<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�M���T</title>
</head>
<body>
<div align="center">
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.HangoutBean" />
<table border="1">
<tr><td>���u�s��<td><input type="text" disabled value="<%= emp.getArticleID() %>">
<td>���u�s��<td><input type="text" disabled value="<%= emp.getArticleName() %>">
<td>���u�s��<td><input type="text" disabled value="<%= emp.getNormalAccount() %>">
<td>���u�s��<td><input type="text" disabled value="<%= emp.getPlaceID() %>">
<td>���u�s��<td><input type="text" disabled value="<%= emp.getContent() %>">
<td>���u�s��<td><input type="text" disabled value="<%= emp.getTheme() %>">
<td>���u�s��<td><input type="text" disabled value="<%= emp.getWriteDate() %>">
<td>���u�s��<td><input type="text" disabled value="<%= emp.getEditDate() %>">

<a href="SelectAll">�d�ݩҦ��M��</a>
</table>
</div>
</body>
</html>