<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	Connection conn=null;

	try {
		String url="jdbc:mysql://localhost:3306/mysql";
		String user="root";
		String password="1234";
		
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
		
	} catch (ClassNotFoundException ex) {
        out.println("<p>JDBC 드라이버를 찾을 수 없습니다. 오류: " + ex.getMessage() + "</p>");
	} catch (SQLException ex) {
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	}
%>