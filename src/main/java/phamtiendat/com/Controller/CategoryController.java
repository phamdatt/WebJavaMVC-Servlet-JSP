package phamtiendat.com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import phamtiendat.com.Data.Database;
import phamtiendat.com.Model.Category;
import phamtiendat.com.Model.Product;
import phamtiendat.com.Service.CategoryService;
import phamtiendat.com.Service.ProductService;

public class CategoryController extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
				int catid =Integer.parseInt(req.getParameter("id"));
				Connection conn =Database.getConnection();
	
				ProductService pdsv = new ProductService();
				CategoryService ctsv = new CategoryService();
				List<Product> list=pdsv.getProductCategory(conn, catid);
				req.setAttribute("listP", list);		
				List<Category> loaisp = ctsv.getAllCategory(conn);
				req.setAttribute("listC", loaisp);
				
				req.setAttribute("tag", catid);
				RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/shop/shop.jsp");
				dispatcher.forward(req,resp);
			}
}
