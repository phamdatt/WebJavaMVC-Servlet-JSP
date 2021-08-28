package phamtiendat.com.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import phamtiendat.com.Model.Category;

public class CategoryService {
	public List<Category> getAllCategory(Connection conn) {
		List<Category> list = new ArrayList<Category>();
		try {
			String sql = "SELECT * FROM category";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				Category category = new Category(id, title, description);
				list.add(category);
			}
			
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}

}
