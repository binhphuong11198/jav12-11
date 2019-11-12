package Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dungchung {
	public Connection cn;

	public void ketnoi() throws Exception {
 
		// b1 xac dinh hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("Da xac dinh co so du lieu");
		// b2: ket noi vao csdl
		String url = "jdbc:sqlserver://DESKTOP-7VC9MRJ\\SQLEXPRESS:1433;databaseName=QLBanSach;user=sa; password=123";
		cn = DriverManager.getConnection(url);
		System.out.print("da ket noi thanh cong");
	}

}
