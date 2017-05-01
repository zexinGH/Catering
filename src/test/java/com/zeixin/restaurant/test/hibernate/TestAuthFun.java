package com.zeixin.restaurant.test.hibernate;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Function;
import com.zeixin.restaurant.test.hibernate.HibernateUtils;

public class TestAuthFun {
	public static void main(String[] args) {
		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction tx = null;
		try {
			sessionFactory = HibernateUtils.getSessionFactory();
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery(
					" from Authority a where a.authorityName = '员工信息管理'");
			List<Authority> list = query.list();
			for(Authority authority : list){
				Function function = new Function();
				function.setFunName("人事管理");
				function.setAuthority(authority);
				function.setDateCreated(new Date());
				function.setDateModified(new Date());
				session.persist(function);
			}			
			tx.commit();
		}catch(Exception e) {
			tx.rollback();
		}finally {
			session.close();
			sessionFactory.close();
		}
		


	}

}
