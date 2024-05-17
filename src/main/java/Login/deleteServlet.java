package Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		boolean result;
		
		result = LoginDButil.deleteUser(id);
		 
		if(result==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Register.jsp");
			dis.forward(request, response);
			
		}else {
			
			out.println("<script type='text/javascript'>");
			 out.println("alert('Please try again!');");
			 out.println("location='userProf.jsp'");
			 out.println("</script>");
			
		}
	}

}
