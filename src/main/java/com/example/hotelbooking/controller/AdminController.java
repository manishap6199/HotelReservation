package com.example.hotelbooking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hotelbooking.model.Category;
import com.example.hotelbooking.model.Room;
import com.example.hotelbooking.service.BookingService;
import com.example.hotelbooking.service.CategoryService;
import com.example.hotelbooking.service.RoomService;
import com.example.hotelbooking.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	CategoryService catservice;

	@Autowired
	RoomService roomservice;

	@Autowired
	BookingService bookingservice;

	@Autowired
	UserService userservice;

	@RequestMapping("/adminhome")
	public String AdminHome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADMIN_HOME");
		return "adminhome";
	}
	
	@RequestMapping("/admincategory")
	public String AdminCategory(HttpServletRequest request) {
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("mode", "MODE_ADMIN_CATEGORY");
		return "adminhome";
	}
	
	@PostMapping("/save-category")
	public String SaveCategory(@ModelAttribute Category category , HttpServletRequest request ) {
		catservice.saveCategory(category);
		request.setAttribute("category", catservice.getAllCategory());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_HOME");
		return "adminhome";
	}
	
	@RequestMapping("/update-category")
	public String UpdateCategory(@RequestParam Long id , HttpServletRequest request ) {
		request.setAttribute("cat", catservice.getCategoryById(id));
		request.setAttribute("category", catservice.getAllCategory());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_CATEGORY_UPDATE");
		return "adminhome";
	}
	
	@PostMapping("/update-category")
	public String UpdateCategory(@ModelAttribute Category category , HttpServletRequest request ) {
		//System.out.println("cat = "+category);
		catservice.updateCategory(category);
		request.setAttribute("category", catservice.getAllCategory());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_HOME");
		return "adminhome";
	}
	
	@RequestMapping("/delete-category")
	public String DeleteCategory(@RequestParam Long id , HttpServletRequest request ) {
		catservice.deleteCategory(id);
		//request.setAttribute("cat", catservice.getCategoryById(id));
		request.setAttribute("category", catservice.getAllCategory());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_CATEGORY");
		return "adminhome";
	}
	
	//rooms
	
	@RequestMapping("/adminroom")
	public String AdminRoom(HttpServletRequest request) {
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("room", roomservice.getAllRoom());
		//System.out.println("room = "+roomservice.getAllRoom());
		request.setAttribute("mode", "MODE_ADMIN_ROOM");
		return "adminhome";
	}
	
	@PostMapping("/save-room")
	public String SaveRoom(@RequestParam String number , @RequestParam String catid ,
			@RequestParam String description ,@RequestParam String charges ,HttpServletRequest request ) {
		Category cat = catservice.getCategoryById(Long.parseLong(catid));
		Room room = new Room(cat,Long.parseLong(number),description,Double.parseDouble(charges),"Available");
		//System.out.println("room = "+roomservice.getAllRoom());
		roomservice.saveRoom(room);
		request.setAttribute("room", roomservice.getAllRoom());
		request.setAttribute("category", catservice.getAllCategory());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_ROOM");
		return "adminhome";
	}
	
	@RequestMapping("/update-room")
	public String UpdateRoom(@RequestParam Long id , HttpServletRequest request ) {
		//System.out.println("room = "+roomservice.getRoomById(id));
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("r", roomservice.getRoomById(id));
		request.setAttribute("room", roomservice.getAllRoom());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_ROOM_UPDATE");
		return "adminhome";
	}
	
	@PostMapping("/update-room")
	public String UpdateRoom(@RequestParam String id, @RequestParam String number , @RequestParam String catid ,
			@RequestParam String description ,@RequestParam String charges, HttpServletRequest request ) {
		//System.out.println("cat = "+category);
		Category cat = catservice.getCategoryById(Long.parseLong(catid));
		Room room = new Room(Long.parseLong(id), cat,Long.parseLong(number),description,Double.parseDouble(charges),"");
		
		roomservice.updateRoom(room);
		
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("room", roomservice.getAllRoom());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_HOME");
		return "adminhome";
	}
	
	@RequestMapping("/delete-room")
	public String DeleteRoom(@RequestParam Long id , HttpServletRequest request ) {
		roomservice.deleteRoom(id);
		//request.setAttribute("cat", catservice.getCategoryById(id));
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("room", roomservice.getAllRoom());
		//redirectAttributes.addFlashAttribute("message", "Save Success");
		request.setAttribute("mode", "MODE_ADMIN_ROOM");
		return "adminhome";
	}
	
	@RequestMapping("/adminbooking")
	public String AdminBooking(HttpServletRequest request) {
		request.setAttribute("booking", bookingservice.getAllBooking());
		request.setAttribute("mode", "MODE_ADMIN_BOOKING");
		return "adminhome";
	}
	
	@RequestMapping("/adminusers")
	public String AdminUsers(HttpServletRequest request) {
		request.setAttribute("users", userservice.getAllUsers());
		request.setAttribute("mode", "MODE_ADMIN_USERS");
		return "adminhome";
	}
}
