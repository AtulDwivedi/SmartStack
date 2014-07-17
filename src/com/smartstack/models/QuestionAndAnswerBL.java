package com.smartstack.models;

import java.util.List;

import com.smartstack.dto.Question;
import com.smartstack.dto.Solution;
import com.smartstack.service.QAService;

public class QuestionAndAnswerBL {
	
	private QAService qaService;
	

	public QAService getQaService() {
		return qaService;
	}



	public void setQaService(QAService qaService) {
		this.qaService = qaService;
	}



	public QuestionAndAnswerBL() {
		super();
		// TODO Auto-generated constructor stub
	}



	public boolean setMyQuestion(Question myQues) {
		// TODO Auto-generated method stub
		return qaService.setMyQuestion(myQues);
	}



	public List<Question> getMyQuestions(long userId) {
		// TODO Auto-generated method stub
		return qaService.getMyQuestions(userId);
	}



	public Question getQuestionById(long quesId) {
		// TODO Auto-generated method stub
		return qaService.getQuestionById(quesId);
	}



	public List<Solution> setMySolution(Solution solObj) {
		// TODO Auto-generated method stub
		return qaService.setMySolution(solObj);
	}



	public List<Solution> getSolutionsByQuesID(long qId) {
		// TODO Auto-generated method stub
		return qaService.getSolutionsByQuesID(qId);
	}



	public List<Solution> getMySolutions(long userId) {
		// TODO Auto-generated method stub
		return qaService.getMySolutions(userId);
	}



	public List<Question> getMyFavQuestions(List<Long> favQues) {
		// TODO Auto-generated method stub
		return qaService.getMyFavQuestions(favQues);
	}

}
