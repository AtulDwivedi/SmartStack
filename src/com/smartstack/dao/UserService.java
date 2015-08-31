/**
 * 
 */
package com.smartstack.dao;

import com.smartstack.dto.User;

/**
 * @author atdwivedi
 *
 */
public interface UserService extends DAOServices{

	User createAccount(User user);
	boolean checkLogin(String email, String password);
	User getUserByEmailId(String emailId);
}
