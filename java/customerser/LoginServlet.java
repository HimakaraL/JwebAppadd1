package customerser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uname");
		String password = request.getParameter("pword");   //from login page to controller
		
		try {
			
			
		List<Customer> cusDetails = CustomerDBUtil.validate(username, password);   //validation and create data list to send to another page
		request.setAttribute("Customerdetails", cusDetails);
		
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		//navigate to other page
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
	}

}
