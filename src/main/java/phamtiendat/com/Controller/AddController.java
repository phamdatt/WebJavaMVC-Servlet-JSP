package phamtiendat.com.Controller;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import phamtiendat.com.Data.Database;
import phamtiendat.com.Model.Account;
import phamtiendat.com.Service.ProductService;



public class AddController extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
		resp.setContentType("text/html;charset=UTF-8");
		Connection conn = Database.getConnection();
			String pName =req.getParameter("title");
			String pImage = req.getParameter("image");
			String pPrice =req.getParameter("price");
			String pPriceNet = req.getParameter("pricenet");
			String pDescription =req.getParameter("description");
			String pCategory = req.getParameter("category");
			HttpSession session =req.getSession();
			Account a =(Account) session.getAttribute("acc");
			ProductService asv = new ProductService();
			asv.insertProduct(conn, pName, pImage, pPrice, pPriceNet, pCategory, pDescription);
			resp.sendRedirect(req.getContextPath() + "/manager");
			
		
			}
}
