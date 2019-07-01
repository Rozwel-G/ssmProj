package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.User;

public interface ResetService {

	
	
	boolean check(String oldPassword, User user);
	int reset(String firstNewPassword, User user);
	
}