<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>員工資料</title>
</head>
<body style="background-color:#fdf5e6">
<div align="center">
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.EmpBean" />
<form method="post" action="./EmpUpdate">
<table>
<tr><td>員工編號<td><input type="text" name="empno" value="<%= emp.getEmpno() %>">
<tr><td>姓名<td><input type="text" name="ename"  value="<%= emp.getEname() %>">
<tr><td>到職日<td><input type="text" name="hiredate"  value="<%= emp.getHiredate() %>">
<tr><td>薪水<td><input type="text" name="salary"  value="<%= emp.getSalary() %>">
<tr><td>部門編號<td><input type="text" name="deptno"  value="<%= emp.getDeptno() %>">
<tr><td>職稱<td><input type="text" name="title"  value="<%= emp.getTitle() %>">
<tr><td><input type="submit" value="確定" />
</table>
</form>
</div>
</body>
</html>