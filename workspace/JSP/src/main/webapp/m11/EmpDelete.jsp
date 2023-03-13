<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刪除資料</title>
</head>
<body>
<form method="post" action="./GetAllData">
<h2><%= request.getAttribute("mes")  %></h2>
<input type="submit" value="確定" />
</form>
</body>
</html>