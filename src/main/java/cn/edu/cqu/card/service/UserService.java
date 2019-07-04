package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.User;

public interface UserService {
	User showUser(String UserPhone);
	
	void updateUser(User user);
}
