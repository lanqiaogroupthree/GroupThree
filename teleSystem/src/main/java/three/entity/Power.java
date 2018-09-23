package three.entity;

public class Power {
	private int pid;
	private String pname;
	private String pskip;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPskip() {
		return pskip;
	}
	public void setPskip(String pskip) {
		this.pskip = pskip;
	}
	
	public Power() {
		super();
	}
	public Power(String pname, String pskip) {
		super();
		this.pname = pname;
		this.pskip = pskip;
	}
	public Power(int pid, String pname, String pskip) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pskip = pskip;
	}
	@Override
	public String toString() {
		return "Power [pid=" + pid + ", pname=" + pname + ", pskip=" + pskip + "]";
	}
	
}
