<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Using JavaBeans with JSP</title>

</head>
<body>
	<h3>Using JavaBeans with JSP</h3>
	<jsp:useBean id="stringBean" class="com.lcpan.bean.StringBean" />
	<ol>
		<li>
			<jsp:setProperty name="stringBean" property="message" value="This is an banana" />
			Set and get property with jsp:setProperty:<br>
			<i><jsp:getProperty name="stringBean" property="message"/></i>
		</li>
		<li>
			<% stringBean.setMessage("This is an banana"); %>
			Set and get property with jsp:setProperty:<br>
			<i><%= stringBean.getMessage() %></i>
		</li>
	</ol>
</body>
</html>