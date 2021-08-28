package phamtiendat.com.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import phamtiendat.com.Model.Account;

public class AccountService {
	public  Account Login(Connection conn, String userName, String Password)
	{
	String sql = "select * from account " + "where user_account = ? and pass = ?";
	try {

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, Password);
		ResultSet rs = pstm.executeQuery();
		while(rs.next()) {
			return new Account(rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getInt(5),
					rs.getInt(6),
					rs.getInt(7));
		}
	}catch(Exception ex) {
	}
		return null;
	}
	 public Account checkAccountExist(Connection conn,String user) {
	        String sql = "select * from account\n"
	                + "where [user_account] = ?\n";
	        try {
	         
	        	PreparedStatement pstm = conn.prepareStatement(sql);
	            pstm.setString(1, user);
	        	ResultSet rs = pstm.executeQuery();
	            rs = pstm.executeQuery();
	            while (rs.next()) {
	            	return new Account(rs.getInt(1),
	    					rs.getString(2),
	    					rs.getString(3),
	    					rs.getString(4),
	    					rs.getInt(5),
	    					rs.getInt(6),
	    					rs.getInt(7));
	            }
	        } catch (Exception e) {
	        }
	        return null;
	    }
	  public void Register(Connection conn,String user, String name,String pass) {
	        String sql = "insert into account(user_account,user_name,pass,gender,is_user,is_admin) values(?,?,?,1,0,0)";
	        try {
	        	PreparedStatement pstm = conn.prepareStatement(sql);
	            pstm.setString(1, user);
	            pstm.setString(2, pass);
	            pstm.setString(3, name);
	            pstm.executeUpdate();
	        } catch (Exception e) {
	        }
	    }

}
