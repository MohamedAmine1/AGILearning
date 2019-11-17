package com.agil.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.agil.entities.Admin;
import com.agil.entities.Person;
import com.agil.service.AdminService;
import com.agil.service.AvisService;
import com.agil.service.EvaluationService;
import com.agil.service.PersonService;
import com.agil.service.VisitService;

@Controller
public class AdminController {
	
	private AdminService adminService;
	
	@Autowired(required=true)
	@Qualifier(value="adminService")
	public void setAdminService(AdminService as) {
		this.adminService=as;
	}
	
	private PersonService personService;
	
	@Autowired(required=true)
	@Qualifier(value="personService")
	public void setPersonService(PersonService ps) {
		this.personService=ps;
	}
	
    private AvisService avisService;
	
	@Autowired(required=true)
	@Qualifier(value="avisService")
	public void setAvisService(AvisService ks) {
		this.avisService=ks;
	}
	
    private EvaluationService evaluationService;
	
	@Autowired(required=true)
	@Qualifier(value="evaluationService")
	public void setEvaluationService(EvaluationService es) {
		this.evaluationService=es;
	}
	
    private VisitService visitService;
	
	@Autowired(required=true)
	@Qualifier(value="visitService")
	public void setVisitService(VisitService vs) {
		this.visitService=vs;
	}
	
	@RequestMapping(value="/users", method=RequestMethod.GET)
	public String table_person(Model model) {

		model.addAttribute("person",new Person());
		model.addAttribute("listPersons",this.personService.listPersons());
		
		
		
		return "users";
	}
	@RequestMapping(value="/admins", method=RequestMethod.GET)
	public String table_admin(Model model) {

		model.addAttribute("admin",new Admin());
		model.addAttribute("listAdmins",this.adminService.listAdmins());
		
		
		
		return "admins";
	}
	
	
	@RequestMapping(value= "/admin/add", method = RequestMethod.POST)
	public String addAdmin(@ModelAttribute("admin") Admin a,Model model){
		if(a.getIdAdmin() == 0){
			//new person, add it
			this.adminService.addAdmin(a);
		}
		
		return "redirect:/admins";
		
	}
	
	@RequestMapping(value= "/personAdd", method = RequestMethod.POST)
	public String addPerson( @ModelAttribute("person") Person p, HttpSession session, Model model) {
		Person np = new Person();
		String redirect ="";
		try {
		 np = this.personService.getPersonByUsername(p.getUsername());
		}
		catch (Exception ex ) {
			np = null;
		}
		if (np!=null) {
			model.addAttribute("person",new Person());
			model.addAttribute("listPersons",this.personService.listPersons());
			model.addAttribute("message_user","ce Username est utilisé dèja");
			redirect = "users";
		}
		else {
		if(p.getId() == 0){
			//new person, add it
			this.personService.addPerson(p);
		}else{
			Person per = (Person) session.getAttribute("p");
			if (p.getUsername()==per.getUsername()) {
			
			//existing person, call update
			this.personService.updatePerson(p);
			}
			else {
				this.personService.removePerson(per.getUsername());
				this.personService.addPerson(p);
			}
		}
		redirect = "redirect:/users";
		}
		return redirect;		
	}
	
	@RequestMapping("/remove/{username}")
    public String removePerson(@PathVariable("username") String username){
		
        this.personService.removePerson(username);
        return "redirect:/users";
    }
	
	@RequestMapping("/modif{username}")
    public String editPerson(@PathVariable("username") String username, Model model,HttpSession session){		
        model.addAttribute("person", this.personService.getPersonByUsername(username));
        model.addAttribute("listPersons", this.personService.listPersons());
        session.setAttribute("p", this.personService.getPersonByUsername(username));
        return "users";
    }
	
	@RequestMapping(value="/avis", method=RequestMethod.GET)
	public String table_avis(Model model) {

		model.addAttribute("listAvis",this.avisService.listAvis());
				
		return "avis";
	}
	
	@RequestMapping(value="/evaluation", method=RequestMethod.GET)
	public String table_evaluation(Model model) {

		model.addAttribute("listEvaluation",this.evaluationService.listEvaluation());
				
		return "evaluation";
	}
	
	@RequestMapping(value="/visits", method=RequestMethod.GET)
	public String table_visit(Model model) {

		model.addAttribute("listVisit",this.visitService.listVisits());
				
		return "visit";
	}
	

}
