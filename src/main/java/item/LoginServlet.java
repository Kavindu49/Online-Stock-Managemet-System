package item;

import java.io.IOException;
import java.io.PrintWriter;
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
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			String userName = request.getParameter("supplierid");
			String password = request.getParameter("suppliername");
			boolean isTrue;
			
			isTrue = itemdbutil.validate(userName,password );
			
			if (isTrue == true) {
				List<Item> itDetails = itemdbutil.getItem(password);
				request.setAttribute("itDetails", itDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("readitem.jsp");
				dis.forward(request, response);
			} else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='login.jsp'");
				out.println("</script>");
			}
			
		}

	}
