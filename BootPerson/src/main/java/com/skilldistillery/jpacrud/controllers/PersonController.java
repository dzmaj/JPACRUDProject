package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.PersonDAO;
import com.skilldistillery.jpacrud.entities.Person;

@Controller
public class PersonController {

	@Autowired
	private PersonDAO personDao;
	
	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(path = "getPerson.do")
	public String showFilm(Integer pid, Model model) {
		Person person = personDao.findById(pid);
		model.addAttribute("person", person);
		return "person/show";
	}
	
	@RequestMapping(path = "searchPerson.do", params = "fname")
	public String findFirstName(String fname, Model model) {
		List<Person> people = personDao.findByFirstName(fname);
		model.addAttribute("people", people);
		return "person/results";
	}
	
	@RequestMapping(path = "searchPerson.do", params = "lname")
	public String findLastName(String lname, Model model) {
		List<Person> people = personDao.findByLastName(lname);
		model.addAttribute("people", people);
		return "person/results";
	}
	
	@RequestMapping(path = "listPeople.do")
	public String listAll(String lname, Model model) {
		List<Person> people = personDao.getAllPeople();
		model.addAttribute("people", people);
		return "person/results";
	}
}
