package com.finderz.controllers;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class UserController {
	
	private UserService userService;
	private PropertyService propertyService;
	
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService us){
		this.userService = us;
	}
	
	@Autowired(required=true)
	@Qualifier(value="propertyService")
	public void setPropertyService(PropertyService ps){
		this.propertyService = ps;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomePage(Model model) {
		model.addAttribute("user", new User());
		return "index";
	}
	
	@RequestMapping(value = "/home/{user_id}", method = RequestMethod.GET)
	public String getLoggedInHomePage(@PathVariable("user_id") int userId, Model model) {
		List<Property> propertiesList = this.propertyService.listProperties();
		model.addAttribute("propertyList", propertiesList);
		model.addAttribute("user", this.userService.getUserById(userId));
		
		List<User> users = this.userService.listUsers();
		Map<Integer, String> userEmails = new HashMap<Integer, String>();
		for (User user: users) {
			userEmails.put(user.getUser_id(), user.getUser_email());
		}
		model.addAttribute("userEmails", userEmails);
		return "home";
	}
	
	@RequestMapping(value = "/User/contactUs/{user_id}", method = RequestMethod.GET)
	public String getContactPage(@PathVariable("user_id") int userId, Model model) {
		model.addAttribute("user", this.userService.getUserById(userId));
		return "contact";
	}
	
	@RequestMapping(value = "/Users", method = RequestMethod.GET)
	public String listUsers(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("listUsers", this.userService.listUsers());
		return "User";
	}
	
	//For add and update User both
	@RequestMapping(value= "/User/add", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("User") User p, ModelMap model){
		
		Date date = Calendar.getInstance().getTime();
		p.setCreated_date(date);
		if(p.getUser_id() == 0){
			//new User, add it
			this.userService.addUser(p);
		}else{
			//existing User, call update
			this.userService.updateUser(p);
		}
		List<Property> propertiesList = this.propertyService.listProperties();
		model.addAttribute("propertyList", propertiesList);
		model.addAttribute("user", p);
		return "home";
		
	}
	
	@RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id){
		
        this.userService.removeUser(id);
        return "redirect:/Users";
    }
	
	@RequestMapping("/logout/{id}")
    public String logoutUser(@PathVariable("id") int id, ModelMap model){
		model.addAttribute("user", new User());
		return "index";
    }
 
    @RequestMapping("/edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model){
        model.addAttribute("user", this.userService.getUserById(id));
        model.addAttribute("listUsers", this.userService.listUsers());
		return "User";
    }

    @RequestMapping(value= "User/login", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("User") User p, Model model){
		
		if(p != null && !"".equals(p.getUser_email())){
			User user = this.userService.loginUser(p);
			if(user != null) {
				List<Property> propertiesList = this.propertyService.listProperties();
				model.addAttribute("propertyList", propertiesList);
				model.addAttribute("user", user);
				
				List<User> users = this.userService.listUsers();
				Map<Integer, String> userEmails = new HashMap<Integer, String>();
				for (User user1: users) {
					userEmails.put(user.getUser_id(), user1.getUser_email());
				}
				model.addAttribute("userEmails", userEmails);
				
				return "home";				
			}else {
				model.addAttribute("user", new User());
				return "index";
			}
		}else{
			model.addAttribute("user", new User());
			return "index";
		}
		
		
	}

    
    
}
