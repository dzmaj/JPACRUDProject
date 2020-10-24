package com.skilldistillery.jpacrud.data;

import java.util.List;

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

	@Override
	public List<Person> getAllPeople() {
		String query = "SELECT p from Person p";
		return em.createQuery(query, Person.class).getResultList();
	}

	@Override
	public List<Person> findByFirstName(String fname) {
		String query = "SELECT p from Person p WHERE p.firstName = :search";
		return em.createQuery(query, Person.class).setParameter("search", fname).getResultList();
	}

	@Override
	public List<Person> findByLastName(String lname) {
		String query = "SELECT p from Person p WHERE p.lastName = :search";
		return em.createQuery(query, Person.class).setParameter("search", lname).getResultList();
	}

	@Override
	public Person create(Person person) {
		// start the transaction
	    em.getTransaction().begin();
	    // write the customer to the database
	    em.persist(person);
	    // update the "local" Customer object
	    em.flush();
	    // commit the changes (actually perform the operation)
	    em.getTransaction().commit();
	    
	    return person;
	}

	@Override
	public Person update(int id, Person person) {
		Person dbPerson = em.find(Person.class, id);
		if (dbPerson == null) {
			return null;
		}
//		em.getTransaction().begin();
		// assign all the data from the sent in actor to the one in the database
		dbPerson.setFirstName(person.getFirstName());
		dbPerson.setLastName(person.getLastName());
		dbPerson.setExpression(person.getExpression());
		dbPerson.setEyeColor(person.getEyeColor());
		dbPerson.setSkinColor(person.getSkinColor());
		dbPerson.setArmThickness(person.getArmThickness());
		dbPerson.setLegThickness(person.getLegThickness());
		dbPerson.setTorsoThickness(person.getTorsoThickness());
		dbPerson.setEyeSize(person.getEyeSize());
		em.flush();
//		em.getTransaction().commit();
		return dbPerson;
	}

	@Override
	public boolean delete(int id) {
		Person person = em.find(Person.class, id);
		if (person == null) {
			return false;
		}
		em.getTransaction().begin();
		em.remove(person);
		boolean wasDeleted = ! em.contains(person);
		em.flush();
		em.getTransaction().commit();
		return wasDeleted;
	}
	
	

}
