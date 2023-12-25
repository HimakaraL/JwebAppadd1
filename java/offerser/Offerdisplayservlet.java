package offerser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Offerdisplayservlet")
public class Offerdisplayservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	List<Offers> offerdetails = OffersDBUtil.getOfferDetails();
	request.setAttribute("offerdetails", offerdetails);
		
	RequestDispatcher dis = request.getRequestDispatcher("Offers1.jsp");
	dis.forward(request, response);
	
	}

}