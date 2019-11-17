package com.agil.dao;

import java.util.List;

import com.agil.entities.Evaluation;

public interface EvaluationDao {
	
	public	List<Evaluation> listEvaluation();
	public  void addEvaluation(Evaluation e);

}
