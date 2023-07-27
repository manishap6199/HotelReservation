package com.example.hotelbooking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.hotelbooking.model.User;
import com.example.hotelbooking.service.CategoryService;
import com.example.hotelbooking.service.RoomService;
import com.example.hotelbooking.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class WelcomeController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	CategoryService catservice;
	
	@Autowired
	RoomService roomservice;
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcome";
	}
	
	@RequestMapping("/about")
	public String About(HttpServletRequest request) {
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("mode", "MODE_ABOUT");
		return "welcome";
	}
	
	@RequestMapping("/contact")
	public String Contact(HttpServletRequest request) {
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("mode", "MODE_CONTACT");
		return "welcome";
	}
	
	@RequestMapping("/room-welcome")
	public String RoomWelcome(@RequestParam Long id , HttpServletRequest request) {
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("room", roomservice.getRoomByCategoryId(id));
		request.setAttribute("mode", "MODE_ROOM_WELCOME");
		return "welcome";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcome";
	}
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		userService.saveUser(user);
		redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcome";
	}
	
	@RequestMapping ("/login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request, HttpSession session) {
		System.out.println("User = "+user);
		if(user.getName().compareTo("Admin") == 0 && user.getUsername().compareTo("Admin") == 0 && user.getPassword().compareTo("1234") == 0) {			
			return "adminhome";
		}
		else
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			session.setAttribute("username",user.getUsername());
			request.setAttribute("username", user.getUsername());
			request.setAttribute("category", catservice.getAllCategory());
			request.setAttribute("mode", "MODE_USER");
			return "userhome";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}
	}
//	@RequestMapping(value="/welcome", method=RequestMethod.GET)
//	public String welcomePage() {
//		return "welcome";
//	}
//	
//	@RequestMapping(value="/login", method=RequestMethod.GET)
//	public String loginPage() {
//		return "welcome";
//	}
	
	
}
