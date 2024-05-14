package BidderPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateCustomerServlet
 */
@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id =request.getParameter("cusid");
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String username =request.getParameter("uname");
		String password =request.getParameter("pwd");
		
		boolean isTrue ;
		
		 isTrue  = CutomerDButil.updateCustomer(id, name, email, phone, username, password);
		 
		 if(isTrue == true) {
			 
			 List<Customer> cusDetails = CutomerDButil.getCustomerDetalis(id);
			 request.setAttribute("cusDetails",cusDetails);
			 
			 RequestDispatcher dis = request.getRequestDispatcher("user.jsp");
			 dis.forward(request, response);
		 }
		 else {
			 List<Customer> cusDetails = CutomerDButil.getCustomerDetalis(id);
			 request.setAttribute("cusDetails" ,cusDetails);
			 
			 RequestDispatcher dis = request.getRequestDispatcher("user.jsp");
			 dis.forward(request, response);
		 }
	}

}
