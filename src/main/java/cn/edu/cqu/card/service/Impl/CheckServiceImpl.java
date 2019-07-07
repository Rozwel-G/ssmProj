package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.CheckService;
@Service
public class CheckServiceImpl implements CheckService {

	@Autowired
	private UserMapper userMapper;
	@Override
	public boolean check(String userPhone) {
		User user = userMapper.selectByPrimaryKey(userPhone);
		if (null != user) {
			return true;
		}
		return false;
	}

}
