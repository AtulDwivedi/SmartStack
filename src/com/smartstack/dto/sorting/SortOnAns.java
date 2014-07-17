package com.smartstack.dto.sorting;

import java.util.Comparator;

import com.smartstack.dto.Question;


public class SortOnAns implements Comparator<Question> {

	@Override
	public int compare(Question o1, Question o2) {
		// TODO Auto-generated method stub
		return  o1.getAns() - o2.getAns();
	}

	

}
