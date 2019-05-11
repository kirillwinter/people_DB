package system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.dao.UserDAO;
import system.dao.UserDAOImpl;
import system.model.User;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{

	private UserDAO userDAO;

	@Autowired
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	@Transactional
	public List<User> allUsers() {
		return userDAO.allUsers();
	}

	@Override
	@Transactional
	public void add(User user) {
		userDAO.add(user);
	}

	@Override
	@Transactional
	public void delete(User user) {
		userDAO.delete(user);
	}

	@Override
	@Transactional
	public void edit(User user) {
		userDAO.edit(user);
	}

	@Override
	@Transactional
	public User getById(int id) {
		return userDAO.getById(id);
	}

//	@Transactional
//	public List<User> sortByDateUsers() {
//		return userDAO.allUsers();
//	}
}
