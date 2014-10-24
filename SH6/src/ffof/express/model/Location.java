package ffof.express.model;

import java.util.Date;


/**
 * @author Abner
 *
 */
public class Location {
	private int id;
	private String ord_num;
	private String location;
	private Date date;
	private String operation;
	private String cur_phone;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrd_num() {
		return ord_num;
	}
	public void setOrd_num(String ord_num) {
		this.ord_num = ord_num;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getCur_phone() {
		return cur_phone;
	}
	public void setCur_phone(String cur_phone) {
		this.cur_phone = cur_phone;
	}
	
}
