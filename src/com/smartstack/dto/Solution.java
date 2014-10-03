package com.smartstack.dto;

import java.util.Date;


public class Solution {

	private long solId;
	private long quesId;
	private long userId;
	private String name;
	private String solution;
	private Date date;
	private int votes;

	public Solution() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Solution(long quesId, long userId, String name,
			String solution, Date date, int votes) {
		super();
		this.quesId = quesId;
		this.userId = userId;
		this.name = name;
		this.solution = solution;
		this.date = date;
		this.votes = votes;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getSolId() {
		return solId;
	}

	public void setSolId(long solId) {
		this.solId = solId;
	}

	public long getQuesId() {
		return quesId;
	}

	public void setQuesId(long quesId) {
		this.quesId = quesId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getSolution() {
		return solution;
	}

	public void setSolution(String solution) {
		this.solution = solution;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getVotes() {
		return votes;
	}
	public void setVotes(int votes) {
		this.votes = votes;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SolutionReal [solId=");
		builder.append(solId);
		builder.append(", quesId=");
		builder.append(quesId);
		builder.append(", userId=");
		builder.append(userId);
		builder.append(", name=");
		builder.append(name);
		builder.append(", solution=");
		builder.append(solution);
		builder.append(", date=");
		builder.append(date);
		builder.append(", votes=");
		builder.append(votes);
		builder.append("]");
		return builder.toString();
	}
}
