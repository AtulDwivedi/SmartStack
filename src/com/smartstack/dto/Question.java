package com.smartstack.dto;

import java.util.Date;
import java.util.List;

public class Question implements Comparable<Question> {
	
	private long quesId;
	private long userId;
	private String name;
	private int votes;
	private int ans;
	private String quesTitle;
	private String ques;
	private List<String> tagList;
	//private String tags;
	private Date date;
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
	public int getVotes() {
		return votes;
	}
	public void setVotes(int votes) {
		this.votes = votes;
	}
	public int getAns() {
		return ans;
	}
	public void setAns(int ans) {
		this.ans = ans;
	}
	public String getQuesTitle() {
		return quesTitle;
	}
	public void setQuesTitle(String quesTitle) {
		this.quesTitle = quesTitle;
	}
	public String getQues() {
		return ques;
	}
	public void setQues(String ques) {
		this.ques = ques;
	}
	
	public List<String> getTagList() {
		return tagList;
	}
	public void setTagList(List<String> tagList) {
		this.tagList = tagList;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Question(long userId, String name, int votes, int ans,
			String quesTitle, String ques, List<String> tagList, Date date) {
		super();
		this.userId = userId;
		this.name = name;
		this.votes = votes;
		this.ans = ans;
		this.quesTitle = quesTitle;
		this.ques = ques;
		this.tagList = tagList;
		this.date = date;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MyQuestionReal [quesId=");
		builder.append(quesId);
		builder.append(", userId=");
		builder.append(userId);
		builder.append(", name=");
		builder.append(name);
		builder.append(", votes=");
		builder.append(votes);
		builder.append(", ans=");
		builder.append(ans);
		builder.append(", quesTitle=");
		builder.append(quesTitle);
		builder.append(", ques=");
		builder.append(ques);
		builder.append(", tags=");
		builder.append(tagList);
		builder.append(", date=");
		builder.append(date);
		builder.append("]");
		return builder.toString();
	}
	@Override
	public int compareTo(Question o) {
		// TODO Auto-generated method stub
		//this.date.compareTo(o.getDate());
		return (int) (o.getQuesId() - this.quesId);
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ans;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((ques == null) ? 0 : ques.hashCode());
		result = prime * result + (int) (quesId ^ (quesId >>> 32));
		result = prime * result
				+ ((quesTitle == null) ? 0 : quesTitle.hashCode());
		result = prime * result + ((tagList == null) ? 0 : tagList.hashCode());
		result = prime * result + (int) (userId ^ (userId >>> 32));
		result = prime * result + votes;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Question other = (Question) obj;
		if (ans != other.ans)
			return false;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (ques == null) {
			if (other.ques != null)
				return false;
		} else if (!ques.equals(other.ques))
			return false;
		if (quesId != other.quesId)
			return false;
		if (quesTitle == null) {
			if (other.quesTitle != null)
				return false;
		} else if (!quesTitle.equals(other.quesTitle))
			return false;
		if (tagList == null) {
			if (other.tagList != null)
				return false;
		} else if (!tagList.equals(other.tagList))
			return false;
		if (userId != other.userId)
			return false;
		if (votes != other.votes)
			return false;
		return true;
	}
	
	
	
	
	
	
	
	

}
