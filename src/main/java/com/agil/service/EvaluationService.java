package com.agil.service;

import java.util.List;

import com.agil.entities.Evaluation;

public interface EvaluationService {
	
	public	List<Evaluation> listEvaluation();
	public  void addEvaluation(Evaluation e);

}
