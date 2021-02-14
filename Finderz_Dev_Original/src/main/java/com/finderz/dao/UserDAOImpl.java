package com.finderz.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Repository;

import com.finderz.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("User saved successfully, User Details=" + p);
	}

	@Override
	public void updateUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		User loadedUser = (User) session.load(p.getClass(), p.getUser_id());
		BeanUtils.copyProperties(p, loadedUser);
		session.update(loadedUser);
		
		logger.info("User updated successfully, User Details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> listUsers() {
		Session session = this.sessionFactory.getCurrentSession();
		List<User> UsersList = session.createQuery("from User").list();
		for (User p : UsersList) {
			logger.info("User List::" + p);
		}
		return UsersList;
	}

	@Override
	public User getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User p = (User) session.load(User.class, new Integer(id));
		logger.info("User loaded successfully, User details=" + p);
		return p;
	}

	@Override
	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User p = (User) session.load(User.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("User deleted successfully, User details=" + p);
	}

	@Override
	public User loginUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria loginCriteria = session.createCriteria(p.getClass());
		loginCriteria.add(Restrictions.eq("user_email", p.getUser_email()));
		loginCriteria.add(Restrictions.eq("user_password", p.getUser_password()));
		List loginCriteriaResult = loginCriteria.list();
		if (loginCriteriaResult != null && loginCriteriaResult.size() == 1) {
			return (User) loginCriteriaResult.get(0);
		} else {
			return null;
		}
	}
}
