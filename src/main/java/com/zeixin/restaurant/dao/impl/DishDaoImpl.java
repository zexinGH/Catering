package com.zeixin.restaurant.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zeixin.restaurant.bean.MenuCategory;
import com.zeixin.restaurant.bean.MenuDish;
import com.zeixin.restaurant.dao.DishDao;
@Transactional
@Repository("dishDao")
public class DishDaoImpl extends BaseDaoImpl<MenuDish> implements DishDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<MenuDish> getAllDish() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<MenuDish> menuDishs = sessionFactory.getCurrentSession()
				.createQuery(" from MenuDish").list();
		return menuDishs;
	}
	@Override
	public boolean saveCategory(MenuCategory category) {
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (Exception  e) {			
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public List<MenuCategory> getAllCategory() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<MenuCategory> categories = sessionFactory.getCurrentSession()
				.createQuery(" from MenuCategory ").list();
		return categories;
	}
	@Override
	public MenuCategory getCategoyByName(String categoryName) {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<MenuCategory> categories = sessionFactory.getCurrentSession()
		.createQuery(" select m from MenuCategory m where m.categoryName =:name ")
		.setParameter("name", categoryName).list();
		if(categories.size() > 0){
			return categories.get(0);
		}
		return null;
	}
	@Override
	public MenuDish getDishByName(String dishName) {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<MenuDish> menuDishs = sessionFactory.getCurrentSession()
		.createQuery(" select m from MenuDish m where m.dishName =:name ")
		.setParameter("name", dishName).list();
		if(menuDishs.size() > 0){
			return menuDishs.get(0);
		}
		return null;
	}
	@Override
	public MenuCategory getCategoryById(Integer categoryId) {
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<MenuCategory> categories = sessionFactory.getCurrentSession()
				.createQuery("select m from MenuCategory m where m.id = :id ")
				.setParameter("id", categoryId).list();
		if (categories.size()>0){
			return categories.get(0);
		}
		return null;
	}
	@SuppressWarnings("deprecation")
	@Override
	public String getDayTurnover(Date date) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		@SuppressWarnings("rawtypes")
		String query = sessionFactory.getCurrentSession()
				.createQuery(" select sum(orderPayment) from OrderForm as p "
						+ " where p.simpleDate =:date ")
						.setParameter("date", date).uniqueResult().toString();
		return query;
	}

}
