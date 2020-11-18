package com.finderz.user;

import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finderz.user.model.User;
import com.finderz.user.service.UserService;

@Controller
public class UserController {
	
	private UserService userService;
	
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService ps){
		this.userService = ps;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomePage(Model model) {
		model.addAttribute("User", new User());
		return "index";
	}
	
	@RequestMapping(value = "/Users", method = RequestMethod.GET)
	public String listUsers(Model model) {
		model.addAttribute("User", new User());
		model.addAttribute("listUsers", this.userService.listUsers());
		return "User";
	}
	
	//For add and update User both
	@RequestMapping(value= "/User/add", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("User") User p){
		
		if(p.getUser_id() == 0){
			//new User, add it
			Date date = Calendar.getInstance().getTime();
			p.setCreated_date(date);
			this.userService.addUser(p);
		}else{
			//existing User, call update
			this.userService.updateUser(p);
		}
		
		return "index";
		
	}
	
	@RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id){
		
        this.userService.removeUser(id);
        return "redirect:/Users";
    }
 
    @RequestMapping("/edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model){
        model.addAttribute("User", this.userService.getUserById(id));
        model.addAttribute("listUsers", this.userService.listUsers());
		return "User";
    }

    @RequestMapping(value= "/User/login", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("User") User p){
		
		if(p != null && !"".equals(p.getUser_email())){
			if(this.userService.loginUser(p)) {
				return "show";				
			}else {
				return "index";
			}
		}else{
			return "index";
		}
		
		
	}
    
}
