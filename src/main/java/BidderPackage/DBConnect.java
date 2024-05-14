package BidderPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url ="jdbc:mysql://localhost:3306/biddingnest";
	private static String userName = "root";
	private static String password = "nihinsa0816";
	private static Connection con;
	
	// method to create database connection 
	public static Connection getConnection() {
		
		try {
			//Register DB
			Class.forName("com.mysql.jdbc.Driver");
			//create an object to retiurn connection
			con = DriverManager.getConnection(url, userName, password);
			
			
			
		}catch(Exception e){
			System.out.println("DataBase connection is not success!");
		}
		
		return con;
	}
    
}
