package com.finderz.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.finderz.model.Property;
import com.finderz.model.User;

public class PropertyDAOImpl implements PropertyDAO {

	private static final Logger logger = LoggerFactory.getLogger(PropertyDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addProperty(Property p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Property saved successfully, Property Details=" + p);
	}

	@Override
	public void updateProperty(Property p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Property updated successfully, Property Details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Property> listProperties() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Property> PropertysList = session.createQuery("from Property").list();
		for (Property p : PropertysList) {
			logger.info("Property List::" + p);
		}
		return PropertysList;
	}

	@Override
	public Property getPropertyById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Property p = (Property) session.load(Property.class, new Integer(id));
		logger.info("Property loaded successfully, Property details=" + p);
		return p;
	}

	
	@Override
	public void removeProperty(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Property p = (Property) session.load(Property.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Property deleted successfully, Property details=" + p);
	}
	
	@Override
	public List<Property> listPropertiesByUserId(Integer user_id) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria loginCriteria = session.createCriteria(Property.class);
		loginCriteria.add(Restrictions.eq("user_id", user_id));
		List loginCriteriaResult = loginCriteria.list();
		if (loginCriteriaResult != null) {
			return loginCriteriaResult;
		} else {
			return null;
		}
	}
	
	
}
