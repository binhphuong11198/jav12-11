package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	dungchung dc = new dungchung();

	public ArrayList<sachbean> getSach() throws Exception {

		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		dc.ketnoi();
		String sql = "select * from SACH";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String masach = rs.getString("Masach");
			String tensach = rs.getString("Tensach");
			String giaban = rs.getString("Giaban");
			String mota = rs.getString("Mota");
			String anhbia = rs.getString("Anhbia");
			String ngaycapnhap = rs.getString("Ngaycapnhat");
			String soluongton = rs.getString("Soluongton");
			String macd = rs.getString("MaCD");
			String manxb = rs.getString("MaNXB");
			sachbean s= new sachbean(masach, tensach, giaban, mota, anhbia, ngaycapnhap, soluongton, macd, manxb);
			ds.add(s);

		}
		rs.close();
		dc.cn.close();
		return ds;
	}
}
