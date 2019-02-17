package com.anand.LmsBoot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.anand.LmsBoot.entity.Users;

@Repository
public class UserDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Transactional
	public List<Users> getUsersByFirstName(String firstName){
		return entityManager.createQuery("select user from Users user where user.firstName = :firstName", 
				Users.class).setParameter("firstName", firstName).getResultList();
	}

}
