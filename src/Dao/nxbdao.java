package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.nxbbean;

public class nxbdao {
dungchung dc = new dungchung();
public ArrayList<nxbbean> getnxb() throws Exception{
	ArrayList<nxbbean> dsnxb = new ArrayList<nxbbean>();
	dc.ketnoi();
	String sql = "select * from NHAXUATBAN";
	PreparedStatement cmd =dc.cn.prepareStatement(sql);
	ResultSet rs = cmd.executeQuery();
	while (rs.next()) {
		String Manxb = rs.getString("MaNXB");
		String tennxb = rs.getString("TenNXB");
		String DiachiNXB = rs.getString("Diachi");
		String Dienthoainxb = rs.getString("DienThoai");
		nxbbean s = new nxbbean(Manxb, tennxb, DiachiNXB, Dienthoainxb);
		dsnxb.add(s);
	}
	rs.close();
	dc.cn.close();
	return dsnxb;
	
}
}
