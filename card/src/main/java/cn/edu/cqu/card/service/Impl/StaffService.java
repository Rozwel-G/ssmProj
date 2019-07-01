package cn.edu.cqu.card.service.Impl;

import java.util.List;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;

public interface StaffService {
	int insert(Staff staff);
	int delete(Staff staff);
	List<Staff> findShopStaffs(Shop shop);
}
