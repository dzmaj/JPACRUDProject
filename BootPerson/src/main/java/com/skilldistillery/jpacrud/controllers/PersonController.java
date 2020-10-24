package com.skilldistillery.jpacrud.controllers;

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
}
