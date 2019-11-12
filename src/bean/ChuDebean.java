package bean;

public class ChuDebean {
private String macd;
private String tenchude;
public ChuDebean(String macd, String tenchude) {
	super();
	this.macd = macd;
	this.tenchude = tenchude;
}
public String getMacd() {
	return macd;
}
public void setMacd(String macd) {
	this.macd = macd;
}
public String getTenchude() {
	return tenchude;
}
public void setTenchude(String tenchude) {
	this.tenchude = tenchude;
}

}
