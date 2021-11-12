package pensionVO;

import java.util.Date;



public class PensionVo {

	private String id;
	private int pw;
	private String name;	
	private String tel;		
	
	
	
	public PensionVo(String id, int pw, String name, String tel, Date d) {
		//super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		
	}
	
	public PensionVo() { }

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPw() {
		return pw;
	}

	public void setPw(int pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
	
	
	
}
