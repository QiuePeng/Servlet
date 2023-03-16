<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>專欄資料</title>
</head>
<body style="background-color:#fdf5e6">
<div align="center">
<h2>專欄資料</h2>
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.HangoutBean" />
<form method="post" action="./Update">
<table>
<tr><td>專欄ID<td><input type="text" name="ArticleID" value="<%= emp.getArticleID() %>">
<tr><td>專欄名稱<td><input type="text" name="ArticleName"  value="<%= emp.getArticleName() %>">
<tr><td>一般會員<td><input type="text" name="NormalAccount"  value="<%= emp.getNormalAccount() %>">
<tr><td>地點ID<td><input type="text" name="PlaceID"  value="<%= emp.getPlaceID() %>">
<tr><td>內容<td><input type="text" name="Content"  value="<%= emp.getContent() %>">
<tr><td>主題<td><input type="text" name="Theme"  value="<%= emp.getTheme() %>">
<tr><td>撰寫時間<td><input type="text" name="WriteDate"  value="<%= emp.getWriteDate() %>">
<tr><td>編輯時間<td><input type="text" name="EditDate"  value="<%= emp.getEditDate() %>">

<tr><td><input type="submit" value="確定" />
</table>
</form>
</div>
</body>
</html>