/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agil.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author lamari
 */
@Entity
@Table(name = "formation")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Formation.findAll", query = "SELECT f FROM Formation f"),
    @NamedQuery(name = "Formation.findByIdFormation", query = "SELECT f FROM Formation f WHERE f.idFormation = :idFormation"),
    @NamedQuery(name = "Formation.findByTitre", query = "SELECT f FROM Formation f WHERE f.titre = :titre"),
    @NamedQuery(name = "Formation.findByAuthor", query = "SELECT f FROM Formation f WHERE f.author = :author"),
    @NamedQuery(name = "Formation.findByDescription", query = "SELECT f FROM Formation f WHERE f.description = :description"),
    @NamedQuery(name = "Formation.findByNbVisit", query = "SELECT f FROM Formation f WHERE f.nbVisit = :nbVisit")})
public class Formation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id_formation")
    private int idFormation;
    @Id
    @Basic(optional = false)
    @Column(name = "titre")
    private String titre;
    @Basic(optional = false)
    @Column(name = "author")
    private String author;
    @Basic(optional = false)
    @Column(name = "description")
    private String description;
    @Basic(optional = false)
    @Column(name = "nb_visit")
    private int nbVisit;
    @Basic(optional = false)
    @Lob
    @Column(name = "src")
    private String src;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "titre")
    private Collection<Evaluation> evaluationCollection;

    public Formation() {
    }

    public Formation(String titre) {
        this.titre = titre;
    }

    public Formation(String titre, int idFormation, String author, String description, int nbVisit, String src) {
        this.titre = titre;
        this.idFormation = idFormation;
        this.author = author;
        this.description = description;
        this.nbVisit = nbVisit;
        this.src = src;
    }

    public int getIdFormation() {
        return idFormation;
    }

    public void setIdFormation(int idFormation) {
        this.idFormation = idFormation;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNbVisit() {
        return nbVisit;
    }

    public void setNbVisit(int nbVisit) {
        this.nbVisit = nbVisit;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    @XmlTransient
    public Collection<Evaluation> getEvaluationCollection() {
        return evaluationCollection;
    }

    public void setEvaluationCollection(Collection<Evaluation> evaluationCollection) {
        this.evaluationCollection = evaluationCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (titre != null ? titre.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Formation)) {
            return false;
        }
        Formation other = (Formation) object;
        if ((this.titre == null && other.titre != null) || (this.titre != null && !this.titre.equals(other.titre))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return titre;
    }
    
}
