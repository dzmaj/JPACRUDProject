package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Person;

public interface PersonDAO {
	Person findById(int id);
	List<Person> getAllPeople();
	List<Person> findByFirstName(String fname);
	List<Person> findByLastName(String lname);
	Person create(Person person);
	Person update(int id, Person person);
	boolean delete(int id);
}
