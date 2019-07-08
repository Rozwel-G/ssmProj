package cn.edu.cqu.card.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.StaffMapper;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.StaffService;

@Service
public class StaffServiceImpl implements StaffService{

	@Autowired
	private StaffMapper staffMapper;
	
	@Override
	public int insert(Staff staff) {
		return staffMapper.insert(staff);
	}

	@Override
	public List<Staff> findShopStaffs(Shop shop) {
		return staffMapper.findShopStaffs(shop);
	}

	@Override
	public int delete(Staff staff) {
		return staffMapper.delete(staff);
	}

	@Override
	public Staff findStaff(String staffPhone) {
		return staffMapper.selectByPrimaryKey(staffPhone);
	}

	@Override
	public int update(Staff staff) {
		return staffMapper.updateByPrimaryKey(staff);
	}

}
