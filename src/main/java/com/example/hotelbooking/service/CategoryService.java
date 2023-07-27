package com.example.hotelbooking.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hotelbooking.model.Category;
import com.example.hotelbooking.repository.CategoryRepository;


@Service
public class CategoryService {
	
	@Autowired
	CategoryRepository repo;

	//get all category
	public List<Category> getAllCategory(){
		ArrayList<Category> list = new ArrayList<>();
		repo.findAll().forEach(row -> list.add(row));
		return list;
	}
	
	//get category by id
	public Category getCategoryById(Long id){
		return repo.findById(id).get();
	}
	
	//update category
	public boolean updateCategory(Category cat){
		Category excat = getCategoryById(cat.getId());
		excat.setName(cat.getName());
		repo.save(excat);
		return true;
	}
	
	//saveorupdate category
	public boolean saveCategory(Category cat){
		Category updatedObj = repo.save(cat);
		//if (getCategoryById(updatedObj.getId()) != null) {
		//	return true;
		//}
		return true;
	}
	
	//delete category
	public boolean deleteCategory(Long id){
		repo.deleteById(id);
		if (repo.findById(id).isEmpty()) {
			return true;
		}
		return false;
	}
}
