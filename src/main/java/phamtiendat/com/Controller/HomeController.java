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
import phamtiendat.com.Model.Slider;
import phamtiendat.com.Model.Topic;
import  phamtiendat.com.Service.CategoryService;
import phamtiendat.com.Service.ProductService;
import phamtiendat.com.Service.SliderService;
import phamtiendat.com.Service.TopicService;





public class HomeController extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
	throws ServletException,IOException{
		resp.setContentType("text/html;charset=UTF-8");
		Connection conn =Database.getConnection();
		CategoryService ctsv = new CategoryService();
		SliderService ssv = new SliderService();
		ProductService pdsv = new ProductService();
		TopicService tsv = new TopicService();
		List<Product> hotdeal = pdsv.getProductHotDeal(conn);
		req.setAttribute("hotdeal", hotdeal);
		List<Product> appeal = pdsv.getProductAppeal(conn);
		req.setAttribute("appeal", appeal);
		List<Product> electro = pdsv.getProductElectro(conn);
		req.setAttribute("electro", electro);
		List<Product> popular = pdsv.getProducPopular(conn);
		req.setAttribute("popular", popular);
		List<Product> recoment = pdsv.getProductReComent(conn);
		req.setAttribute("recoment", recoment);
		//slider
		List<Slider> list = ssv.getAllSlider(conn);
		req.setAttribute("slider", list);
		//topic
		List<Topic> topic = tsv.getAllTopic(conn);
		req.setAttribute("topic", topic);
		
		//category
		List<Category> loaisp = ctsv.getAllCategory(conn);
		req.setAttribute("listC", loaisp);
		RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/home/home.jsp");
		dispatcher.forward(req,resp);
	}
	}


