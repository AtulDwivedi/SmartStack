/**
 * 
 */
package com.smartstack.dto;

import java.util.Set;

/**
 * @author AtDwivedi
 *
 */
public class Tag {

	private long tagId;
	private String tag;
	private String tagDesc;
	private Set<Question> taggedInQuesId;

	/**
	 * 
	 */
	public Tag() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param tagId
	 * @param tag
	 * @param tagDesc
	 * @param taggedInQuesId
	 */
	public Tag(long tagId, String tag, String tagDesc,
			Set<Question> taggedInQuesId) {
		super();
		this.tagId = tagId;
		this.tag = tag;
		this.tagDesc = tagDesc;
		this.taggedInQuesId = taggedInQuesId;
	}

	/**
	 * @return the tagId
	 */
	public long getTagId() {
		return tagId;
	}

	/**
	 * @param tagId the tagId to set
	 */
	public void setTagId(long tagId) {
		this.tagId = tagId;
	}

	/**
	 * @return the tag
	 */
	public String getTag() {
		return tag;
	}

	/**
	 * @param tag the tag to set
	 */
	public void setTag(String tag) {
		this.tag = tag;
	}

	/**
	 * @return the tagDesc
	 */
	public String getTagDesc() {
		return tagDesc;
	}

	/**
	 * @param tagDesc the tagDesc to set
	 */
	public void setTagDesc(String tagDesc) {
		this.tagDesc = tagDesc;
	}

	/**
	 * @return the taggedInQuesId
	 */
	public Set<Question> getTaggedInQuesId() {
		return taggedInQuesId;
	}

	/**
	 * @param taggedInQuesId the taggedInQuesId to set
	 */
	public void setTaggedInQuesId(Set<Question> taggedInQuesId) {
		this.taggedInQuesId = taggedInQuesId;
	}



}
