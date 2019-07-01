package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.service.ShopService;
import cn.edu.cqu.card.mapper.ShopMapper;
import cn.edu.cqu.card.model.Shop;

@Service
public class ShopServiceImpl implements ShopService{
	@Autowired
	private ShopMapper shopMapper;
	
	
	@Override
	public void updateShop(Shop shop) {
		shopMapper.updateByPrimaryKey(shop);
	}


	@Override
	public Shop showShop(Integer shopId) {
		return shopMapper.selectByPrimaryKey(shopId);
	}
}
