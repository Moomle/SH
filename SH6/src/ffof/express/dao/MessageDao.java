package ffof.express.dao;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import ffof.express.constant.Constant;
import ffof.express.model.Message;
import ffof.express.model.Pager;
import ffof.express.model.User;
import ffof.express.utils.HibernateUtils;

@Repository("messageDao")
public class MessageDao implements IMessageDao {

	IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}
	
	@Resource
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void add(Message message) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			message.setSentDate(new Date());
			session.save(message);
			
			tx.commit();
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@Override
	public void update(long id) {
		
	}

	@Override
	public void delete(long id) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			Message m = getById(id);
			session.delete(m);
			
			tx.commit();
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> getUnreadMessages(String recvPhone) {
		
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			List<Message> list = session.createQuery("From Message where recvPhone=? and isread=?")
					.setParameter(0, recvPhone)
					.setParameter(1, 0)
					.list();
			tx.commit();
			return list;
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}



	@Override
	public List<Message> getHistoryMessage(String recvPhone) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();

			@SuppressWarnings("unchecked")
			List<Message> list = session.createQuery("From Message where recvPhone=? and isread=?")
					.setParameter(0, recvPhone)
					.setParameter(1, 1)
					.list();
			
			tx.commit();
			return list;
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@Override
	public void read(long id) {
		Message msg = getById(id);
		msg.setIsRead(1);
		msg.setReadDate(new Date());
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();

			session.update(msg);
			
			tx.commit();
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
		
	}

	@Override
	public Message getById(long id) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();

			Message m = (Message)session.get(Message.class, id);
			
			tx.commit();
			return m;
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@Override
	public void sendToAll(String content, String postPhone) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			User user = userDao.getByPhone(postPhone);
			List<User> alluser = userDao.findAllExceptSelf(user);
			for(User u:alluser){
				Message m = new Message();
				m.setContent(content);
				m.setPostPhone(postPhone);
				m.setRecvPhone(u.getTelephone());
				m.setSentDate(new Date());
				session.save(m);
			}
			
			tx.commit();
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public Pager<Message> getHistoryMessagePager(String recvPhone, int curPageNum) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			Query query = session.createQuery("From Message where recvPhone=? and isread=?")
					.setParameter(0, recvPhone)
					.setParameter(1, 1);
			query.setFirstResult((curPageNum-1)*Constant.SIZE_OF_PAGE).setMaxResults(Constant.SIZE_OF_PAGE);
			//query.setFirstResult(0).setMaxResults(8);
			List<Message> list = query.list();
			Pager<Message> pager = new Pager<Message>();
			pager.setData(list);
			long totalCount = (long)session.createQuery("From Message where recvPhone=? and isread=?")
					.setParameter(0, recvPhone)
					.setParameter(1, 1).list().size();
			pager.setCurPageNum(curPageNum);
			pager.setTotalCount(totalCount);
			//System.out.println(pager.toString());
			tx.commit();
			return pager;
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public Pager<Message> getUnReadMessagesByPage(String recvPhone,
			int curPageNum) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			Query query = session.createQuery("From Message where recvPhone=? and isread=?")
					.setParameter(0, recvPhone)
					.setParameter(1, 0);
			query.setFirstResult((curPageNum-1)*Constant.SIZE_OF_PAGE).setMaxResults(Constant.SIZE_OF_PAGE);
			//query.setFirstResult(0).setMaxResults(8);
			List<Message> list = query.list();
			Pager<Message> pager = new Pager<Message>();
			pager.setData(list);
			long totalCount = (long)session.createQuery("From Message where recvPhone=? and isread=?")
					.setParameter(0, recvPhone)
					.setParameter(1, 0).list().size();
			pager.setCurPageNum(curPageNum);
			pager.setTotalCount(totalCount);
			//System.out.println(pager.toString());
			tx.commit();
			return pager;
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}




}
