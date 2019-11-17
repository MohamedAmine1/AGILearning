/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agil.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author lamari
 */
@Entity
@Table(name = "contact")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Contact.findAll", query = "SELECT c FROM Contact c"),
    @NamedQuery(name = "Contact.findByIdContact", query = "SELECT c FROM Contact c WHERE c.idContact = :idContact"),
    @NamedQuery(name = "Contact.findByMail", query = "SELECT c FROM Contact c WHERE c.mail = :mail"),
    @NamedQuery(name = "Contact.findBySubject", query = "SELECT c FROM Contact c WHERE c.subject = :subject"),
    @NamedQuery(name = "Contact.findByText", query = "SELECT c FROM Contact c WHERE c.text = :text")})
public class Contact implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_contact")
    private Integer idContact;
    @Basic(optional = false)
    @Column(name = "mail")
    private String mail;
    @Basic(optional = false)
    @Column(name = "subject")
    private String subject;
    @Basic(optional = false)
    @Column(name = "text")
    private String text;
    @JoinColumn(name = "username", referencedColumnName = "username")
    @ManyToOne(optional = false)
    private Person username;

    public Contact() {
    }

    public Contact(Integer idContact) {
        this.idContact = idContact;
    }

    public Contact(Integer idContact, String mail, String subject, String text) {
        this.idContact = idContact;
        this.mail = mail;
        this.subject = subject;
        this.text = text;
    }

    public Integer getIdContact() {
        return idContact;
    }

    public void setIdContact(Integer idContact) {
        this.idContact = idContact;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Person getUsername() {
        return username;
    }

    public void setUsername(Person username) {
        this.username = username;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idContact != null ? idContact.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contact)) {
            return false;
        }
        Contact other = (Contact) object;
        if ((this.idContact == null && other.idContact != null) || (this.idContact != null && !this.idContact.equals(other.idContact))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return ""+idContact;
    }
    
}
