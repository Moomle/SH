package ffof.express.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ffof.express.dao.IMessageDao;
import ffof.express.model.Message;
import ffof.express.model.Pager;

@Service("messageService")
public class MessageService implements IMessageService{

	private IMessageDao messageDao;
	
	

	public IMessageDao getMessageDao() {
		return messageDao;
	}

	@Resource
	public void setMessageDao(IMessageDao messageDao) {
		this.messageDao = messageDao;
	}

	@Override
	public void add(Message msg) {
		messageDao.add(msg);
	}

	@Override
	public void update(int id) {
		messageDao.update(id);
	}

	@Override
	public void delete(int id) {
		
	}

	@Override
	public List<Message> getUnRead(String recvPhone) {
		// TODO Auto-generated method stub
		List<Message> list = messageDao.getUnreadMessages(recvPhone);
		return list;
	}

	@Override
	public List<Message> getHistoryMessage(String recvPhone) {
		return messageDao.getHistoryMessage(recvPhone);
	}

	@Override
	public void read(int id) {
		// TODO Auto-generated method stub
		messageDao.read(id);
	}

	@Override
	public void sendToAll(String postPhone, String content) {
		messageDao.sendToAll(content, postPhone);
		
	}

	@Override
	public Pager<Message> getHistoryMessagePager(String recvPhone, int curPageNum) {
		Pager<Message> pager = messageDao.getHistoryMessagePager(recvPhone, curPageNum);
		return pager;
	}

	@Override
	public Pager<Message> getUnRead(String recvPhone, int curPageNum) {
		messageDao.getUnReadMessagesByPage(recvPhone, curPageNum);
		return null;
	}

}
