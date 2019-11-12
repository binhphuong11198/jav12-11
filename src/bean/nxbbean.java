package bean;

public class nxbbean {
	private String manxb;
	private String tennxb;
	private String diachinxb;
	private String dienthoainxb;
	public nxbbean(String manxb, String tennxb, String diachinxb, String dienthoainxb) {
		super();
		this.manxb = manxb;
		this.tennxb = tennxb;
		this.diachinxb = diachinxb;
		this.dienthoainxb = dienthoainxb;
	}
	public String getManxb() {
		return manxb;
	}
	public void setManxb(String manxb) {
		this.manxb = manxb;
	}
	public String getTennxb() {
		return tennxb;
	}
	public void setTennxb(String tennxb) {
		this.tennxb = tennxb;
	}
	public String getDiachinxb() {
		return diachinxb;
	}
	public void setDiachinxb(String diachinxb) {
		this.diachinxb = diachinxb;
	}
	public String getDienthoainxb() {
		return dienthoainxb;
	}
	public void setDienthoainxb(String dienthoainxb) {
		this.dienthoainxb = dienthoainxb;
	}
}
