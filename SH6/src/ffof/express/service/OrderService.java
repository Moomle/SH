package ffof.express.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ffof.express.dao.ILocationDao;
import ffof.express.dao.IOrderDao;
import ffof.express.model.Location;
import ffof.express.model.Order;

@Service("orderService")
public class OrderService implements IOrderService{

	private IOrderDao orderDao;
	private ILocationDao locationDao;
	
	public IOrderDao getOrderDao() {
		return orderDao;
	}
	
	@Resource
	public void setOrderDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public ILocationDao getLocationDao() {
		return locationDao;
	}

	@Resource
	public void setLocationDao(ILocationDao locationDao) {
		this.locationDao = locationDao;
	}

	@Override
	public void addOrder(Order order) {
		orderDao.add(order);
	}

	@Override
	public void addLocation(Location location) {
		locationDao.add(location);
	}

	@Override
	public void modifyLocation(Location location) {
		locationDao.update(location);
	}

	@Override
	public void modifyOrder(Order order) {
		orderDao.update(order);
	}

	@Override
	public void update(Location location) {
		locationDao.add(location);
	}

	@Override
	public List<Location> query(String ord_num) {
		List<Location> locations = (List<Location>) locationDao.findAll(ord_num);
		return locations;
	}

	@Override
	public Order getByOrderNum(String ord_num) {
		Order order = orderDao.getByOrderNum(ord_num);
		return order;
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		orderDao.update(order);
	}
	
}
