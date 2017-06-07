package com.zeixin.restaurant.service;

import java.util.Date;
import java.util.List;

import com.zeixin.restaurant.bean.MenuCategory;
import com.zeixin.restaurant.bean.MenuDish;

public interface DishService extends BaseService<MenuDish> {
	public List<MenuDish> getAllDish(); 
	public MenuCategory getCategoryById(Integer categoryId);
	public boolean saveCategory(MenuCategory category);
	public List<MenuCategory> getAllCategory();
	public MenuCategory getCategoyByName(String categoryName);
	public MenuDish getDishByName(String dishName);
	public String getDayTurnover(Date date);
}
