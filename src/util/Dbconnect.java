package util;


import java.sql.*;

public class Dbconnect {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		
		Class.forName("org.mariadb.jdbc.Driver");

		Connection conn = null;
		String host = "jdbc:mariadb://localhost:3306/wnsdnjs153";
		String id = "root";
		String ps = "1234";
		conn = DriverManager.getConnection(host, id, ps);
		return conn;
	}
}
