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

public class ManagerController extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
				req.setCharacterEncoding("UTF-8");
				Connection conn =Database.getConnection();
				ProductService pdsv = new ProductService();			
				List<Product> list = pdsv.getAllProduct(conn);	
				req.setAttribute("listP", list);
				CategoryService ctsv = new CategoryService();
				List<Category> loaisp = ctsv.getAllCategory(conn);
				req.setAttribute("listC", loaisp);
				RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/admin/manager.jsp");
				dispatcher.forward(req,resp);
			}
}
