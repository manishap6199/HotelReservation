package com.example.hotelbooking.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hotelbooking.model.Booking;
import com.example.hotelbooking.model.Category;
import com.example.hotelbooking.model.Room;
import com.example.hotelbooking.model.User;
import com.example.hotelbooking.service.BookingService;
import com.example.hotelbooking.service.CategoryService;
import com.example.hotelbooking.service.RoomService;
import com.example.hotelbooking.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	CategoryService catservice;
	
	@Autowired
	RoomService roomservice;
	
	@Autowired
	UserService userService;

	@Autowired
	BookingService bookService;

	@RequestMapping("/userhome")
	public String UserHome(HttpServletRequest request,HttpSession session) {
		if(session.getAttribute("username")==null) {
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcome";
		}
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("username", session.getAttribute("username").toString());
		request.setAttribute("mode", "MODE_USER");
		return "userhome";
	}
	
	@RequestMapping("/room-user")
	public String RoomUser(@RequestParam Long id , HttpServletRequest request,HttpSession session) {
		if(session.getAttribute("username")==null) {
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcome";
		}
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("username", session.getAttribute("username").toString());
		
		request.setAttribute("room", roomservice.getRoomByCategoryId(id));
		request.setAttribute("mode", "MODE_ROOM_USER");
		return "userhome";
	}
	
	@RequestMapping("/roombook")
	public String RoomBook(@RequestParam Long id , HttpServletRequest request,HttpSession session) {
		if(session.getAttribute("username")==null) {
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcome";
		}
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("username", session.getAttribute("username").toString());
		
		request.setAttribute("user", userService.findByUsername(session.getAttribute("username").toString()));
		request.setAttribute("room", roomservice.getRoomById(id));
		request.setAttribute("mindate", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		
		
		request.setAttribute("mode", "MODE_ROOM_BOOK");
		return "userhome";
	}
	
	@PostMapping("/roombook")
	public String SaveRoom(@RequestParam String id ,@RequestParam String checkin , @RequestParam String checkout ,
			@RequestParam String charges ,@RequestParam String cardName ,@RequestParam String cardNumber 
			,@RequestParam String cardExpiry, HttpServletRequest request,HttpSession session ) throws Exception, ParseException {
		if(session.getAttribute("username")==null) {
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcome";
		}
		request.setAttribute("category", catservice.getAllCategory());
		request.setAttribute("username", session.getAttribute("username").toString());

		User user = userService.findByUsername(session.getAttribute("username").toString());
		Room room = roomservice.getRoomById(Long.parseLong(id));
		String bookingDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");  
		//String chin = new SimpleDateFormat("yyyy-MM-dd").format(new Date(checkin));
		//String chout = new SimpleDateFormat("yyyy-MM-dd").format(new Date(checkout));
		//System.out.println("chin = "+checkin+" chout = "+checkout+" bookingDate = "+bookingDate);
		Booking b = new Booking(user,room,formatter.parse(checkin),formatter.parse(checkout),formatter.parse(bookingDate),Double.parseDouble(charges),cardName,cardNumber,cardExpiry);
		bookService.saveBooking(b);
		request.setAttribute("mode", "MODE_ADMIN_BOOK_SUCCESS");
		return "userhome";
	}
	
	@RequestMapping("/logout")
	public String Logout(HttpServletRequest request,HttpSession session) {
		session.invalidate();
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcome";
	}
}
