package ffof.express.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import ffof.express.constant.Constant;
import ffof.express.model.Pager;
import ffof.express.model.User;
import ffof.express.utils.HibernateUtils;

@Repository("userDao")
public class UserDao implements IUserDao {
	
	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			user.setDate(new Date());
			session.save(user);
			tx.commit();
		} catch(RuntimeException e) {
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@Override
	public void delete(String telephone) {
		// TODO Auto-generated method stub
		//User u = getByPhone(telephone);
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
		/*	Query query = session.createQuery("delete from User u where u.telephone=?")
					.setParameter(0, telephone);
			query.executeUpdate();
			*/
			User u = getByPhone(telephone);
			session.delete(u);
			tx.commit();
			//System.out.println("added!");
		} catch(Exception e) {
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.update(user);
			tx.commit();
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@Override
	public User getByPhone(String telephone) {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		
		try{
			tx = session.beginTransaction();
			User user = (User) session.createQuery("from User where telephone=?")
				.setParameter(0,telephone)
				.uniqueResult();
			tx.commit();
			return user;
			//System.out.println("added!");
		} catch(RuntimeException e) {
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAll() {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			List<User> list = session.createQuery("FROM User").list();
			
			tx.commit();
			return list;
			//System.out.println("added!");
		} catch(RuntimeException e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@Override
	public User getByUsername(String username) {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		User u = null;
		try{
			tx = session.beginTransaction();
			
			u = (User) session.createQuery("FROM User where username=?")
					.setParameter(0, username)
					.uniqueResult();
			tx.commit();
			return u;
		} catch(RuntimeException e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public Pager<User> findAllByPage(int curPageNum) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			/*Query query = session.createQuery("from User");
			query.setFirstResult(offset).setMaxResults(size);
			List<User> data = query.list();
			Pager<User> us = new Pager<User>();
			us.setData(data);
			//us.setOffset(offset);
			us.setPageSize(size);
			Long total = (Long) session.createQuery("select count(*) from User")
					.uniqueResult();
			//us.setTotal(total);*/
			Pager<User> pager = new Pager<User>();
			Query query = session.createQuery("from User");
			List<User> list = query.setFirstResult((curPageNum-1)*Constant.SIZE_OF_PAGE)
				.setMaxResults(Constant.SIZE_OF_PAGE).list();
			Long totalCount = (long) session.createQuery("from User")
					.list().size();
			pager.setTotalCount(totalCount);
			pager.setData(list);
			pager.setPageSize(Constant.SIZE_OF_PAGE);
			//System.out.println(pager.toString());
			tx.commit();
			return pager;
			
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAllExceptSelf(User user) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			List<User> list = session.createQuery("FROM User").list();
			User u2del = null;
			for (User u:list){
				if (u.getId() == user.getId()){
					u2del = u;
					break;
				}
			}
			//System.out.println("UserDao: findAllExceptSelf:"+list.size());
			list.remove(u2del);
			tx.commit();
			return list;
			//System.out.println("added!");
		} catch(RuntimeException e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

}
