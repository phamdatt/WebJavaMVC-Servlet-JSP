package phamtiendat.com.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;


import phamtiendat.com.Model.Topic;

public class TopicService {

	public List<Topic> getAllTopic(Connection conn) {
		List<Topic> list = new ArrayList<Topic>();
		try {
			String sql = "SELECT * FROM topic";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
		
				String image = rs.getString("image");
			
			Topic topic = new Topic(id,title,description,image);
				list.add(topic);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
}
