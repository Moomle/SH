package ffof.express.service;

import java.util.List;

import ffof.express.model.Pager;
import ffof.express.model.User;

public interface IUserService {
	public void add(User user);
	public void delete(String telephone);
	public void update(User user);
	public User getByPhone(String telephone);
	public List<User> findAll();
	public List<User> findAllExceptSelf(User u);
	public Pager<User> findAllByPage(int curPageNum);
	public User login(String username, String password);
}
