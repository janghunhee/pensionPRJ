package roomVO;

import java.sql.Date;

public class RoomVO {

	private String room_number; 
	private String room_name;
	private String name;
	private String tel;
	private Date d;
	
	public RoomVO(String room_number, String room_name, String name, String tel, java.util.Date d) {
		super();
		this.room_number = room_number;
		this.room_name = room_name;
		this.name = name;
		this.tel = tel;
		this.d = (Date) d;
	}
	
	public RoomVO() {}



	



	public String getRoom_number() {
		return room_number;
	}

	public void setRoom_number(String room_number) {
		this.room_number = room_number;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
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

	public Date getD() {
		return d;
	}

	public void setD(Date d) {
		this.d = d;
	}


	
	
	
	
	
	
}
