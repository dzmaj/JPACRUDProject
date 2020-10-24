package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PersonTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Person person;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("PersonPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		person = em.find(Person.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		person = null;
		em.close();
	}
	
	//# id	first_name	last_name	torso_thickness	leg_thickness	arm_thickness	eye_color	eye_size	expression	skin_color
	//	1	George		Jenkins		5.5				2				2				green		10			smile		Orange

	@Test
	@DisplayName("test person entity")
	void test1() {
		assertNotNull(person);
		assertEquals(1, person.getId());
		assertEquals("George", person.getFirstName());
		assertEquals("Jenkins", person.getLastName());
		assertEquals(5.5, person.getTorsoThickness());
		assertEquals(2, person.getLegThickness());
		assertEquals(2, person.getArmThickness());
		assertEquals("green", person.getEyeColor());
		assertEquals(10, person.getEyeSize());
		assertEquals("smile", person.getExpression());
		assertEquals("Orange", person.getSkinColor());
	}

}
