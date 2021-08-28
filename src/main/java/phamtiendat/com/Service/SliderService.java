package phamtiendat.com.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import phamtiendat.com.Model.Slider;

public class SliderService {

	public List<Slider> getAllSlider(Connection conn) {
		List<Slider> list = new ArrayList<Slider>();
		try {
			String sql = "SELECT * FROM slider  where  status = 1";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String image = rs.getString("image");
				int status = rs.getInt("status");
				Slider slider = new Slider(id,image,status);
				list.add(slider);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
}
