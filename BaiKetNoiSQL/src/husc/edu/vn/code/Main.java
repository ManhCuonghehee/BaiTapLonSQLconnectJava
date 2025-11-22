package husc.edu.vn.code;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import husc.edu.vn.model.Database;
import husc.edu.vn.model.HocVien;

public class Main {
	
	public static ArrayList<HocVien> LayHocVien(){
		ArrayList<HocVien> dsHocVien = new ArrayList<HocVien>();
		String sql = "select * from HocVien ";
		
		Connection con = Database.getConnection();
		if(con != null) {
			try {
				PreparedStatement pre = con.prepareStatement(sql);
				ResultSet rs = pre.executeQuery();
				while(rs.next()) {
				String maHocVien = rs.getString(1);
				String tenHocVien = rs.getString(2);
				String email = rs.getString(3);
				System.out.println(maHocVien);
				System.out.println(tenHocVien);
				System.out.println(email);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dsHocVien;
	}
	
	public static void main(String[] args) {
		@SuppressWarnings("unused")
		ArrayList<HocVien> dsHV = LayHocVien();
	}

}
