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

public class ProductDetailController extends HttpServlet {

	public void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
				req.setCharacterEncoding("UTF-8");
				Connection conn =Database.getConnection();
				int id = Integer.parseInt(req.getParameter("id"));
				
				
				ProductService pdsv = new ProductService();
		
				Product product = pdsv.getProduct(conn, id);
				req.setAttribute("listP", product);
				int catid =product.getCatid();
				List<Product> sptt = pdsv.getProductCategory(conn, catid);
				req.setAttribute("sptt", sptt);
				
				RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/page/product-detail.jsp");
				dispatcher.forward(req,resp);
	}
}
