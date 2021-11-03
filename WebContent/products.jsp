<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>	<!-- 데이터베이스를 연결하는 외부 파일 dbconn.jsp의 내용을 포함하는 include 디렉티브 태그 -->
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;	
				String sql = "select * from product";	//product테이블의 모든 필드 값을 가져오는 select문
				pstmt = conn.prepareStatement(sql);		//preparedStatement 객체를 생성하는 prepareStatement()메소드
				rs = pstmt.executeQuery();				//select문을 실행하도록 PreparedStatement 객체의 executeQuery()메소드
				while (rs.next()) {		//select문으로 가져온 레코드가 있을 때까지 p_fileName, p_name, p_description, p_UnitPrice, p_id 필드 값을 가져와 출력하도록 반복 실행
			%>
			<div class="col-md-4">
				<img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%>
				<p><%=rs.getString("p_UnitPrice")%>원
				<p>
					<a href="./product.jsp?id=<%=rs.getString("p_id")%>"class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
			</div>
			
			<%
				}
				if (rs != null)	//생성 객체 해제
					rs.close();
				if (pstmt != null)	//생성 객체 해제
					pstmt.close();
				if (conn != null)	//생성 객체 해제
					conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
