package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection getConnection() throws Exception, ClassNotFoundException  {		

		Connection conn = null;		
	
		String url = "jdbc:mysql://localhost:3306/WebMarketDB";
		String user = "root";
		String password = "9096";

		//Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);		
		
		return conn;
	}	
}
