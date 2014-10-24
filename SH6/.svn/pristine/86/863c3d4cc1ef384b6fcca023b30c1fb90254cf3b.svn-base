package ffof.express.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import ffof.express.model.Location;
import ffof.express.utils.HibernateUtils;

@Repository("locationDao")
public class LocationDao implements ILocationDao {

	@Override
	public void add(Location location) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			session.save(location);
			
			tx.commit();
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@Override
	public void delete(int id) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			Location location = getById(id);
			session.delete(location);
			
			tx.commit();
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}

	}

	@Override
	public Location getById(int id) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			
			Location location = (Location)session.get(Location.class, id);
			
			tx.commit();
			return location;
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	@Override
	public void update(Location location) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.update(location);
			tx.commit();
		} catch(RuntimeException e){
			tx.rollback();
			throw e;
		} finally{
			session.close();
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Location> findAll(String ord_num) {
		Session session = HibernateUtils.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();

			List<Location> locations = session.createQuery("select loc from Location loc where ord_num =?")
					.setParameter(0, ord_num).list();
			System.out.println(locations.size());
			
			tx.commit();
			return locations;
		} catch (RuntimeException e){
			tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

}
