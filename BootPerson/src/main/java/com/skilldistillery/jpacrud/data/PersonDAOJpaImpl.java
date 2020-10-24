package com.skilldistillery.jpacrud.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Person;

@Transactional
@Service
public class PersonDAOJpaImpl implements PersonDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Person findById(int id) {
		return em.find(Person.class, id);
	}

}
