/**
 * 
 */
package com.smartstack.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.smartstack.dto.Login;
import com.smartstack.dto.User;

/**
 * @author atdwivedi
 *
 */
public class UserServiceImpl extends HibernateDaoSupport implements UserService{

	/* (non-Javadoc)
	 * @see com.smartstack.dao.UserService#createAccount(com.smartstack.dto.User)
	 */
	@Override
	public User createAccount(User user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(user);
		getHibernateTemplate().save(new Login(user.getEmailId(), user.getPassword()));
		return getUserByEmailId(user.getEmailId());
	}

	/* (non-Javadoc)
	 * @see com.smartstack.dao.UserService#checkLogin(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean checkLogin(String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see com.smartstack.dao.UserService#getUserByEmailId(java.lang.String)
	 */
	@Override
	public User getUserByEmailId(String emailId) {
		// TODO Auto-generated method stub
		return null;
	}

}
