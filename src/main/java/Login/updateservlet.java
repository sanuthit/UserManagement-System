package Login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L; protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("pname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String uname = request.getParameter("usname");
		String pass = request.getParameter("psw");
		
		boolean result;
		
		result = LoginDButil.updateUser(id, name, email, phone, uname, pass);
		
		if(result==true) {
			List<User> userDet = LoginDButil.getUserDetails(id);
			request.setAttribute("userDet", userDet);
			
			RequestDispatcher dis = request.getRequestDispatcher("userProf.jsp");
			dis.forward(request, response);
		}
		else {
			List<User> userDet = LoginDButil.getUserDetails(id);
			request.setAttribute("userDet", userDet);
			
			RequestDispatcher dis = request.getRequestDispatcher("userProf.jsp");
			dis.forward(request, response);
		}
	}

}
