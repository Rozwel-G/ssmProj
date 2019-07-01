package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User register(String password, String nickName, String userName, String userSex,
			String idType, String idNumber, String userPhone, String userEmail) {
		
		User user = new User();
		user.setUserPassword(password);
		user.setUserNickName(nickName);
		user.setUserName(userName);
		user.setUserSex(userSex);
		user.setUserIdType(idType);
		user.setUserIdNumber(idNumber);
		user.setUserPhone(userPhone);
		user.setUserEmail(userEmail);
		
		int cols = userMapper.insert(user);
		
		return user;
		
	}
}

	