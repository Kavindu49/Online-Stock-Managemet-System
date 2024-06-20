package item;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteServlet")
public class deletitemservlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String itemid = request.getParameter("itemid");
	    boolean isTrue;
	    
isTrue = itemdbutil.deleteItem(itemid);
		
        // Redirecting based on the deletion result

		if (isTrue == true) {
			
            // If deletion is successful, forward to registration page

			RequestDispatcher dispatcher = request.getRequestDispatcher("iteminsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
            // If deletion fails, retrieve supplier details and forward to the account page

			
			List<Item> itDetails = itemdbutil.getItemDetails(itemid);
			request.setAttribute("itDetails", itDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("readitem.jsp");
			dispatcher.forward(request, response);
		}
	}


}
