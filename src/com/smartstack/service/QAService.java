package com.smartstack.service;

import java.util.List;

import com.smartstack.dto.Question;
import com.smartstack.dto.Solution;

public interface QAService {
	//List<Question> getQuesList();
	
	//boolean setMyQuesList(MyQuestion myQues);
	//boolean setMySolList(Solution sol);
	
	List<Question> getMyQuestions(long userId);
	//MyQuestion getQuesById(String quesId);
	
	//List<Solution> getSolution(String userId, String quesId);
	
	//Real
	boolean insertQuestion(Question question);

	boolean setMyQuestion(Question myQues);

	Question getQuestionById(long quesId);

	List<Solution> setMySolution(Solution solObj);

	List<Solution> getSolutionsByQuesID(long qId);

	List<Solution> getMySolutions(long userId);

	List<Question> getMyFavQuestions(List<Long> favQues);

}
