package com.example.hotelbooking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.hotelbooking.model.Category;
import com.example.hotelbooking.model.Room;
import com.example.hotelbooking.model.User;


@Repository
public interface RoomRepository extends JpaRepository<Room, Long>{
	public List<Room> findByCategoryId(Long catid);
}
