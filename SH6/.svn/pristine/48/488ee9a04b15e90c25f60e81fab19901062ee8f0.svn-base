package ffof.express.dao;

import java.util.List;

import ffof.express.model.Pager;
import ffof.express.model.User;

public interface IUserDao {
	
	public void add(User user);
	public void delete(String telephone);
	public void update(User user);
	public User getByPhone(String telephone);
	public List<User> findAll();
	public Pager<User> findAllByPage(int curPageNum);
	public List<User> findAllExceptSelf(User user);
	public User getByUsername(String username);
	
}
