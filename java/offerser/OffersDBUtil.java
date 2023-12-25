package offerser;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class OffersDBUtil {

	//insertion
	public static boolean insertoffer(String description) {
		
		boolean isSuccess = false;
		
		//database connection
		String url = "jdbc:mysql://localhost:3306/rentforu";
		String user = "root";
		String pass = "1234";
		
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con4 = DriverManager.getConnection(url, user, pass);
			Statement stmt4 = con4.createStatement();
			String sql4 = "insert into offers values(0, '"+description+"')";
			
			int rs4 = stmt4.executeUpdate(sql4);  //return 2 values 0/1
			
			if(rs4 > 0) {
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
	
	//show offers
	public static List<Offers> getOfferDetails(){
		
		ArrayList<Offers> off = new ArrayList<>();
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con5 = DriverManager.getConnection(url, user, pass);
			Statement stmt5 = con5.createStatement();
			
			String sql5 = "select * from offers";
			
			ResultSet rs5 = stmt5.executeQuery(sql5);
			
			while(rs5.next()) {
				int oid1 = rs5.getInt(1);
				String description = rs5.getString(2);
				
				
				Offers o = new Offers(oid1, description);
				
				off.add(o);
				
			}
			
		
		}
		catch(Exception e) {
			e.printStackTrace();		
			}
		
		return off;
		}
	
	//update offers
	public static boolean updateOffers(String oid, String description) {
		
		boolean isSuccess = false;
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
				
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con6 = DriverManager.getConnection(url, user, pass);
			Statement stmt6 = con6.createStatement();
			
			//query
			String sql6="update offers set description='"+description+"' where oid='"+oid+"'";
					
			
			int rs6 = stmt6.executeUpdate(sql6);  //return 2 values 0/1
			
			if(rs6 > 0) {
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
	
	//delete offers
	public static boolean deleteOffer(String oid) {
		
		//create database connection
				String url = "jdbc:mysql://localhost:3306/rentforu";
				String user = "root";
				String pass = "1234";
		
		boolean isSuccess = false;
		
		int cooid = Integer.parseInt(oid);
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con7 = DriverManager.getConnection(url, user, pass);
			Statement stmt7 = con7.createStatement();
			
			String sql7 = "delete from offers where oid='"+cooid+"'";
			
			int rs7 = stmt7.executeUpdate(sql7);
			
			
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
}
