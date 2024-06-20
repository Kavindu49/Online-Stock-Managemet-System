package item;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateServlet")
public class updateitemservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String itemid = request.getParameter("itemid");
		String supplierid = request.getParameter("supplierid");
		String suppliername = request.getParameter("suppliername");
		String item_name = request.getParameter("item_name");
		String item_type = request.getParameter("item_type");
		String item_quantity = request.getParameter("item_quantity");
		String item_price = request.getParameter("item_price");
		String discount = request.getParameter("discount");
		String discription = request.getParameter("discription");
		
		boolean isTrue;
		
		isTrue = itemdbutil.updateitem(itemid,supplierid,suppliername, item_name,item_type, item_quantity, item_price, discount, discription);
		
		if(isTrue == true) {
			
			List<Item> itDetails = itemdbutil.getItemDetails(itemid);
			request.setAttribute("itDetails", itDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("readitem.jsp");
			dis.forward(request, response);
		}
		else {
			List<Item> itDetails = itemdbutil.getItemDetails(itemid);
			request.setAttribute("itDetails", itDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UNSUCCESS.jsp");
			dis.forward(request, response);
		}
	}

}


