package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserLoginService;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	@Autowired
	private cn.edu.cqu.card.mapper.UserMapper userMapper;
	@Override
	public User Login(String telephone, String password) {
		
		User user = userMapper.selectByPrimaryKey(telephone);
		if(null == user || !password.equals(user.getUserPassword()))
		{
			throw new RuntimeException("用户名或者密码错误");
		}
		else 
		{
			return user;
		}
		
	}
	
	
	
}