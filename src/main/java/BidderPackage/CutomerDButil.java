//when user enter username and pwd get his details from db and assign to customer class variables
package BidderPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CutomerDButil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs=null;
	
	//create a db connection and get values from db assign values to  customer class
	public static List<Customer> validate(String userName, String password){
		
		ArrayList<Customer> cus = new ArrayList<Customer>();
		
		
		//validate
		
		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			String sql= "select * from bidder where userName ='"+userName+"'and password='"+password+"'";
			
			//to execute query
			rs = stmt.executeQuery(sql);

			//if username and password available
			if(rs.next()) {
				int ID = rs.getInt(1);
				String Name= rs.getString(2);
				String email= rs.getString(3);
				String phoneNumber= rs.getString(4);
				String username= rs.getString(5);
				String pwd= rs.getString(6);
				
				
				Customer c = new Customer(ID,Name,email,phoneNumber,username,pwd);
				
				//pass customer object to arraylist object
				
				cus.add(c);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		//
		return cus;
	}
	//in order to insert data to db
	
	public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
	boolean isSuccess = false;
	
	
	
	try {
		con = DBConnect.getConnection();
		stmt =con.createStatement();
		
		//insert values pass from parameters
		String sql = "insert into bidder values(0,'"+name+"' ,'"+email+"','"+phone+"','"+username+"','"+password+"')";
		int rs =stmt.executeUpdate(sql);
		//if db connection success return 1
		if(rs >0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return isSuccess;
	}
	
	public static boolean updateCustomer(String id,String name,String email,String phone,String username,String password) {
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "update bidder set Name='"+name+"',email='"+email+"',phoneNumber='"+phone+"',userName='"+username+"',password='"+username+"'" +"where Id ='"+id+"'";
		int rs=stmt.executeUpdate(sql);
		
		if(rs >0) {
			isSuccess = true;
			
		}
		else {
			isSuccess = false;
			
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
		return isSuccess;
}
	public static List<Customer> getCustomerDetalis(String Id){
		int convertedId = Integer.parseInt(Id);
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from bidder where Id ='"+convertedId+"'";
			
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String username=rs.getString(5);
				String pwd=rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,username,pwd);
				cus.add(c);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return cus;
	}
	public static boolean deletecustomer(String id) {
		
		int convertedId = Integer.parseInt(id);
		
		try {
			
			con= DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from bidder where id='"+convertedId+"'";
			
			//inorder to execute query
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess =true;
			}
			else {
				isSuccess =false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
