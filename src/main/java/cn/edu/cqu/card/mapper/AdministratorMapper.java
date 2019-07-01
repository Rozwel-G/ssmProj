package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.Administrator;

public interface AdministratorMapper {
    int deleteByPrimaryKey(String adminPhone);

    int insert(Administrator record);

    int insertSelective(Administrator record);

    Administrator selectByPrimaryKey(String adminPhone);

    int updateByPrimaryKeySelective(Administrator record);

    int updateByPrimaryKey(Administrator record);
}