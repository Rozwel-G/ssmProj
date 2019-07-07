package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.cqu.card.mapper.StaffMapper;
import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.ShopResetService;

public class ShopResetServiceImpl implements ShopResetService {

	@Autowired
	private StaffMapper staffMapper;
	@Override
	public boolean check(String oldPassword, Staff staff) {
		
		if(oldPassword.equals(staff.getStaffPassword()))
		{
			return true;
		}
		else {
			return false;
		}
		
	}
	@Override
	public int reset(String firstNewPassword, Staff staff) {
		
		staff.setStaffPassword(firstNewPassword);
		int i = staffMapper.updateByPrimaryKey(staff);
		
		return i;
	}

}


