

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;



public class DriverTest {

@SuppressWarnings("deprecation")
public static void main(String args[]) {



		Connection conn;



		try {

			Class.forName("com.mysql.jdbc.Driver").newInstance();

			conn = DriverManager.getConnection(

					"jdbc:mysql://localhost:3306/test", "root", "9096");

			System.out.println("Success!");

		} catch (SQLException ex) {

			System.out.println("SQLException:" + ex);

		} catch (Exception e) {

			System.out.println("Exception:" + e);

		}

	}

}
