package com.example.hotelbooking.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hotelbooking.model.Category;
import com.example.hotelbooking.model.User;
import com.example.hotelbooking.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository repo;
	
	public void saveUser(User user ) {
		System.out.println("user = "+user);
		repo.save(user);
	}
	public User findByUsernameAndPassword(String username, String password) {
		return repo.findByUsernameAndPassword(username, password);
	}
	public User findByUsername(String username) {
		return repo.findByUsername(username);
	}
	
	//get all category
	public List<User> getAllUsers(){
		ArrayList<User> list = new ArrayList<>();
		repo.findAll().forEach(row -> list.add(row));
		return list;
	}
}
