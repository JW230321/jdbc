<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Step 1 SQL Packages Import -->
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Step 2 JDBC Driver Load -->
<%

	try {

	Class.forName("org.mariadb.jdbc.Driver"); // MariaDB 사용 시
//	Class.forName("com.mysql.jdbc.Driver");	// MySQL 사용 시
	out.print("드라이버 로그 성공...<br/>");
	} catch(ClassNotFoundException err) {
		out.print("드라이버 로드 실패...<br/>" + err.getMessage());
	}

%>

<!-- Step 3 Connection Object -->

<% 

	Connection conn = null;
try{
	//String host = "jdbc:mysql://localhost:3306/";
	String host = "jdbc:mariadb://localhost:3306/wnsdnjs153";
	String id = "root";
	String ps = "1234";

	conn = DriverManager.getConnection(host, id, ps);
	out.print("연결 객체 생성 성공...<br/>");
	
}catch(SQLException err){
	out.print("연결객체 생성 실패...<br/>" + err.getMessage());
}

%>

<!-- Step 4 Statement Object -->

<%

	String sql ="SELECT * FROM saram";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	out.print("구문 생성 성공...<br/>");

%>
</body>
</html>