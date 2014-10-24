package ffof.express.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import ffof.express.model.Order;
import ffof.express.utils.HibernateUtils;

@Repository("orderDao")
public class OrderDao implements IOrderDao {

	@Override
	public void add(Order order) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.save(order);
			tx.commit();
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@Override
	public void delete(String ord_num) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Order order = getByOrderNum(ord_num);
			session.delete(order);
			tx.commit();
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@Override
	public void update(Order order) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.update(order);
			tx.commit();
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@Override
	public Order getByOrderNum(String ord_num) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			//Order order = (Order) session.get(Order.class, ord_num);
			Order order = (Order)session.createQuery("from Order where ord_num=?")
					.setParameter(0, ord_num)
					.uniqueResult();
			tx.commit();
			return order;
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> findAll() {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			List<Order> lists = session.createQuery("FROM Order").list();
			tx.commit();
			return lists;
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}
	}

}
