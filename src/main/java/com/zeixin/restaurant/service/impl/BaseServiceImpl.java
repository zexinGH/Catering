package com.zeixin.restaurant.service.impl;

import java.util.List;


import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeixin.restaurant.dao.BaseDao;
import com.zeixin.restaurant.service.BaseService;
@Service("baseService")
public class BaseServiceImpl<T> implements BaseService<T> {
	
	@Autowired
	private BaseDao<T> baseDao;
	
	@Override
	public T find(Class<? extends T> clazz, int id) {
		return baseDao.find(clazz, id);
	}

	@Override
	public boolean create(T baseBean) {
		return baseDao.create(baseBean);
		
	}

	@Override
	public boolean save(T baseBean) {
		 return baseDao.save(baseBean);
		
	}

	@Override
	public boolean update(T baseBean) {
		return baseDao.update(baseBean);
		
	}

	@Override
	public boolean delete(T baseBean) {
		return baseDao.delete(baseBean);
		
	}

	@Override
	public List<T> list(String hql) {
		return baseDao.list(hql);
	}

	@Override
	public int getTotalCount(String hql, Object... params) {
		return baseDao.getTotalCount(hql, params);
	}

	@Override
	public List<T> list(String hql, int firstResult, int maxSize,
			Object... params) {
		return baseDao.list(hql, firstResult, maxSize, params);
	}

	@Override
	public Query createQuery(String hql) {
		return baseDao.createQuery(hql);
	}

}
