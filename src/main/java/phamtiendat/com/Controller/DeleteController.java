package phamtiendat.com.Controller;

import java.io.IOException;
import java.sql.Connection;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import phamtiendat.com.Data.Database;
import phamtiendat.com.Service.ProductService;

public class DeleteController extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
				Connection conn =Database.getConnection();
				
				ProductService pdsv = new ProductService();
				int  id =Integer.parseInt(req.getParameter("id"));
				pdsv.deleteProduct(conn, id);
				resp.sendRedirect(req.getContextPath() + "/manager");
			}

}
