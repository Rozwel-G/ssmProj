package cn.edu.cqu.card.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import cn.edu.cqu.card.mapper.NotAuditedShopMapper;
import cn.edu.cqu.card.mapper.ShopMapper;
import cn.edu.cqu.card.mapper.StaffMapper;
import cn.edu.cqu.card.model.NotAuditedShop;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.AuditService;
@Service
public class AuditServiceImpl implements AuditService {

	@Autowired
	private NotAuditedShopMapper notauditedmapper;
	@Autowired
	private ShopMapper shopmapper;
	@Autowired
	private StaffMapper staffMapper;
	@Override
	public int audit(int auditedId, String result) {
		// TODO Auto-generated method stub
		Shop shop=new Shop();
		NotAuditedShop notauditedshop=notauditedmapper.selectByPrimaryKey(auditedId);
		Staff staff=new Staff();

		if("pass".equals(result))
		{
			shop.setOwnerEmail(notauditedshop.getOwnerEmail());
			shop.setOwnerName(notauditedshop.getOwnerName());
			shop.setOwnerPhone(notauditedshop.getOwnerPhone());
			shop.setOwnerTitle(notauditedshop.getOwnerTitle());
			shop.setShopCity(notauditedshop.getShopCity());
			shop.setShopCounty(notauditedshop.getShopCounty());
			shop.setShopDetail(notauditedshop.getShopDetail());
			shop.setShopIntro(notauditedshop.getShopIntro());
			shop.setShopName(notauditedshop.getShopName());
			shop.setShopPhone(notauditedshop.getShopPhone());
			shop.setShopPic(shop.getShopPic());
			shop.setShopProvince(notauditedshop.getShopProvince());
			shop.setShopType(notauditedshop.getShopType());
			shopmapper.insert(shop);
			notauditedmapper.deleteByPrimaryKey(notauditedshop.getAuditedId());
			staff.setStaffPassword("123456");
			staff.setStaffPhone(notauditedshop.getOwnerPhone());
			staff.setShopId(shop.getShopId());
			staffMapper.insert(staff);

			return 1;

		}
		return 0;
	}
	@Override
	public List<NotAuditedShop> notAuditedShops() {
		return notauditedmapper.findAll();
	}

}
