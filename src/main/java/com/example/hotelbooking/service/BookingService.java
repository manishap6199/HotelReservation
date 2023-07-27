package com.example.hotelbooking.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hotelbooking.model.Booking;
import com.example.hotelbooking.repository.BookingRepository;

@Service
public class BookingService {

	@Autowired
	BookingRepository repo;
	
	public void saveBooking(Booking booking ) {
		//System.out.println("user = "+user);
		repo.save(booking);
	}
	
	//get all category
	public List<Booking> getAllBooking(){
		ArrayList<Booking> list = new ArrayList<>();
		repo.findAll().forEach(row -> list.add(row));
		return list;
	}
}
