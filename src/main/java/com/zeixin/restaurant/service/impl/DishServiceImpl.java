package com.zeixin.restaurant.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeixin.restaurant.bean.MenuCategory;
import com.zeixin.restaurant.bean.MenuDish;
import com.zeixin.restaurant.dao.DishDao;
import com.zeixin.restaurant.service.DishService;

@Service("dishService")
public class DishServiceImpl extends BaseServiceImpl<MenuDish> implements DishService {
	
	@Autowired
	private DishDao dishDao;
	
	@Override
	public List<MenuDish> getAllDish() {
		return dishDao.getAllDish();
	}

	@Override
	public boolean saveCategory(MenuCategory category) {
		return dishDao.saveCategory(category);
	}

	@Override
	public List<MenuCategory> getAllCategory() {		
		return dishDao.getAllCategory();
	}

	@Override
	public MenuCategory getCategoyByName(String categoryName) {
		return dishDao.getCategoyByName(categoryName);
	}

	@Override
	public MenuDish getDishByName(String dishName) {
		return dishDao.getDishByName(dishName);
	}

	@Override
	public MenuCategory getCategoryById(Integer categoryId) {
		return dishDao.getCategoryById(categoryId);
	}

	@Override
	public String getDayTurnover(Date date) {
		return dishDao.getDayTurnover(date);
	}

}
