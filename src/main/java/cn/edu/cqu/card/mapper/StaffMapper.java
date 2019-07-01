package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.Staff;

public interface StaffMapper {
    int deleteByPrimaryKey(String staffPhone);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(String staffPhone);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
}