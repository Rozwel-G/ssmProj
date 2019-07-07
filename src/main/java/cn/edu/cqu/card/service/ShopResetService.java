package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.Staff;

public interface ShopResetService {

	
	boolean check(String oldPassword, Staff staff);
	int reset(String firstNewPassword, Staff staff);
}