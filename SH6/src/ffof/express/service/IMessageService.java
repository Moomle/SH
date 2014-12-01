package ffof.express.service;

import java.util.List;

import ffof.express.model.Message;
import ffof.express.model.Pager;

public interface IMessageService {
	
	public void add(Message msg);
	public void sendToAll(String postPhone, String content);
	public void update(long id);
	public void delete(long id);
	public void read(long id);
	public List<Message> getHistoryMessage(String recvPhone);
	public Pager<Message> getHistoryMessagePager(String recvPhone, int curPageNum);
	public List<Message> getUnRead(String recvPhone);
	public Pager<Message> getUnRead(String recvPhone, int curPageNum);

}
