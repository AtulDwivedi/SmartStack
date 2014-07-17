package com.smartstack.dto;

import java.util.List;
import java.util.Set;

public class User {
	
	private long userId;
	private String emailId,name,password, dob;
	private Set<Badges> badges;
	private List<Long> favQues;
	
	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}


	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public Set<Badges> getBadges() {
		return badges;
	}

	public void setBadges(Set<Badges> badges) {
		this.badges = badges;
	}
	
	public List<Long> getFavQues() {
		return favQues;
	}

	public void setFavQues(List<Long> favQues) {
		this.favQues = favQues;
	}

	public User(String emailId, String name, String password, String dob, Set<Badges> badges, List<Long> favQues) {
		super();
		this.emailId = emailId;
		this.name = name;
		this.password = password;
		this.dob = dob;
		this.badges = badges;
		this.favQues = favQues;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(long userId, String emailId, String name, String password,
			String dob, Set<Badges> badges, List<Long> tagList, List<Long> favQues) {
		super();
		this.userId = userId;
		this.emailId = emailId;
		this.name = name;
		this.password = password;
		this.dob = dob;
		this.badges = badges;
		this.favQues = favQues;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [userId=");
		builder.append(userId);
		builder.append(", emailId=");
		builder.append(emailId);
		builder.append(", name=");
		builder.append(name);
		builder.append(", password=");
		builder.append(password);
		builder.append(", dob=");
		builder.append(dob);
		builder.append(", badges=");
		builder.append(badges);
		builder.append(", favQues=");
		builder.append(favQues);
		builder.append("]");
		return builder.toString();
	}

	
	
	

}
