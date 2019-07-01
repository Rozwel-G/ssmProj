package cn.edu.cqu.card.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.StaffMapper;
import cn.edu.cqu.card.model.Staff;


@Service
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private StaffMapper staffMapper;

	@Override
	public int addStaff(Staff staff,int shopId) {
		return staffMapper.addStaff(staff.getStaffPhone(),shopId);
	}


}
