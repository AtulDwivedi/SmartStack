package com.smartstack.dto;


public class Badges {

	private int badgeId;
	private String badgeName;
	
	public Badges() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Badges(int badgeId, String badgeName) {
		super();
		this.badgeId = badgeId;
		this.badgeName = badgeName;
	}
	
	public int getBadgeId() {
		return badgeId;
	}
	
	public void setBadgeId(int badgeId) {
		this.badgeId = badgeId;
	}
	
	public String getBadgeName() {
		return badgeName;
	}
	
	public void setBadgeName(String badgeName) {
		this.badgeName = badgeName;
	}
}
