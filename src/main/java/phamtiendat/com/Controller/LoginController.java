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



public class LoginController extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
			
				RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/login/Login.jsp");
				dispatcher.forward(req,resp);
			}
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
				Connection conn =Database.getConnection();
				String userName = req.getParameter("username");
				String Password =req.getParameter("password");
				AccountService asv = new AccountService();
				Account account  = asv.Login(conn, userName, Password);
				if(account == null) {
					req.setAttribute("message", "Nhập Sai Tài Khoản Hoặc Mật Khẩu");
					RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/login/Login.jsp");
					dispatcher.forward(req,resp);
				}else {
					HttpSession session = req.getSession();
					session.setAttribute("acc", account);
					session.setMaxInactiveInterval(60);
					resp.sendRedirect(req.getContextPath() + "/home");
				}
				
			}
}
