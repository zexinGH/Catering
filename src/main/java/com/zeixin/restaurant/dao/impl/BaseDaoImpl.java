package com.zeixin.restaurant.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zeixin.restaurant.dao.BaseDao;

@Transactional
@Repository("baseDao")
public class BaseDaoImpl<T> implements BaseDao<T> {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public T find(Class<? extends T> clazz, int id) {
		return (T) sessionFactory.getCurrentSession().get(clazz, id);
		
	}

	@Override
	public boolean create(T baseBean) {
		try {
			sessionFactory.getCurrentSession().persist(baseBean);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean save(T baseBean) {
		try {
			sessionFactory.getCurrentSession().save(baseBean);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean update(T baseBean) {
		try {
			sessionFactory.getCurrentSession().update(baseBean);
			return true;
		} catch (Exception  e) {			
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean delete(T baseBean) {
		try {
			sessionFactory.getCurrentSession().delete(baseBean);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public List<T> list(String hql) {
		return (List<T>) sessionFactory.getCurrentSession()
				.createQuery(hql).list();
	}

	@Override
	public int getTotalCount(String hql, Object... params) {
		
		return 0;
	}

	@Override
	public List<T> list(String hql, int firstResult, int maxSize,
			Object... params) {
		Query query = createQuery(hql);
		for (int i = 0; params != null && i < params.length; i++)
			query.setParameter(i + 1, params[i]);
		List<T> list = (List<T>) createQuery(hql).setFirstResult(firstResult)
				.setMaxResults(maxSize);
		return list;
	}

	@Override
	public Query createQuery(String hql) {
		return sessionFactory.getCurrentSession()
				.createQuery(hql);
	}

}
