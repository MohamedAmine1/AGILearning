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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.agil.entities.Contact;
import com.agil.entities.Mail;
import com.agil.entities.Person;
import com.agil.service.ContactService;
import com.agil.service.PersonService;

@Controller
public class ContactController {
	
private ContactService contactService;
	
	@Autowired(required=true)
	@Qualifier(value="contactService")
	public void setContactService(ContactService cs) {
		this.contactService=cs;
	}
	
private PersonService personService;
	
	@Autowired(required=true)
	@Qualifier(value="personService")
	public void setPersonService(PersonService ps) {
		this.personService=ps;
	}
	
	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public String Contacter(Model model, HttpSession session) {
		model.addAttribute("contact", new Contact());
		String s= (String) session.getAttribute("person");
		model.addAttribute("username", s);
		return "contact";
	}
	
	@RequestMapping(value= "/contact/add", method = RequestMethod.POST)
	public String addContact( @ModelAttribute("contact") Contact c) { 
					
			this.contactService.addContact(c);
		
		return "redirect:/contact";		
	}
	
	@RequestMapping(value="/contacts", method=RequestMethod.GET)
	public String listAdmins(Model model) {
		model.addAttribute("mail",new Mail());
		model.addAttribute("listContacts",this.contactService.listContacts());
		return "contacts";
	}
	
	@RequestMapping(value="/send/mail", method=RequestMethod.POST)
	public String envoyer(@ModelAttribute("mail") Mail m, Model model, HttpSession sessionhttp) {
		String host="smtp.gmail.com";
		String from="AGIL.Learning@gmail.com" ;
		String pwd="don123456" ;
		String to=m.getTo() ;
		Transport t = null;
		Properties props = System.getProperties();
		props.put("mail.smtp.host", host);
		Session session = Session.getDefaultInstance(props, null);
		MimeMessage msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(from));
			msg.addRecipients(Message.RecipientType.TO,to);
			msg.setSubject(m.getSubject());
			msg.setText(m.getText());
			t = session.getTransport("smtps");
			t.connect(host,from,pwd);
			t.sendMessage(msg, msg.getAllRecipients());
		}
		catch (Exception ex ) {ex.printStackTrace();}
		Contact c =(Contact) sessionhttp.getAttribute("contact");
		if(c!=null) {
		this.contactService.removeContact(c.getIdContact());
		sessionhttp.setAttribute("contact",null);
		}
		return "redirect:/contacts";
		
	}
	
	@RequestMapping(value="/Send_to_all", method=RequestMethod.GET)
	public String sendToAll(Model model) {
		model.addAttribute("mail",new Mail());
		return "mail_form";
	}
	@RequestMapping(value="/send/mail/all", method=RequestMethod.POST)
	public String envoyerToAll(@ModelAttribute("mail") Mail m, Model model) {
		List<Person> lp = this.personService.listPersons();		
		String host="smtp.gmail.com";
		String from="AGIL.Learning@gmail.com" ;
		String pwd="don123456" ;
		Transport t = null;
		Properties props = System.getProperties();
		props.put("mail.smtp.host", host);
		Session session = Session.getDefaultInstance(props, null);
		MimeMessage msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(from));
			int i =0;
			for(i=0; i<lp.size(); i++) {
			msg.addRecipients(Message.RecipientType.TO,lp.get(i).getMail());	
			}
			msg.setSubject(m.getSubject());
			msg.setText(m.getText());
			t = session.getTransport("smtps");
			t.connect(host,from,pwd);
			t.sendMessage(msg, msg.getAllRecipients());
		}
		catch (Exception ex ) {ex.printStackTrace();}
		
		return "redirect:/Send_to_all";
		
	}
	
	@RequestMapping(value="/{idContact}", method=RequestMethod.GET)
	public String repondre( @PathVariable("idContact") int idContact, Model model, HttpSession session) {
		Contact c = this.contactService.getContactById(idContact);
		session.setAttribute("contact", c);
		model.addAttribute("sendTo",c.getMail());
		model.addAttribute("sub", c.getSubject());
		
		model.addAttribute("mail",new Mail());
		
		model.addAttribute("listContacts",this.contactService.listContacts());
		return "contacts";
		
	}
	
	
	@RequestMapping(value="/removeContact/{idContact}", method=RequestMethod.GET)
	public String remove(@PathVariable("idContact") int id) {
		this.contactService.removeContact(id);
		return "redirect:/contacts";
		
	}
	

}
