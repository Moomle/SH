package ffof.express.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {
	private static SessionFactory sessionFactory;
	
	static {
		Configuration cfg = new Configuration();
		//cfg.configure("hibernate.cfg.xml");
		cfg.configure();
		sessionFactory = cfg.buildSessionFactory();
	}
	
	public static Session getSession(){
		return sessionFactory.openSession();
	}

}
