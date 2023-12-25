package customerser;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	//validation
	public static List<Customer> validate(String username, String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rentforu";
		String user = "root";
		String pass = "1234";
		
		//validate
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con6 = DriverManager.getConnection(url, user, pass);
			Statement stmt6 = con6.createStatement();
			
			String sql6 = "select * from customer where username='"+username+"' and password='"+password+"'";
			
			ResultSet rs6 = stmt6.executeQuery(sql6);
			
			if(rs6.next()) {
				int id = rs6.getInt(1);
				String name = rs6.getString(2);
				String email = rs6.getString(3);
				String phone = rs6.getString(4);
				String userU = rs6.getString(5);
				String passU = rs6.getString(6);
				
				Customer c = new Customer(id, name, email, phone, userU, passU);
				cus.add(c);
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return cus;
		
	}
	
	//insertion
	
	public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		//database connection
		String url = "jdbc:mysql://localhost:3306/rentforu";
		String user = "root";
		String pass = "1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con7 = DriverManager.getConnection(url, user, pass);
			Statement stmt7 = con7.createStatement();
			String sql7 = "insert into customer values(0, '"+name+"', '"+email+"', '"+phone+"', '"+username+"', '"+password+"')";
			
			int rs7 = stmt7.executeUpdate(sql7);  //return 2 values 0/1
			
			if(rs7 > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateCustomer(String id, String name, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
				
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con8 = DriverManager.getConnection(url, user, pass);
			Statement stmt8 = con8.createStatement();
			
			//query
			String sql8="update customer set name='"+name+"', email='"+email+"', phone='"+phone+"', username='"+username+"', password='"+password+"'"
						+ "where id ='"+id+"'";
			
			int rs8 = stmt8.executeUpdate(sql8);  //return 2 values 0/1
			
			if(rs8 > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomerDetails(String id){
	
		int convid = Integer.parseInt(id);
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con9 = DriverManager.getConnection(url, user, pass);
			Statement stmt9 = con9.createStatement();
			
			String sql9 = "select * from customer where id='"+convid+"'";
			
			ResultSet rs9 = stmt9.executeQuery(sql9);
			
			while(rs9.next()) {
				int id1 = rs9.getInt(1);
				String name = rs9.getString(2);
				String email = rs9.getString(3);
				String phone = rs9.getString(4);
				String username = rs9.getString(5);
				String password = rs9.getString(6);
				
				Customer c = new Customer(id1, name, email, phone, username, password);
				
				cus.add(c);
				
			}
			
		
		}
		catch(Exception e) {
			e.printStackTrace();		
			}
		
		return cus;
		}
		
	public static boolean deleteCustomer(String id) {
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
		
		boolean isSuccess = false;
		
		int Convid = Integer.parseInt(id);
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con0 = DriverManager.getConnection(url, user, pass);
			Statement stmt0 = con0.createStatement();
			
			String sql0 = "delete from customer where id='"+Convid+"'";
			
			int rs0 = stmt0.executeUpdate(sql0);
			
			
			if(rs0 > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
		
}
