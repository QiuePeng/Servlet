<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>員工資料</title>
</head>
<body style="background-color:#fdf5e6">
<h2><%= request.getAttribute("mes")  %></h2>
<div align="center">
<table>
<tr><td>員工編號<td><input type="text" disabled  value="<%= request.getParameter("empno") %>">
<tr><td>姓名<td><input type="text" disabled  value="<%= request.getParameter("ename") %>">
<tr><td>到職日<td><input type="text" disabled value="<%= request.getParameter("hiredate") %>">
<tr><td>薪水<td><input type="text" disabled value="<%= request.getParameter("salary") %>">
<tr><td>部門編號<td><input type="text" disabled value="<%= request.getParameter("deptno") %>">
<tr><td>職稱<td><input type="text" disabled value="<%= request.getParameter("title") %>">

</table>
</div>
</body>
</html>