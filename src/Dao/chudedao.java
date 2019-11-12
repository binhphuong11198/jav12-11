package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.ChuDebean;

public class chudedao {
dungchung dc = new dungchung();
public ArrayList<ChuDebean> getchude() throws Exception {
	
	ArrayList<ChuDebean> dscd = new ArrayList<ChuDebean>();
	dc.ketnoi();
	String sql = "select * from CHUDE";
	PreparedStatement cmd =dc.cn.prepareStatement(sql);
	ResultSet rs=cmd.executeQuery();
	while (rs.next()) {
		String MaCD = rs.getString("MaCD");
		String TenChuDe = rs.getString("TenChuDe");
		ChuDebean s= new ChuDebean(MaCD, TenChuDe);
		dscd.add(s);
	}
	rs.close();
	dc.cn.close();
	return dscd;
}
}
