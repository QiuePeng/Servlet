<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>專欄列表</title>
</head>
<body>
<div align="center">
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.HangoutBean" />
<a href='./hangout/Insert.html'>增加</a><br>
<form method="post" action="./SelectKey">
    關鍵字: <input type="text" name="keyName" placeholder="請輸入專欄名稱"/>
    <input type="submit" value="搜尋" />
</form>
<table border="1">
<tr style="background-color:#a8fefa">
<th>專欄ID<th>專欄名稱<th>一般會員<th>地點ID<th>內容<th>主題<th>撰寫時間<th>修改時間<th>
<tr><td><%= emp.getArticleID() %>
<td><%= emp.getArticleName() %>
<td><%= emp.getNormalAccount() %>
<td><%= emp.getPlaceID() %>
<td><%= emp.getContent() %>
<td><%= emp.getTheme() %>
<td><%= emp.getWriteDate() %>
<td><%= emp.getEditDate() %>
<td><a href="GetHgbData?ArticleID=<%= emp.getArticleID() %>">編輯</a> | <a href="Delete?ArticleName=<%= emp.getArticleName() %>">刪除</a>
</table>
</div>
</body>
</html>