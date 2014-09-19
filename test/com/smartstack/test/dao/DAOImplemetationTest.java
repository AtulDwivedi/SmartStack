/**
 * 
 */
package com.smartstack.test.dao;

import org.springframework.context.ApplicationContext;

import com.smartstack.dao.DAOImplementation;

/**
 * @author AtDwivedi
 *
 */
public class DAOImplemetationTest {
	public static void main(String[] args) {
		boolean flag = false;
//		ApplicationContext context =ApplicationContext.getApplicationContext("applicationContext.xml")
//				DAOImplementation daoImpl = (DAOImplementation)context.getBean("daoImp");
//		flag = daoImpl.checkLogin("admin@admin.com", "admin");
		if(flag){
			System.out.println("Pass");
		}
		else{
			System.out.println("fail");	
		}
	}

}
