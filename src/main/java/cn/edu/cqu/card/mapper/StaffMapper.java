package cn.edu.cqu.card.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;

public interface StaffMapper {
    int deleteByPrimaryKey(String staffPhone);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(String staffPhone);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);

	int addStaff(@Param("staffPhone") String staffPhone,@Param("shopId")  int shopId);

	List<Staff> findShopStaffs(Shop shop);
}