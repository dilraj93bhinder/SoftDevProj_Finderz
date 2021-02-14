package com.finderz.service;

import java.util.List;

import com.finderz.model.Property;

public interface PropertyService {

	public void addProperty(Property p);

	public void updateProperty(Property p);

	public List<Property> listProperties();

	public Property getPropertyById(int id);

	public void removeProperty(int id);

	List<Property> listPropertiesByUserId(int user_id);
}
