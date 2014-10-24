package ffof.express.service;

import java.util.List;

import ffof.express.model.Location;
import ffof.express.model.Order;


public interface IOrderService {

	public void addOrder(Order order);
	public void addLocation(Location location);
	public void modifyLocation(Location location);
	public void modifyOrder(Order order);
	public void update(Location location);
	public void update(Order order);
	public Order getByOrderNum(String ord_num);
	public List<Location> query(String ord_num);
}
