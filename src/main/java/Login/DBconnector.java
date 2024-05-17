package Login;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnector {
	
	private static String url = "jdbc:mysql://localhost:3306/login";
	private static String uname = "root";
	private static String pass = "sanuthi";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,uname,pass);
			
			
		}catch(Exception e) {
			
			System.out.println("Database connection error!");
		}
		
		return con;
	}
}
