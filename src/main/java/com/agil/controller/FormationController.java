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

import com.agil.entities.Avis;
import com.agil.entities.AvisUtilisateur;
import com.agil.entities.Evaluation;
import com.agil.entities.Formation;
import com.agil.entities.Person;
import com.agil.entities.TestEvaluation;
import com.agil.service.AvisService;
import com.agil.service.EvaluationService;
import com.agil.service.FormationService;
import com.agil.service.PersonService;

@Controller
public class FormationController {
	
	private FormationService formationService;
	@Autowired(required=true)
	@Qualifier(value="formationService")
	public void setFormationService(FormationService fs) {
		this.formationService=fs;
	}
	
	private AvisService avisService;
	@Autowired(required=true)
	@Qualifier(value="avisService")
	public void setAvisService(AvisService as) {
		this.avisService=as;
	}
	
	private PersonService personService;
	
	@Autowired(required=true)
	@Qualifier(value="personService")
	public void setPersonService(PersonService ps) {
		this.personService=ps;
	}
	
	private EvaluationService evaluationService;
	@Autowired(required=true)
	@Qualifier(value="evaluationService")
	public void setEvaluationService(EvaluationService es) {
		this.evaluationService=es;
	}
	
	@RequestMapping(value="/nos-formations", method=RequestMethod.GET)
	public String listFormations(Model model) {
		model.addAttribute("listFormations",this.formationService.listFormations());
		return "nos-formations";
	}
	
	@RequestMapping(value="/Les Fondements du Management", method=RequestMethod.GET)
	public String formation(Model model, HttpSession session) {
		Formation f = this.formationService.getFormationByTitre("Les Fondements du Management");
		f.setNbVisit(f.getNbVisit()+1);
		this.formationService.updateFormation(f);
		model.addAttribute("listFormations",this.formationService.listFormations());
		model.addAttribute("avis",new AvisUtilisateur());
		session.setAttribute("formation", "Les Fondements du Management");
		return "Les_Fondements_du_Management";
	}
	
	@RequestMapping(value="/Developpement 2.0", method=RequestMethod.GET)
	public String formation1(Model model, HttpSession session) {
		Formation f = this.formationService.getFormationByTitre("Developpement 2.0");
		f.setNbVisit(f.getNbVisit()+1);
		this.formationService.updateFormation(f);
		model.addAttribute("listFormations",this.formationService.listFormations());
		model.addAttribute("avis",new AvisUtilisateur());
		session.setAttribute("formation", "Developpement 2.0");
		return "DEV";
	}
	
	@RequestMapping(value="/formations", method=RequestMethod.GET)
	public String listFormation(Model model) {
		model.addAttribute("formation",new Formation());
		model.addAttribute("listFormations",this.formationService.listFormations());
		return "formation";
	}
	
	@RequestMapping(value= "/formation/add", method = RequestMethod.POST)
	public String addPerson( @ModelAttribute("formation") Formation f, HttpSession session, Model model) {
		Formation nf = new Formation();
		String redirect ="";
		try {
		 nf = this.formationService.getFormationByTitre(f.getTitre());
		}
		catch (Exception ex ) {
			nf = null;
		}
		if (nf!=null) {
			model.addAttribute("formation",new Formation());
			model.addAttribute("listFormations",this.formationService.listFormations());
			model.addAttribute("message","ce TITRE existe dèja dans une autre formation.");
			redirect = "formation";
		}
		else {
		if(f.getIdFormation() == 0){
			//new person, add it
			this.formationService.addFormation(f);
		}else{
			Formation form = (Formation) session.getAttribute("f");
			if (f.getTitre()==form.getTitre()) {
			//existing person, call update
			this.formationService.updateFormation(f);
			}
			else {
				this.formationService.removeFormation(form.getTitre());
				this.formationService.addFormation(f);
			}
		}
		redirect = "redirect:/formations";
		}
		
		return redirect;		
	}
	
	@RequestMapping(value="/removeFormation/{titre}")
    public String removePerson(@PathVariable("titre") String titre){
		
        this.formationService.removeFormation(titre);
        return "redirect:/formations";
    }
	
	@RequestMapping(value="/edit{titre}")
    public String editPerson(@PathVariable("titre") String titre, Model model, HttpSession session){		
        model.addAttribute("formation", this.formationService.getFormationByTitre(titre));
        model.addAttribute("listFormations", this.formationService.listFormations());
        session.setAttribute("f", this.formationService.getFormationByTitre(titre));
        return "formation";
    }
	
	@RequestMapping(value= "/avis/add")
	public String addAvis( @ModelAttribute("avis") AvisUtilisateur avis, HttpSession session) { 
		
			Avis a = new Avis();			
			String un = (String) session.getAttribute("person");			
			Person s= (Person) personService.getPersonByUsername(un);	
			a.setUsername(s);
			String f= (String) session.getAttribute("formation");
			a.setFormation(f);
			a.setQ1(avis.getQ1());
			a.setQ2(avis.getQ2());
			a.setQ3(avis.getQ3());
			a.setQ4(avis.getQ4());
			float m = (avis.getQ1() + avis.getQ2() + avis.getQ3() + avis.getQ4())/4;
			a.setMoyenne(m);
			this.avisService.addAvis(a);
			String redirect = "redirect:/"+f;
		
		return redirect;

		
	}
	
	@RequestMapping(value="/test_evaluation", method=RequestMethod.GET)
	public String test_evaluation(Model model) {
		model.addAttribute("test",new TestEvaluation());
		return "test-evaluation";
	}
	
	@RequestMapping(value= "/addTest")
	public String addTest( @ModelAttribute("test") TestEvaluation test, HttpSession session,Model model) {
		float percent=0;
		if (test.getQ1()==1)
		{
			percent += 10;
		}
		if (test.getQ2()==1)
		{
			percent += 10;
		}
		if (test.getQ3()==1)
		{
			percent += 10;
		}
		if (test.getQ4()==1)
		{
			percent += 10;
		}
		if (test.getQ5()==1)
		{
			percent += 10;
		}
		if (test.getQ6()==1)
		{
			percent += 10;
		}
		if (test.getQ7()==1)
		{
			percent += 10;
		}
		if (test.getQ8()==1)
		{
			percent += 10;
		}
		if (test.getQ9()==1)
		{
			percent += 10;
		}
		if (test.getQ10()==1)
		{
			percent += 10;
		}
		Evaluation e = new Evaluation();
		e.setUsername(this.personService.getPersonByUsername((String) session.getAttribute("person")));
		e.setTitre(this.formationService.getFormationByTitre((String) session.getAttribute("formation")));
		e.setMoy(percent);
		this.evaluationService.addEvaluation(e);
		model.addAttribute("test",new TestEvaluation());
		model.addAttribute("percent",percent);
		return "test-evaluation";
		
	}

}
