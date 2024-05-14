package BidderPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServelet")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get details enter by user
		String username=request.getParameter("uname");
		String password=request.getParameter("pwd");
		
		//create a Object to keep customer details
		try {
			//call validate method in dbutil class
			//and pass values return by validate to an arry
		List<Customer> cusDetails = CutomerDButil .validate(username,password);
		
		//set data get by list 
		request.setAttribute("cusDetails", cusDetails);
		
		}catch(Exception e){
			e.printStackTrace();
			
		}
		// in order to navigate to another class
		
		RequestDispatcher dis = request.getRequestDispatcher("user.jsp");
		dis.forward(request, response);
		
	}

}
