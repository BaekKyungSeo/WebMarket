<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<%
	Connection conn = null;	

	try {
		String url = "jdbc:mysql://localhost:3306/WebMarketDB";
		String user = "root";
		String password = "9096";

		//Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		if(conn == null){
			throw new Exception();
		}
		
	} catch (Exception ex) {
		out.println("데이터베이스 연결이 실패되었습니다.<br>");
		out.println("Exception: " + ex.getMessage());
	}
%>