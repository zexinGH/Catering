package com.zeixin.restaurant.dao;

import java.util.List;

import javax.persistence.Query;

public interface BaseDao<T> {
	public T find(Class<? extends T> clazz, int id); 	// 根据id查找实体

	public boolean create(T baseBean); 		//创建实体

	public boolean save(T baseBean); 		//保存实体
	
	public boolean update(T baseBean); 		//更新实体
	
	public boolean delete(T baseBean); 		//删除实体

	public List<T> list(String hql); 		//查询实体

	public int getTotalCount(String hql, Object... params); //查询总数

	public List<T> list(String hql, int firstResult, int maxSize,
			Object... params); 				//查询某页实体

	public Query createQuery(String hql);	//创建Query对象
}
