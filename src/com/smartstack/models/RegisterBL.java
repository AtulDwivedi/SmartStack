package com.smartstack.models;

import java.util.List;

import org.apache.log4j.Logger;

import com.smartstack.dto.Question;
import com.smartstack.dto.User;
import com.smartstack.service.UserService;

public class RegisterBL {
	
	Logger logger = Logger.getLogger(RegisterBL.class);
	
	private UserService userService;
	private UserService userServe;
	
	
	public RegisterBL() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserService getUserServe() {
		return userServe;
	}


	public void setUserServe(UserService userServe) {
		this.userServe = userServe;
	}



	public UserService getUserService() {
		return userService;
	}



	public void setUserService(UserService userService) {
		this.userService = userService;
	}



	/*public User login(String email, String password){
		return userService.login(email, password);
	}*/
	
	public boolean loginReal(String email, String password){
		logger.info("Inside loginReal");
		return userServe.loginReal(email, password);
	}
	
	/*public boolean registerUser(User user)
	{   
		userService.createAccount(user);
         return true;
		
	}
	*/
	public User update(User user){
		return userServe.update(user);
	}
	
	public User createAccount(User user){
		return userServe.createRealAccount(user);
	}
	
	public User getUserById(String emailId){
		return userServe.getUserByEmailId(emailId);
	}
	
	public List<Question> getQuestionByDefault(){
		return userServe.getQuestionByDefault();
	}
	
	
	//Ajax
	public boolean getEmailId(String emailId){
		return	userServe.getEmailId(emailId);
	}

	public int getQuesRowCount() {
		// TODO Auto-generated method stub
		return userServe.getQuesRowCount();
	}

	public int setVote(int i, long quesId) {
		// TODO Auto-generated method stub
		return userServe.setVote(i, quesId);
	}

	public int setGetSolVote(int i, long q) {
		// TODO Auto-generated method stub
		return userServe.setGetSolVote(i, q);
	}

	public User addToMyFavQues(long q, User user) {
		// TODO Auto-generated method stub
		return userServe.addToMyFavQues(q, user);
	}
}
