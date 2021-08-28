package phamtiendat.com.Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import phamtiendat.com.Data.Database;
import phamtiendat.com.Model.Account;
import phamtiendat.com.Service.AccountService;

public class RegisterController extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
				req.setCharacterEncoding("UTF-8");
				RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/login/Register.jsp");
				dispatcher.forward(req,resp);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
				req.setCharacterEncoding("UTF-8");
				Connection conn =Database.getConnection();
				String user = req.getParameter("user");
				String pass=req.getParameter("pass");
				String name=req.getParameter("user_name");
				String repass = req.getParameter("repass");
				 if(!pass.equals(repass)){
			            resp.sendRedirect(req.getContextPath() + "/login");
			        }else{
			    		AccountService asv = new AccountService();
			            Account account = asv.checkAccountExist(conn,user);
			            if(account == null){
			                //dc signup
			            	asv.Register(conn, user, pass,name);       
			                resp.sendRedirect(req.getContextPath() + "/home");
			            }else{
			            	//day ve trang login.jsp
			                resp.sendRedirect(req.getContextPath() + "/register");
			            }
			        }
				
	}
	
	

}
