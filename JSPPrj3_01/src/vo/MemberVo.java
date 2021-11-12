package vo;

public class MemberVo {
	// field
	private  int     memid;
	private  String  memname;
	private  String  userid;
	private  String  passwd;
	private  String  tel;
	private  String  email;
	private  int     mpoint;
	private  String  joindate;
	
	// constructir
	public MemberVo() {}
	
	public MemberVo(int memid, String memname, String userid, 
			String passwd, String tel, String email, int mpoint,
			String joindate) {
		this.memid = memid;
		this.memname = memname;
		this.userid = userid;
		this.passwd = passwd;
		this.tel = tel;
		this.email = email;
		this.mpoint = mpoint;
		this.joindate = joindate;
	}

	// Getter / Setter
	public int getMemid() {
		return memid;
	}

	public void setMemid(int memid) {
		this.memid = memid;
	}

	public String getMemname() {
		return memname;
	}

	public void setMemname(String memname) {
		this.memname = memname;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getMpoint() {
		return mpoint;
	}

	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	
	// method
	public String toHtmlString(String name) {
		String tag = "";
		tag  += "<tr>";	
		tag  += "<td>" + this.memid     + "</td>";	
		tag  += "<td>" + this.memname   + "</td>";	
		tag  += "<td>" + this.userid    + "</td>";
		if( this.memname.equals(name) ) {
			tag  += "<td>" + this.passwd    + "</td>";			
		} else {
			tag  += "<td>" + "*******"      + "</td>";
		}
		tag  += "<td>" + this.tel       + "</td>";	
		tag  += "<td>" + this.email     + "</td>";	
		tag  += "<td>" + this.mpoint    + "</td>";	
		tag  += "<td>" + this.joindate  + "</td>";	
		tag  += "</tr>";	
		return tag;
	}

	// toString
	@Override
	public String toString() {
		return "MemberVo [memid=" + memid + ", memname=" + memname + ", userid=" + userid + ", passwd=" + passwd
				+ ", tel=" + tel + ", email=" + email + ", mpoint=" + mpoint + ", joindate=" + joindate + "]";
	}
	
	
}












