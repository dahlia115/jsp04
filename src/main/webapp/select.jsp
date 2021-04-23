<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>select.jsp<br>
	<%
		//디비 연결
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url= "jdbc:oracle:thin:@localhost:1521:xe";
		String id ="jwoo", pwd="1234";
		DriverManager.getConnection(url, id, pwd);
	%>

</body>
</html>