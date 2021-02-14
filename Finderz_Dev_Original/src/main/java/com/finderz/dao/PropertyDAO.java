package com.finderz.dao;

import java.util.List;

import com.finderz.model.Property;

public interface PropertyDAO {
	
	public void addProperty(Property property);

	public void updateProperty(Property property);

	public List<Property> listProperties();

	public Property getPropertyById(int id);

	public void removeProperty(int id);

	List<Property> listPropertiesByUserId(Integer user_id);

}
