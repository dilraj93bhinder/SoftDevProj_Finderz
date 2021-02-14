package com.finderz.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.finderz.dao.PropertyDAO;
import com.finderz.model.Property;

public class PropertyServiceImpl implements PropertyService {

	private PropertyDAO propertyDAO;

	public void setPropertyDAO(PropertyDAO PropertyDAO) {
		this.propertyDAO = PropertyDAO;
	}

	@Override
	@Transactional
	public void addProperty(Property p) {
		this.propertyDAO.addProperty(p);
	}

	@Override
	@Transactional
	public void updateProperty(Property p) {
		this.propertyDAO.updateProperty(p);
	}

	@Override
	@Transactional
	public List<Property> listProperties() {
		return this.propertyDAO.listProperties();
	}

	@Override
	@Transactional
	public Property getPropertyById(int id) {
		return this.propertyDAO.getPropertyById(id);
	}

	@Override
	@Transactional
	public void removeProperty(int id) {
		this.propertyDAO.removeProperty(id);
	}
	
	@Override
	@Transactional
	public List<Property> listPropertiesByUserId(int user_id) {
		return this.propertyDAO.listPropertiesByUserId(user_id);
	}

}
