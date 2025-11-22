package husc.edu.vn.model;

public class HocVien {
	private String MaHocVien, TenHocVien, Email;
	

	public HocVien() {
		super();
	}

	public String getMaHocVien() {
		return MaHocVien;
	}

	public void setMaHocVien(String maHocVien) {
		MaHocVien = maHocVien;
	}

	public String getTenHocVien() {
		return TenHocVien;
	}

	public void setTenHocVien(String tenHocVien) {
		TenHocVien = tenHocVien;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public HocVien(String maHocVien, String tenHocVien, String email) {
		super();
		MaHocVien = maHocVien;
		TenHocVien = tenHocVien;
		Email = email;
	}
	
	
}
