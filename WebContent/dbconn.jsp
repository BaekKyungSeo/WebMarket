<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<%
	Connection conn = null;	//conn 객체를 null로 초기화

	try {
		String url = "jdbc:mysql://localhost:3306/WebMarketDB";	//연결할 데이터 베이스
		String user = "root";	//데이터 베이스 아이디
		String password = "9096";	//데이터 베이스 비번

		//Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.cj.jdbc.Driver");	//데이터 베이스 연동을 위해 JDBC를 로딩하는 Class.forName()메소드
		conn = DriverManager.getConnection(url, user, password);	//DriverManager 객체로 Conn 객체를 가져오도록 getConnection()메소드
		if(conn == null){
			throw new Exception();	//conn이 null값이면  잡아서 catch로 넘겨줌
		}
		
	} catch (Exception ex) {
		out.println("데이터베이스 연결이 실패되었습니다.<br>");
		out.println("Exception: " + ex.getMessage());
	}
%>