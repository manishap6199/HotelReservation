package com.example.hotelbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.hotelbooking.model.Category;


@Repository
public interface CategoryRepository extends JpaRepository<Category, Long>{

}
