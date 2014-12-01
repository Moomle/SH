package ffof.express.dao;

import java.util.List;

import ffof.express.model.Message;
import ffof.express.model.Pager;

public interface IMessageDao {
	
	public void add(Message message);
	
	public void sendToAll(String content, String postPhone);
	
	public void update(long id);

	public void delete(long id);
	
	public void read(long id);
	
	public Message getById(long id);
	
	public List<Message> getUnreadMessages(String recvPhone);
	
	public Pager<Message> getHistoryMessagePager(String recvPhone, int curPageNum);
	
	public List<Message> getHistoryMessage(String recvPhone);
	
	public Pager<Message> getUnReadMessagesByPage(String recvPhone, int curPageNum);
	
}
