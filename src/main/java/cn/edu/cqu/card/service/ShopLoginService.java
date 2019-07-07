package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.Staff;

public interface ShopLoginService {

	

	Staff login(String staffPhone, String staffPassword);
}