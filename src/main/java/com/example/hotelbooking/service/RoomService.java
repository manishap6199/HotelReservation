package com.example.hotelbooking.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hotelbooking.model.Category;
import com.example.hotelbooking.model.Room;
import com.example.hotelbooking.repository.CategoryRepository;
import com.example.hotelbooking.repository.RoomRepository;


@Service
public class RoomService {
	
	@Autowired
	RoomRepository repo;
	
	@Autowired
	CategoryRepository catRepo;

	//get all rooms
	public List<Room> getAllRoom(){
		ArrayList<Room> list = new ArrayList<>();
		repo.findAll().forEach(row -> list.add(row));
		return list;
	}
	
	//get room by id
	public Room getRoomById(Long id){
			return repo.findById(id).get();
	}
		
	//get room by category id
	public List<Room> getRoomByCategoryId(Long id){
		Category cat = catRepo.findById(id).get();
		System.out.println("cat service = "+cat);
		ArrayList<Room> list = (ArrayList<Room>) repo.findByCategoryId(cat.getId());
		System.out.println("room service = "+list);
		return list;
	}
	
	//update room
	public boolean updateRoom(Room cat){
		Room excat = getRoomById(cat.getId());
		excat.setCategory(cat.getCategory());
		excat.setCharges(cat.getCharges());
		excat.setDetails(cat.getDetails());
		excat.setNumber(cat.getNumber());
		//excat.setStatus(cat.getStatus());
		repo.save(excat);
		return true;
	}
	
	//save room
	public boolean saveRoom(Room cat){
		Room updatedObj = repo.save(cat);
		return true;
	}
	
	//delete room
	public boolean deleteRoom(Long id){
		repo.deleteById(id);
		if (repo.findById(id).isEmpty()) {
			return true;
		}
		return false;
	}
}
