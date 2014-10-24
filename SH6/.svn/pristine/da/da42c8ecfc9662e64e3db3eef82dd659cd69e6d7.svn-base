package ffof.express.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ffof.express.dao.IUserDao;
import ffof.express.exception.UserException;
import ffof.express.model.Pager;
import ffof.express.model.User;
import ffof.express.utils.MD5Util;

@Service("userService")
public class UserService implements IUserService{

	//UserDao userDao = new UserDao();
	private IUserDao userDao;
	
	@Resource
	public void setUserDao(IUserDao userDao){
		this.userDao = userDao;
	}
	
	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		User u = userDao.getByPhone(user.getTelephone());
		if (u != null) throw new UserException("用户已存在!");
		String password = MD5Util.md5Signature(user.getPassword());
		user.setPassword(password);
		userDao.add(user);
		
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		
		String psw = MD5Util.md5Signature(user.getPassword());
		user.setPassword(psw);
		userDao.update(user);
	}

	@Override
	public void delete(String telephone) {
		// TODO Auto-generated method stub
		userDao.delete(telephone);
	}

	@Override
	public User getByPhone(String telephone) {
		// TODO Auto-generated method stub
		return userDao.getByPhone(telephone);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

	@Override
	public User login(String telephone, String password) {
		String pwd = MD5Util.md5Signature(password);
		System.out.println(pwd);
		User u = userDao.getByPhone(telephone);
		if (null == u) throw new UserException("用户不存在！");
		if (!u.getPassword().equals(pwd)) throw new UserException("密码错误");
		return u;
	}

	@Override
	public List<User> findAllExceptSelf(User u) {
		List<User> list = userDao.findAllExceptSelf(u);
		return list;
	}

	@Override
	public Pager<User> findAllByPage(int curPageNum) {
		Pager<User> pager = userDao.findAllByPage(curPageNum);
		return pager;
	}

}
