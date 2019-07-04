package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserRegisterService;

@Service
public class UserRegisterServiceImpl implements UserRegisterService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User register(User user) {
		
		user.setUserBalance((float) 0.0);
		user.setUserScore(0);
		
		int cols = userMapper.insert(user);
		
		return user;
		
	}
}

	