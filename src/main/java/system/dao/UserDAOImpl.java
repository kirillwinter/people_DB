package system.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import system.model.User;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {
	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// Создание запросов к бд
	@Override
	public List<User> allUsers(){
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from User").list();
	}

	@Override
	public void add(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(user);

	}

	@Override
	public void delete(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(user);
	}

	@Override
	public void edit(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.update(user);
	}

	@Override
	public User getById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(User.class, id);
	}

	@Override
	public List<User> sortByDateBirth(){
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM User ORDER BY  dateBirth ASC").list();
	}



}
