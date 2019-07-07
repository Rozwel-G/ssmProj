package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User showUser(String UserPhone) {
		return userMapper.selectByPrimaryKey(UserPhone);
	}

	@Override
	public void updateUser(User user) {
		userMapper.updateByPrimaryKey(user);
	}

}
