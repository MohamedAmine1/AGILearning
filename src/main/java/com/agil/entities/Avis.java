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
@Table(name = "avis")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Avis.findAll", query = "SELECT a FROM Avis a"),
    @NamedQuery(name = "Avis.findByIdAvis", query = "SELECT a FROM Avis a WHERE a.idAvis = :idAvis"),
    @NamedQuery(name = "Avis.findByFormation", query = "SELECT a FROM Avis a WHERE a.formation = :formation"),
    @NamedQuery(name = "Avis.findByQ1", query = "SELECT a FROM Avis a WHERE a.q1 = :q1"),
    @NamedQuery(name = "Avis.findByQ2", query = "SELECT a FROM Avis a WHERE a.q2 = :q2"),
    @NamedQuery(name = "Avis.findByQ3", query = "SELECT a FROM Avis a WHERE a.q3 = :q3"),
    @NamedQuery(name = "Avis.findByQ4", query = "SELECT a FROM Avis a WHERE a.q4 = :q4"),
    @NamedQuery(name = "Avis.findByMoyenne", query = "SELECT a FROM Avis a WHERE a.moyenne = :moyenne")})
public class Avis implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_avis")
    private Integer idAvis;
    @Basic(optional = false)
    @Column(name = "formation")
    private String formation;
    @Basic(optional = false)
    @Column(name = "q1")
    private int q1;
    @Basic(optional = false)
    @Column(name = "q2")
    private int q2;
    @Basic(optional = false)
    @Column(name = "q3")
    private int q3;
    @Basic(optional = false)
    @Column(name = "q4")
    private int q4;
    @Basic(optional = false)
    @Column(name = "moyenne")
    private float moyenne;
    @JoinColumn(name = "username", referencedColumnName = "username")
    @ManyToOne(optional = false)
    private Person username;

    public Avis() {
    }

    public Avis(Integer idAvis) {
        this.idAvis = idAvis;
    }

    public Avis(Integer idAvis, String formation, int q1, int q2, int q3, int q4, float moyenne) {
        this.idAvis = idAvis;
        this.formation = formation;
        this.q1 = q1;
        this.q2 = q2;
        this.q3 = q3;
        this.q4 = q4;
        this.moyenne = moyenne;
    }

    public Integer getIdAvis() {
        return idAvis;
    }

    public void setIdAvis(Integer idAvis) {
        this.idAvis = idAvis;
    }

    public String getFormation() {
        return formation;
    }

    public void setFormation(String formation) {
        this.formation = formation;
    }

    public int getQ1() {
        return q1;
    }

    public void setQ1(int q1) {
        this.q1 = q1;
    }

    public int getQ2() {
        return q2;
    }

    public void setQ2(int q2) {
        this.q2 = q2;
    }

    public int getQ3() {
        return q3;
    }

    public void setQ3(int q3) {
        this.q3 = q3;
    }

    public int getQ4() {
        return q4;
    }

    public void setQ4(int q4) {
        this.q4 = q4;
    }

    public float getMoyenne() {
        return moyenne;
    }

    public void setMoyenne(float moyenne) {
        this.moyenne = moyenne;
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
        hash += (idAvis != null ? idAvis.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Avis)) {
            return false;
        }
        Avis other = (Avis) object;
        if ((this.idAvis == null && other.idAvis != null) || (this.idAvis != null && !this.idAvis.equals(other.idAvis))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "lamari.agil.Avis[ idAvis=" + idAvis + " ]";
    }
    
}
