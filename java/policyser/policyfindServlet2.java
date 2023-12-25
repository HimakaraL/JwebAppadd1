package policyser;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/policyfindServlet2")
public class policyfindServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid1 = request.getParameter("pid");
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rentforu";
		String user = "root";
		String pass = "1234";
		
try {
	
		Class.forName("com.mysql.jdbc.Driver");
	
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
	
		String sql = "select pdescription from policy where pid='"+pid1+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			
			String pdescription1 = rs.getString("pdescription");
			request.setAttribute("pid", pid1);
			RequestDispatcher dispatcher = request.getRequestDispatcher("deletablePolicy.jsp");
			request.setAttribute("pdescription", pdescription1);
			dispatcher.forward(request,response);
		}
		
		}catch(Exception e){
			e.printStackTrace();
			}
		}	

}
