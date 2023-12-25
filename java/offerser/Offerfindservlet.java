package offerser;

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


@WebServlet("/Offerfindservlet")
public class Offerfindservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oid = request.getParameter("oid");
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rentforu";
		String user = "root";
		String pass = "1234";
		
try {
	
		Class.forName("com.mysql.jdbc.Driver");
	
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
	
		String sql = "select description from offers where oid='"+oid+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			
			String description = rs.getString("description");
			request.setAttribute("oid",oid);
			RequestDispatcher dispatcher = request.getRequestDispatcher("updatableOffer.jsp");
			request.setAttribute("description",description);
			dispatcher.forward(request,response);
		}
		
		}catch(Exception e){
			e.printStackTrace();
			}
		}

	
	
	
	
	
	
	

}
