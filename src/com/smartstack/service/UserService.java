package com.smartstack.service;

import java.util.List;

import com.smartstack.dto.Question;
import com.smartstack.dto.User;

public interface UserService {
	
	//public boolean createAccount(User user);
	public User  createRealAccount(User user);
	
	//public User login(String email, String password);
	
	public boolean loginReal(String email, String password);
	
	public User update(User user);
	
	public User getUserByEmailId(String emailId);
	List<Question> getQuestionByDefault();
	
	//Ajax
	boolean getEmailId(String emailId);

	public int getQuesRowCount();

	public int setVote(int i, long quesId);

	public int setGetSolVote(int i, long q);

	public User addToMyFavQues(long q, User user);

}
