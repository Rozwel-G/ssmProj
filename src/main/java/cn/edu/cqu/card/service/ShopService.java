package cn.edu.cqu.card.service;

import cn.edu.cqu.card.model.Shop;

public interface ShopService {
	void updateShop(Shop shop);

	Shop showShop(Integer shopId);
}
