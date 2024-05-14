package BidderPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletecustomerServlet")
public class DeletecustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//in order to save data which user send
		
		String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		isTrue = CutomerDButil.deletecustomer(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("customerinsert.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			List<Customer> cusDetails = CutomerDButil.getCustomerDetalis(id);
			request.setAttribute("cusDetails",cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("user.jsp");
			dispatcher.forward(request, response);
			
		}
		
	}

}
