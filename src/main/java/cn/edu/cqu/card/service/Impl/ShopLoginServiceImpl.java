package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.ShopMapper;
import cn.edu.cqu.card.mapper.StaffMapper;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.ShopLoginService;

@Service
public class ShopLoginServiceImpl implements ShopLoginService {

	@Autowired
	private StaffMapper staffMapper;
	@Autowired
	private ShopMapper shopMapper;
	@Override
	public Shop login(String staffPhone, String staffPassword) {
		
			
		Staff staff = staffMapper.selectByPrimaryKey(staffPhone);
		if(null == staff || !staffPassword.equals(staff.getStaffPassword()))
		{
			throw new RuntimeException("用户名或者密码错误");
		}
		else 
		{
			Shop shop = shopMapper.selectByPrimaryKey(staff.getShopId());
			return shop;
		}	
	}

}
