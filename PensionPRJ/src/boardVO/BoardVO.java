package boardVO;

import java.util.Date;

public class BoardVO {

	private int num;
	private String title;
	private String name;
	private String password;
	private String contents;
	private Date d;
	
	public BoardVO(int num, String title, String name, String password, String contents, Date d) {
		super();
		this.num = num;
		this.title = title;
		this.name = name;
		this.password = password;
		this.contents = contents;
		this.d = d;
	}
	
	public BoardVO() {}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getD() {
		return d;
	}

	public void setD(Date d) {
		this.d = d;
	}
	
}
