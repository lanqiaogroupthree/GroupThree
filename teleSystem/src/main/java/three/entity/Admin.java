package three.entity;

import java.util.List;

public class Admin {
	private int aid = -1;
	private String aaccount;
	private String apwd;
	private String aname;
	private String atel;
	private String aemail;
	private String adate;
	private String aimg;
	private List<String> apower;
	
	public Admin() {
		super();
	}
	public Admin(String aaccount, String apwd) {
		super();
		this.aaccount = aaccount;
		this.apwd = apwd;
	}
	public Admin(int aid, String apwd) {
		super();
		this.aid = aid;
		this.apwd = apwd;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAaccount() {
		return aaccount;
	}
	public void setAaccount(String aaccount) {
		this.aaccount = aaccount;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAtel() {
		return atel;
	}
	public void setAtel(String atel) {
		this.atel = atel;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}
	public String getAimg() {
		return aimg;
	}
	public void setAimg(String aimg) {
		this.aimg = aimg;
	}
	public List<String> getApower() {
		return apower;
	}
	public void setApower(List<String> apower) {
		this.apower = apower;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aaccount=" + aaccount + ", apwd=" + apwd + ", aname=" + aname + ", atel=" + atel
				+ ", aemail=" + aemail + ", adate=" + adate + ", aimg=" + aimg + ", apower=" + apower + "]";
	}
	
}
