package com.agil.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agil.dao.EvaluationDao;
import com.agil.entities.Evaluation;

@Service
public class EvaluationServiceImpl implements EvaluationService {
	
	private EvaluationDao evaluationDao;

	public void setEvaluationDao(EvaluationDao evaluationDao) {
		this.evaluationDao = evaluationDao;
	}

	@Transactional
	public List<Evaluation> listEvaluation() {
		
		return this.evaluationDao.listEvaluation();
	}

	@Transactional
	public void addEvaluation(Evaluation e) {
		this.evaluationDao.addEvaluation(e);
	}

}
