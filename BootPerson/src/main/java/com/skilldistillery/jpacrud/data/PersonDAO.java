package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.Person;

public interface PersonDAO {
	Person findById(int id);
}
