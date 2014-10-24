package ffof.express.model;

import java.util.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;


/**
 * 
 * @author Abner
 * 
 * id AI
 * telephone is PK
 * isAdmin == 0 ? is Admin : is not Admin 
 */

public class User {
	
	private int id;
	private String telephone;
	private String name;
	private String password;
	private String location;
	private Date date;
	private int isAdmin;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@NotEmpty(message="手机号不能为空")
	@Length(min=11,max=11)
	public String getTelephone() {
		return telephone;
	}
	public void setPhoneNum(String telephone) {
		this.telephone = telephone;
	}
	@NotEmpty(message="姓名不能为空")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@NotEmpty(message="密码不能为空")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int type) {
		this.isAdmin = type;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
