package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.User;

public interface UserLoginService {

	User Login(String telephone, String password);
	
}