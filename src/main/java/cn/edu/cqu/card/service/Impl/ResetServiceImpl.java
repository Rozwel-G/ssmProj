package cn.edu.cqu.card.service.Impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.ResetService;

@Service
public class ResetServiceImpl implements ResetService {

	@Autowired
	private UserMapper userMapper;
	@Override
	public boolean check(String oldPassword, User user) {
		
		if(oldPassword.equals(user.getUserPassword()))
		{
			return true;
		}
		else {
			return false;
		}
		
	}
	@Override
	public int reset(String firstNewPassword, User user) {
		
		user.setUserPassword(firstNewPassword);
		int i = userMapper.updateByPrimaryKey(user);
		
		return i;
	}

}
