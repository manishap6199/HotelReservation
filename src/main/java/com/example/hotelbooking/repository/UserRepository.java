package com.example.hotelbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.hotelbooking.model.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long>{
	public User findByUsernameAndPassword(String username, String password);
	public User findByUsername(String username);
}
