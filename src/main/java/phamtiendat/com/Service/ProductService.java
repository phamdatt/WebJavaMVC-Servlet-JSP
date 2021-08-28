package phamtiendat.com.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import phamtiendat.com.Model.Product;

public class ProductService {

	public List<Product> getAllProduct(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	public List<Product> getProductHotDeal(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products where hot_deal = true ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
	public List<Product> getProductReComent(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products where hot_new=true and trend =true ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	public List<Product> getProductAppeal(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products where catid = 1 and trend = true";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	public List<Product> getProducPopular(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products where  popular = true";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}

	public List<Product> getProductElectro(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products where catid = 4  and trend = true";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
	public List<Product> getProductCategory(Connection conn,int id) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products where catid = ? ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	public List<Product> searchByName(Connection conn,String txtSearch) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products where title like ? ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1,"%"+txtSearch+"%");
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				int id =rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				double price = rs.getDouble("price");
				double price_net = rs.getDouble("price_net");
				int available = rs.getInt("available");
				int sold = rs.getInt("sold");
				int discount = rs.getInt("discount");
				Timestamp deal_timer = rs.getTimestamp("deal_timer");
				String image = rs.getString("image");
				int catid = rs.getInt("catid");
				String area = rs.getString("area");
				Product product = new Product(id, title, description, price, price_net, available, sold, deal_timer,
						discount, image,catid,area);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	public void deleteProduct(Connection conn,int   id) {
		String sql ="delete from products where id = ?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			pstm.executeUpdate();
		}catch(Exception ex) {
			System.out.println("Lỗi" + ex.getMessage());
		}
	}
	public void insertProduct(Connection conn,String title,String image,String price,String pricenet,String category,String description) {
		String sql ="insert into products(title,description,price,image,catid) values(?,?,?,?,?,?)";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, title);
			pstm.setString(2, description);
			pstm.setString(3, price);
			pstm.setString(5, pricenet);
			pstm.setString(9, image);
			pstm.setString(11, category);
			pstm.executeUpdate();
		}catch(Exception ex) {
			System.out.println("Lỗi" + ex.getMessage());
		}
	}
	public  Product getProduct(Connection conn, int id)  {
		Product product= null;
		 try {
			 String sql = "SELECT * FROM products WHERE  id  = ?";
			 PreparedStatement pstm = conn.prepareStatement(sql);			 			 			 
			 pstm.setInt(1, id);
			 ResultSet rs = pstm.executeQuery();
			 while(rs.next()) {
				 String title = rs.getString("title");
		         String description = rs.getString("description");            
		         double price = rs.getDouble("price");
		         double price_net = rs.getDouble("price_net");	            
		         int available= rs.getInt("available");
		         int sold = rs.getInt("sold");
		         Timestamp  deal_timer = rs.getTimestamp("deal_timer");
		         String image = rs.getString("image");
		         int discount = rs.getInt("discount");
		     	int catid = rs.getInt("catid");
		     	String area = rs.getString("area");
		         product = new Product(id,title, description, price,price_net,available,sold,deal_timer,discount,image,catid,area); 
			 }
	        
	            	        
		 } catch (SQLException ex) {
			 ex.printStackTrace();      
		 }
		 return product;
	} 
	
}
