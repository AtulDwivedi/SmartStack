package com.smartstack.service;

import java.util.List;

import org.apache.log4j.Logger;

import com.smartstack.dao.DAOService;
import com.smartstack.dto.Question;
import com.smartstack.dto.User;

public class UserImplementation implements UserService {
	
	Logger logger = Logger.getLogger(UserImplementation.class);
     
	private DAOService daoServe;
	
	
	
	public DAOService getDaoServe() {
		return daoServe;
	}
	public void setDaoServe(DAOService daoServe) {
		this.daoServe = daoServe;
	}
	
	
	
	public UserImplementation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public  User createRealAccount(User user) {
		// TODO Auto-generated method stub
		return daoServe.createAccount(user);
	}
	@Override
	public boolean loginReal(String email, String password) {
		logger.info("Inside loginReal");
		return daoServe.checkLogin(email, password);
	}
	@Override
	public User getUserByEmailId(String emailId) {
		// TODO Auto-generated method stub
		return daoServe.getUserByEmailId(emailId);
	}
	@Override
	public List<Question> getQuestionByDefault() {
		// TODO Auto-generated method stub
		return daoServe.getQuestionByDefault();
	}
	@Override
	public boolean getEmailId(String emailId) {
		// TODO Auto-generated method stub
		return daoServe.getEmailId(emailId);
	}
	@Override
	public User update(User user) {
		// TODO Auto-generated method stub
		return daoServe.update(user);
	}
	@Override
	public int getQuesRowCount() {
		// TODO Auto-generated method stub
		return daoServe.getQuesRowCount();
	}
	@Override
	public int setVote(int i, long quesId) {
		// TODO Auto-generated method stub
		return daoServe.setVote(i, quesId);
	}
	@Override
	public int setGetSolVote(int i, long q) {
		// TODO Auto-generated method stub
		return daoServe.setGetSolVote(i, q);
	}
	@Override
	public User addToMyFavQues(long q, User user) {
		// TODO Auto-generated method stub
		return daoServe.addToMyFavQues(q, user);
	}

}
