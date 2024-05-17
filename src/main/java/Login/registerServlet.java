package Login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("pname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String uname = request.getParameter("usname");
		String pass = request.getParameter("psw");
		
		boolean result;
		result=LoginDButil.insertUser(name, email, phone, uname, pass);
		
		if(result==true) {
			  RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			  dis.forward(request,response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucces.jsp");
			dis2.forward(request, response);
		}
		
	}

}
