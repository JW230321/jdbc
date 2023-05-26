<%@page import="util.Dbconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="util.*"%>
<%@ page import="java.sql.*"%>

<%
	Connection conn = Dbconnect.getConnection();

	String sql ="INSERT INTO saram VALUES('test4','test4',4)"; 
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.executeUpdate();
%>

</body>
</html>