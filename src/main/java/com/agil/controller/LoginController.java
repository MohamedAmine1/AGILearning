package com.agil.controller;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.agil.entities.Admin;
import com.agil.entities.AdminLogin;
import com.agil.entities.ForgetPassword;
import com.agil.entities.Formation;
import com.agil.entities.Inscription;
import com.agil.entities.Login;
import com.agil.entities.Person;
import com.agil.entities.Visit;
import com.agil.service.AdminService;
import com.agil.service.AvisService;
import com.agil.service.ContactService;
import com.agil.service.FormationService;
import com.agil.service.PersonService;
import com.agil.service.VisitService;

@Controller
public class LoginController {

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
	
	private FormationService formationService;
	@Autowired(required=true)
	@Qualifier(value="formationService")
	public void setFormationService(FormationService fs) {
		this.formationService=fs;
	}
	
	private VisitService visitService;
	@Autowired(required=true)
	@Qualifier(value="visitService")
	public void setVisitService(VisitService vs) {
		this.visitService=vs;
	}
    private AvisService avisService;
	
	@Autowired(required=true)
	@Qualifier(value="avisService")
	public void setAvisService(AvisService ks) {
		this.avisService=ks;
	}
    private ContactService contactService;
	
	@Autowired(required=true)
	@Qualifier(value="contactService")
	public void setContactService(ContactService cs) {
		this.contactService=cs;
	}
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String listAdmins(Model model) {
		model.addAttribute("formation",new Formation());
		model.addAttribute("listFormations",this.formationService.listFormations());
		return "home";
	}
	@RequestMapping(value="/home_admin", method=RequestMethod.GET)
	public String home_admin(Model model) {
		model.addAttribute("users",this.personService.listPersons().size());
		model.addAttribute("formations",this.formationService.listFormations().size());
		model.addAttribute("contacts",this.contactService.listContacts().size());
		model.addAttribute("avis",this.avisService.listAvis().size());
		model.addAttribute("max",this.visitService.MaxVisit());
		model.addAttribute("maxFormation",this.formationService.maxNbVisit());
		model.addAttribute("firstFormation",this.formationService.FirstFormation());
		return "home_admin";
	}
	
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("log", new Login(null, null));
		model.addAttribute("AdminLog", new AdminLogin(null, null));
		model.addAttribute("forget", new ForgetPassword(null, null));
		return "index";
	}
	
	@RequestMapping(value="/try_log", method=RequestMethod.POST)
	public String try_log(@ModelAttribute("log") Login log,Model model, HttpSession session) {
		String test = "";
		List<Person> p = this.personService.login(log.getUsername(),log.getPassword());
		if (p.size() > 0) {
			List<Visit> lv = this.visitService.getVisitByUsername(log.getUsername());
			if (lv.size()==0) {
			Visit v = new Visit();
			v.setUsername(log.getUsername());
			v.setNbVisit(1);
			v.setPerson(p.get(0));
			this.visitService.addVisit(v);
			}
			else {
				Visit v = new Visit();
				v.setUsername(log.getUsername());
				v.setNbVisit(lv.get(0).getNbVisit()+1);
				v.setPerson(p.get(0));
				this.visitService.updateVisit(v);
			}
			session.setAttribute("person", log.getUsername());
			model.addAttribute("listFormations",this.formationService.listFormations());			
			test = "redirect:/home";
		}
		else {
			model.addAttribute("message","vérifier votre USERNAME ou PASSWORD");
			model.addAttribute("AdminLog", new AdminLogin(null, null));
			model.addAttribute("forget", new ForgetPassword(null, null));
			test = "index";			
		}
		return test;
	}
	
	@RequestMapping(value="/admin_try_log", method=RequestMethod.POST)
	public String try_log(@ModelAttribute("AdminLog") AdminLogin adminLog,Model model) {
		String test = "";
		List<Admin> a = this.adminService.login(adminLog.getUsernameAdmin(),adminLog.getPasswordAdmin());
		if (a.size() > 0) {
			test = "redirect:/home_admin";
		}
		else {
			model.addAttribute("message_admin","vérifier votre USERNAME ou PASSWORD");
			model.addAttribute("log", new Login(null, null));
			model.addAttribute("forget", new ForgetPassword(null, null));
			test = "index";			
		}
		return test;
	}
	
	@RequestMapping(value="/inscription", method=RequestMethod.GET)
	public String inscritption(Model model) {
		model.addAttribute("inscrit",new Inscription(null,null,null,null,null,null));
		return "inscription";
	}
	
	@RequestMapping(value="/inscription/try_ins", method=RequestMethod.POST)
	public String inscrit(@ModelAttribute("inscrit") Inscription inscrit,Model model) {
		
		String test="";
		Person p;
		try
		{
			p = this.personService.getPersonByUsername(inscrit.getUsername());
		}
		catch (Exception e)
		{
			p = null;
		}
		
		if (p!=null) {
			model.addAttribute("message","Le USERNAME saisie exist dèja");
			test = "inscription";
		}
		else {
			Person np = new Person();
			
			np.setUsername(inscrit.getUsername());
			np.setPassword(inscrit.getPassword());
			np.setNom(inscrit.getNom());
			np.setPrenom(inscrit.getPrenom());
			np.setMail(inscrit.getMail());
			this.personService.addPerson(np);
			test = "redirect:/index";
		}
			
		return test;
	}
	
	@RequestMapping(value="/index/forget_password", method=RequestMethod.POST)
	public String Forget(@ModelAttribute("forget") ForgetPassword fp, Model model) {
		List<Person> lp = this.personService.forget(fp.getUsername(),fp.getMail());
		String test ="";
		if (lp.size() > 0 ) {
			String host="smtp.gmail.com";
			String from="AGIL.Learning@gmail.com";
			String pwd="don123456" ;
			String to=fp.getMail() ;
			Transport t = null;
			Properties props = System.getProperties();
			props.put("mail.smtp.host", host);
			Session session = Session.getDefaultInstance(props, null);
			MimeMessage msg = new MimeMessage(session);
			try {
				msg.setFrom(new InternetAddress(from));
				msg.addRecipients(Message.RecipientType.TO,to);
				msg.setSubject("Vous avez oublier votre password");
				msg.setText("Votre Password est : "+lp.get(0).getPassword()+" et pour le changer vous pouvez contacter nos administrateurs");
				t = session.getTransport("smtps");
				t.connect(host,from,pwd);
				t.sendMessage(msg, msg.getAllRecipients());
			}
			catch (Exception ex ) {ex.printStackTrace();}
			test = "redirect:/index";
		}
		else {
			model.addAttribute("message","vérifier votre USERNAME ou E-mail et refaire l'action");
			model.addAttribute("AdminLog", new AdminLogin(null, null));
			model.addAttribute("log", new Login(null, null));
			test = "index";
		}
		return test;
		
	}

}
