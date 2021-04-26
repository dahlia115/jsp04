<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
		Connection con = DriverManager.getConnection(url, id, pwd);
		
		String sql="SELECT * FROM newst";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		out.print("id / name / age<hr>");
		/*
		while(rs.next()){
			out.print(rs.getString("id")+"/");
			out.print(rs.getString("name")+"/");
			out.print(rs.getString("age")+"<br>");
		}
		*/
		while(rs.next()){%>
			<%=rs.getString("id") %> /
			<a href="select02.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("name") %></a> /
			<%=rs.getString("age") %> <br>		
			
		<%} %>
		
		<a href="select02.jsp">select02이동</a>
</body>
</html>














