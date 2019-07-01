package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.User;

public interface RegisterService {

	User register(String password, String nickName, String userName, String userSex, String idType, String idNumber,
			String userPhone, String userEmail);
}
