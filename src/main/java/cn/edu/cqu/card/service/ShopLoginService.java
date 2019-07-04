package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.Shop;

public interface ShopLoginService {

	
	Shop login(String staffPhone, String staffPassword);
}