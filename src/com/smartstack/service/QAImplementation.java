package com.smartstack.service;

import java.util.List;

import com.smartstack.dao.DAOService;
import com.smartstack.dto.Question;
import com.smartstack.dto.Solution;

public class QAImplementation implements QAService {
	
	private DAOService daoServe;
	
	public QAImplementation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DAOService getDaoServe() {
		return daoServe;
	}

	public void setDaoServe(DAOService daoServe) {
		this.daoServe = daoServe;
	}


	static int count=0;
	

	@Override
	public List<Question> getMyQuestions(long userId) {
		// TODO Auto-generated method stub
		return daoServe.getMyQuestions(userId);
	}

	@Override
	public boolean insertQuestion(Question question) {
		// TODO Auto-generated method stub
		return daoServe.insertQuestion(question);
	}

	@Override
	public boolean setMyQuestion(Question myQues) {
		// TODO Auto-generated method stub
		return daoServe.setMyQuestion(myQues);
	}

	@Override
	public Question getQuestionById(long quesId) {
		// TODO Auto-generated method stub
		return daoServe.getQuestionById(quesId);
	}

	@Override
	public List<Solution> setMySolution(Solution solObj) {
		// TODO Auto-generated method stub
		return daoServe.setMySolution(solObj);
	}

	@Override
	public List<Solution> getSolutionsByQuesID(long qId) {
		// TODO Auto-generated method stub
		return daoServe.getSolutionsByQuesID(qId);
	}

	@Override
	public List<Solution> getMySolutions(long userId) {
		// TODO Auto-generated method stub
		return daoServe.getMySolutions(userId);
	}

	@Override
	public List<Question> getMyFavQuestions(List<Long> favQues) {
		// TODO Auto-generated method stub
		return daoServe.getMyFavQuestions(favQues);
	}
}
