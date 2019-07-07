package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.NotAuditedShopMapper;
import cn.edu.cqu.card.model.NotAuditedShop;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.ShopRegisterService;
@Service
public class ShopRegisterServiceImpl implements ShopRegisterService {

	@Autowired
	private NotAuditedShopMapper notAuditedShopMapper;
	
	@Override
	public NotAuditedShop register(NotAuditedShop notAuditedShop) {
		
		notAuditedShopMapper.insert(notAuditedShop);
		return notAuditedShop;
	}

}
