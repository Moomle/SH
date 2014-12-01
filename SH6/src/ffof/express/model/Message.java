package ffof.express.model;

import java.util.Date;

/**
 * 
 * @author Abner
 *
 */
public class Message {

	private Long id;
	private String postPhone;
	private String recvPhone;
	private int isRead;
	private String content;
	private Date sentDate;
	private Date readDate;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPostPhone() {
		return postPhone;
	}
	public void setPostPhone(String postPhone) {
		this.postPhone = postPhone;
	}
	public String getRecvPhone() {
		return recvPhone;
	}
	public void setRecvPhone(String recvPhone) {
		this.recvPhone = recvPhone;
	}
	
	public int getIsRead() {
		return isRead;
	}
	public void setIsRead(int isRead) {
		this.isRead = isRead;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getSentDate() {
		return sentDate;
	}
	public void setSentDate(Date sentDate) {
		this.sentDate = sentDate;
	}
	public Date getReadDate() {
		return readDate;
	}
	public void setReadDate(Date readDate) {
		this.readDate = readDate;
	}

	
	
}
