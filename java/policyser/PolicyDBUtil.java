package policyser;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class PolicyDBUtil {

	//insertion
	
	public static boolean insertpolicy(String pdescription) {
		
		boolean isSuccess = false;
		
		//database connection
		String url = "jdbc:mysql://localhost:3306/rentforu";
		String user = "root";
		String pass = "1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con8 = DriverManager.getConnection(url, user, pass);
			Statement stmt8 = con8.createStatement();
			String sql8 = "insert into policy values(0, '"+pdescription+"')";
			
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
	
	//show policies
	public static List<Policy> getPolicyDetails(){
		
		ArrayList<Policy> pol = new ArrayList<>();
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con1 = DriverManager.getConnection(url, user, pass);
			Statement stmt1 = con1.createStatement();
			
			String sql1 = "select * from policy";
			
			ResultSet rs1 = stmt1.executeQuery(sql1);
			
			while(rs1.next()) {
				int pid1 = rs1.getInt(1);
				String pdescription = rs1.getString(2);
				
				
				Policy p = new Policy(pid1, pdescription);
				
				pol.add(p);
				
			}
			
		
		}
		catch(Exception e) {
			e.printStackTrace();		
			}
		
		return pol;
		}
	
	//update policies
	public static boolean updatePolicy(String pid, String pdescription) {
		
		boolean isSuccess = false;
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
				
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con2 = DriverManager.getConnection(url, user, pass);
			Statement stmt2 = con2.createStatement();
			
			//query
			String sql2="update policy set pdescription='"+pdescription+"' where pid='"+pid+"'";
					
			
			int rs2 = stmt2.executeUpdate(sql2);  //return 2 values 0/1
			
			if(rs2 > 0) {
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
	
	//delete policies
	public static boolean deletePolicy(String pid) {
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
		
		boolean isSuccess = false;
		
		int poid = Integer.parseInt(pid);
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con3 = DriverManager.getConnection(url, user, pass);
			Statement stmt3 = con3.createStatement();
			
			String sql3 = "delete from policy where pid='"+poid+"'";
			
			int rs3 = stmt3.executeUpdate(sql3);
			
			
			if(rs3 > 0) {
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
