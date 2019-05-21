package service.serviceImpl;

import dao.UserDao;
import entity.User;
import service.UserService;

public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public boolean login(User user) {
		return userDao.login(user);
	}

}
