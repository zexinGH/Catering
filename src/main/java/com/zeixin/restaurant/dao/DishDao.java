package com.zeixin.restaurant.dao;

import java.util.Date;
import java.util.List;

import com.zeixin.restaurant.bean.MenuCategory;
import com.zeixin.restaurant.bean.MenuDish;

public interface DishDao extends BaseDao<MenuDish> {
	public boolean saveCategory(MenuCategory category);
	public MenuCategory getCategoryById(Integer categoryId);
	public List<MenuDish> getAllDish();
	public List<MenuCategory> getAllCategory();
	public MenuCategory getCategoyByName(String categoryName);
	public MenuDish getDishByName(String dishName);
	public String getDayTurnover(Date date);
}
