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
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author lamari
 */
@Entity
@Table(name = "admin")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Admin.findAll", query = "SELECT a FROM Admin a"),
    @NamedQuery(name = "Admin.findByIdAdmin", query = "SELECT a FROM Admin a WHERE a.idAdmin = :idAdmin"),
    @NamedQuery(name = "Admin.findByUsernameAdmin", query = "SELECT a FROM Admin a WHERE a.usernameAdmin = :usernameAdmin"),
    @NamedQuery(name = "Admin.findByPasswordAdmin", query = "SELECT a FROM Admin a WHERE a.passwordAdmin = :passwordAdmin"),
    @NamedQuery(name = "Admin.findByNomAdmin", query = "SELECT a FROM Admin a WHERE a.nomAdmin = :nomAdmin"),
    @NamedQuery(name = "Admin.findByPrenomAdmin", query = "SELECT a FROM Admin a WHERE a.prenomAdmin = :prenomAdmin"),
    @NamedQuery(name = "Admin.findByMailAdmin", query = "SELECT a FROM Admin a WHERE a.mailAdmin = :mailAdmin")})
public class Admin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id_admin")
    private int idAdmin;
    @Id
    @Basic(optional = false)
    @Column(name = "username_admin")
    private String usernameAdmin;
    @Basic(optional = false)
    @Column(name = "password_admin")
    private String passwordAdmin;
    @Basic(optional = false)
    @Column(name = "nom_admin")
    private String nomAdmin;
    @Basic(optional = false)
    @Column(name = "prenom_admin")
    private String prenomAdmin;
    @Basic(optional = false)
    @Column(name = "mail_admin")
    private String mailAdmin;

    public Admin() {
    }

    public Admin(String usernameAdmin) {
        this.usernameAdmin = usernameAdmin;
    }

    public Admin(String usernameAdmin, int idAdmin, String passwordAdmin, String nomAdmin, String prenomAdmin, String mailAdmin) {
        this.usernameAdmin = usernameAdmin;
        this.idAdmin = idAdmin;
        this.passwordAdmin = passwordAdmin;
        this.nomAdmin = nomAdmin;
        this.prenomAdmin = prenomAdmin;
        this.mailAdmin = mailAdmin;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getUsernameAdmin() {
        return usernameAdmin;
    }

    public void setUsernameAdmin(String usernameAdmin) {
        this.usernameAdmin = usernameAdmin;
    }

    public String getPasswordAdmin() {
        return passwordAdmin;
    }

    public void setPasswordAdmin(String passwordAdmin) {
        this.passwordAdmin = passwordAdmin;
    }

    public String getNomAdmin() {
        return nomAdmin;
    }

    public void setNomAdmin(String nomAdmin) {
        this.nomAdmin = nomAdmin;
    }

    public String getPrenomAdmin() {
        return prenomAdmin;
    }

    public void setPrenomAdmin(String prenomAdmin) {
        this.prenomAdmin = prenomAdmin;
    }

    public String getMailAdmin() {
        return mailAdmin;
    }

    public void setMailAdmin(String mailAdmin) {
        this.mailAdmin = mailAdmin;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (usernameAdmin != null ? usernameAdmin.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Admin)) {
            return false;
        }
        Admin other = (Admin) object;
        if ((this.usernameAdmin == null && other.usernameAdmin != null) || (this.usernameAdmin != null && !this.usernameAdmin.equals(other.usernameAdmin))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "lamari.agil.Admin[ usernameAdmin=" + usernameAdmin + " ]";
    }
    
}
