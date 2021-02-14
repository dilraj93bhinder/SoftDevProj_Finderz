package com.finderz.controllers;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finderz.model.Property;
import com.finderz.model.User;
import com.finderz.service.PropertyService;
import com.finderz.service.UserService;

@Controller
public class PropertyController {

	private UserService userService;
	private PropertyService propertyService;

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService us) {
		this.userService = us;
	}

	@Autowired(required = true)
	@Qualifier(value = "propertyService")
	public void setPropertyService(PropertyService ps) {
		this.propertyService = ps;
	}

	@RequestMapping(value = "User/listProperty/{user}", method = RequestMethod.GET)
	public String listProperty(@PathVariable("user") Integer userId, ModelMap model) {
		User user = this.userService.getUserById(userId);
		List<Property> propertiesList = this.propertyService.listPropertiesByUserId(userId);
		model.addAttribute("propertyList", propertiesList);
		model.addAttribute("user", user);
		return "list_property";
	}

	@RequestMapping(value = "User/post_ads/{user}", method = RequestMethod.GET)
	public String postAds(@PathVariable("user") Integer userId, ModelMap model) {
		User user = this.userService.getUserById(userId);
		Property property = new Property();
		property.setUser_id(userId);
		model.addAttribute("Property", property);
		model.addAttribute("user", user);
		/*
		 * List<Property> propertiesList =
		 * this.propertyService.listPropertiesByUserId(userId);
		 * model.addAttribute("propertyList", propertiesList);
		 * model.addAttribute("user", user);
		 */
		return "post_ads";
	}

	@RequestMapping(value = "User/addProperty", method = RequestMethod.POST)
	public String addProperty(@ModelAttribute("Property") Property p, ModelMap model) {

		/*
		 * if(p.getAdvertisement_id() == 0){ //new User, add it
		 * 
		 * Date date = Calendar.getInstance().getTime(); p.setCreated_date(date);
		 * 
		 * this.propertyService.addProperty(p); }else{ //existing User, call update
		 * this.propertyService.addProperty(p); }
		 */
		p.setAddress_id(1);
		Date date = Calendar.getInstance().getTime();
		p.setAdvertisement_date(date);
		this.propertyService.addProperty(p);
		User user = this.userService.getUserById(p.getUser_id());
		model.addAttribute("user", user);
		return "home";

	}
}
