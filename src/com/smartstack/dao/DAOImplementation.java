package com.smartstack.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.smartstack.dto.Badges;
import com.smartstack.dto.Login;
import com.smartstack.dto.Question;
import com.smartstack.dto.Solution;
import com.smartstack.dto.User;

public class DAOImplementation extends HibernateDaoSupport implements DAOService {
	
	static boolean flag=true;
	
	
	public DAOImplementation() {
		super();
		// TODO Auto-generated constructor stub
	
	}
	
	void insertDefaultQuestions(long userId){
		List<Question> quesList = new ArrayList<Question>();
		List<Solution> sol = new ArrayList<Solution>();
		List<String> tagList = new ArrayList<String>();
		tagList.add("Java"); tagList.add("JEE");
		for(int i=0; i<25; i++){
			quesList.add(new Question(userId, "Admin", (int)(Math.random()*100), (int)(Math.random()*100), "This is question title.", "This is question explaination.", tagList, new Date()));
			//sol.add(new Solution(1000+i, 100+i, userId, "This is solution.", (new Date()).toString(), (int)(Math.random()*100), (int)(Math.random()*100)));
			//sol.add(new Solution(2000+i, 100+i, userId, "This is solution.", (new Date()).toString(), (int)(Math.random()*100), (int)(Math.random()*100)));	
		}
		getHibernateTemplate().saveOrUpdateAll(quesList);
		getHibernateTemplate().saveOrUpdateAll(sol);
		}
	

	@Override
	public User createAccount(User user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(user);
		getHibernateTemplate().save(new Login(user.getEmailId(), user.getPassword()));
		return getUserByEmailId(user.getEmailId());
	}

	@Override
	public boolean checkLogin(String email, String password) {
		logger.info("Inside checkLogin");
		System.out.println(this.getClass().getSimpleName()+" EmailId: "+email+" Pass: "+password);
		List<Login> login =getHibernateTemplate().find("from Login l where l.emailId=? and l.password=?",email, password);
		if(login.size() > 0)
			return true;
		return false;
	}

	@Override
	public User getUserByEmailId(String emailId) {
		// TODO Auto-generated method stub
		List<User> user = (List<User>) getHibernateTemplate().find("from User u where u.emailId=?",emailId);
		return user.get(0);
	}

	@Override
	public boolean insertQuestion(Question question) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().save(question) != null;
	}

	@Override
	public List<Question> getQuestionByDefault() {
		// TODO Auto-generated method stub
		if(flag){
			Set<Badges> badges = new HashSet<Badges>(); 
			badges.add(new Badges(2, "Premium")); badges.add(new Badges(1, "Super"));
			List<Long> favList = new ArrayList<Long>(); 
			favList.add((long) 1); favList.add((long) 2);
			getHibernateTemplate().save(new User("admin@admin.com", "Admin", "admin", (new Date()).toString(), badges, favList));
			getHibernateTemplate().save(new Login("admin@admin.com", "admin"));
			insertDefaultQuestions(1);
		
			flag=false;
			System.out.println(this.getClass().getSimpleName()+": "+flag);
			return (List<Question>) getHibernateTemplate().find("from Question");
		}
		else{
			return (List<Question>)getHibernateTemplate().find("from Question");
		}
		
	}

	@Override
	public boolean getEmailId(String emailId) {
		// TODO Auto-generated method stub
		System.out.println(emailId);
		List<User> list=getHibernateTemplate().find("from User u where u.emailId=?", emailId);
		return list.size() > 0 ? true:false;
	}

	@Override
	public boolean setMyQuestion(Question myQues) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(myQues);
		return true;
	}

	@Override
	public List<Question> getMyQuestions(long userId) {
		// TODO Auto-generated method stub
		return (List<Question>) getHibernateTemplate().find("from Question q where q.userId=?", userId);
	}

	@Override
	public Question getQuestionById(long quesId) {
		// TODO Auto-generated method stub
		List<Question> myQues = getHibernateTemplate().find("from Question m where quesId=?", quesId);
		return myQues.get(0);
	}

	@Override
	public List<Solution> setMySolution(Solution solObj) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(solObj);
		List<Solution> list = getHibernateTemplate().find("from Solution s where s.quesId=?", solObj.getQuesId());
		return list;
	}

	@Override
	public List<Solution> getSolutionsByQuesID(long qId) {
		// TODO Auto-generated method stub
		List<Solution> list=(List<Solution>)getHibernateTemplate().find("from Solution where quesId=?", qId);
		return list;
	}

	@Override
	public User update(User user) {
		// TODO Auto-generated method stub
		//User oldUser= getUserByEmailId(user.getEmailId());
		System.out.println(user.getName());
		SessionFactory sf = getHibernateTemplate().getSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("update User set name=:name, emailId=:emailId, dob=:dob where userId=:userId");
		q.setString("name", user.getName());
		q.setString("emailId", user.getEmailId());
		q.setString("dob", user.getDob());
		q.setLong("userId", user.getUserId());
		q.executeUpdate();
		 //getHibernateTemplate().update("User", user);
		 //List<User> u = getHibernateTemplate().find("from User where userId=?", user.getUserId());
		return getUserByEmailId(user.getEmailId());
	}

	@Override
	public int getQuesRowCount() {
		// TODO Auto-generated method stub
		if(!flag){
			return DataAccessUtils.intResult(getHibernateTemplate().find("select count(*) from Question"));
		}
		else{
			return 0;
		}
	}

	@Override
	public int setVote(int i, long quesId) {
		// TODO Auto-generated method stub
		SessionFactory sf = getHibernateTemplate().getSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("update Question set votes=votes+:i where quesId=:quesId");
		q.setInteger("i", i);
		q.setLong("quesId", quesId);
		q.executeUpdate();
		return DataAccessUtils.intResult(getHibernateTemplate().find("select votes from Question where quesId="+quesId));
	}

	@Override
	public int setGetSolVote(int i, long solId) {
		// TODO Auto-generated method stub
		SessionFactory sf = getHibernateTemplate().getSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("update Solution set votes=votes+:i where solId=:solId");
		q.setInteger("i", i);
		q.setLong("solId", solId);
		q.executeUpdate();
		return DataAccessUtils.intResult(getHibernateTemplate().find("select votes from Solution where solId="+solId));
	}

	@Override
	public List<Solution> getMySolutions(long userId) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find("from Solution where userId=?", userId);
	}

	@Override
	public List<Question> getMyFavQuestions(List<Long> favQues) {
		// TODO Auto-generated method stub
		List<Question> list = new ArrayList<Question>();
		for(int i=0; i<favQues.size(); i++){
			List<Question> list2 = getHibernateTemplate().find("from Question where quesId=?", favQues.get(i));
		list.add(list2.get(0));
		}
		return list;
			}

	@Override
	public User addToMyFavQues(long q, User user) {
		// TODO Auto-generated method stub
		List<Long> favQuesList = user.getFavQues();
		favQuesList.add((Long)q);
		getHibernateTemplate().update(user);
		return user;
	}
	
}
