<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util. *, com.lcpan.bean.HangoutBean" %>
    <%! @SuppressWarnings("unchecked") %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>專欄列表</title>
</head>
<body>
<div align="center">
<h2>專欄列表</h2>
<a href='./hangout/Insert.html'>增加</a>
<table border="1">
<tr style="background-color:#a8fefa">
<th>專欄ID<th>專欄名稱<th>一般會員<th>地點ID<th>內容<th>主題<th>撰寫時間<th>修改時間<th>
<% List<HangoutBean> hgbs = (ArrayList<HangoutBean>)request.getAttribute("hgbs");
for(HangoutBean emp : hgbs) { %>
<tr><td><%= emp.getArticleID() %>
<td><%= emp.getArticleName() %>
<td><%= emp.getNormalAccount() %>
<td><%= emp.getPlaceID() %>
<td><%= emp.getContent() %>
<td><%= emp.getTheme() %>
<td><%= emp.getWriteDate() %>
<td><%= emp.getEditDate() %>

<td><a href="GetHgbData?ArticleID=<%= emp.getArticleID() %>">編輯</a> | <a href="Delete?ArticleName=<%= emp.getArticleName() %>">刪除</a>
<% } %>
</table>
</div>
</body>
</html>