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
@Table(name = "evaluation")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Evaluation.findAll", query = "SELECT e FROM Evaluation e"),
    @NamedQuery(name = "Evaluation.findByIdEva", query = "SELECT e FROM Evaluation e WHERE e.idEva = :idEva"),
    @NamedQuery(name = "Evaluation.findByMoy", query = "SELECT e FROM Evaluation e WHERE e.moy = :moy")})
public class Evaluation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_eva")
    private Integer idEva;
    @Basic(optional = false)
    @Column(name = "moy")
    private float moy;
    @JoinColumn(name = "username", referencedColumnName = "username")
    @ManyToOne(optional = false)
    private Person username;
    @JoinColumn(name = "titre", referencedColumnName = "titre")
    @ManyToOne(optional = false)
    private Formation titre;

    public Evaluation() {
    }

    public Evaluation(Integer idEva) {
        this.idEva = idEva;
    }

    public Evaluation(Integer idEva, float moy) {
        this.idEva = idEva;
        this.moy = moy;
    }

    public Integer getIdEva() {
        return idEva;
    }

    public void setIdEva(Integer idEva) {
        this.idEva = idEva;
    }

    public float getMoy() {
        return moy;
    }

    public void setMoy(float moy) {
        this.moy = moy;
    }

    public Person getUsername() {
        return username;
    }

    public void setUsername(Person username) {
        this.username = username;
    }

    public Formation getTitre() {
        return titre;
    }

    public void setTitre(Formation titre) {
        this.titre = titre;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEva != null ? idEva.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Evaluation)) {
            return false;
        }
        Evaluation other = (Evaluation) object;
        if ((this.idEva == null && other.idEva != null) || (this.idEva != null && !this.idEva.equals(other.idEva))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return ""+idEva +"";
    }
    
}
