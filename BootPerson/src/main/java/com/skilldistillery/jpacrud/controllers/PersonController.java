package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.PersonDAO;
import com.skilldistillery.jpacrud.entities.Person;
import com.skilldistillery.jpacrud.options.Options;

@Controller
public class PersonController {

	@Autowired
	private PersonDAO personDao;

	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}
	@RequestMapping(path = "index.do")
	public String index2() {
		return "index";
	}

	@RequestMapping(path = "getPerson.do")
	public String show(Integer pid, Model model) {
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
	public String listAll(Model model) {
		List<Person> people = personDao.getAllPeople();
		model.addAttribute("people", people);
		return "person/results";
	}

	// delete
	@RequestMapping(path = "delete.do")
	public String delete(Integer pid, Model model) {
		boolean wasDeleted = personDao.delete(pid);
		model.addAttribute("wasDeleted", wasDeleted);
		return "person/deleted";
	}

	// to update page
	@RequestMapping(path = "update.do")
	public String update(Integer pid, Model model) {
		Person person = personDao.findById(pid);
		model.addAttribute("person", person);
		model.addAttribute("colorList", Options.getColorList());
		model.addAttribute("expressionList", Options.getExpressionList());
		return "person/update";
	}

	// from update page
	@RequestMapping(path = "updated.do", method = RequestMethod.POST)
	public String updated(Person person, Model model) {
		person = personDao.update(person.getId(), person);
		model.addAttribute("person", person);
		return "person/show";
	}
	
	@RequestMapping(path = "create.do")
	public String create(Person person, Model model) {
		person = personDao.create(person);
		model.addAttribute("person", person);
		return "person/show";
	}
	@RequestMapping(path = "/create")
	public String creator(Model model) {
		Person person = new Person();
		model.addAttribute("person", person);
		model.addAttribute("colorList", Options.getColorList());
		model.addAttribute("expressionList", Options.getExpressionList());
		return "person/create";
	}

//	@RequestMapping(path = "create.do", method = RequestMethod.POST)
//	public String newPerson(Person person, RedirectAttributes redir) {
//
//		personDao.create(person);
//		redir.addFlashAttribute("person", person);
//		return "redirect:personAdded.do";
//	}

	/*
	 * @RequestMapping(path = "NewState.do", method = RequestMethod.POST) public
	 * String newState(State state, RedirectAttributes redir) {
	 * stateDAO.addState(state); redir.addFlashAttribute("state", state); return
	 * "redirect:stateAdded.do"; }
	 * 
	 * // Note: This does not use an InternalResourceViewResolver
	 * 
	 * @RequestMapping("stateAdded.do") public ModelAndView stateAdded() {
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("WEB-INF/result.jsp");
	 * return mv; }
	 */
}
