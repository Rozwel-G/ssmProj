package cn.edu.cqu.card.mapper;

import java.util.List;

import cn.edu.cqu.card.model.NotAuditedShop;

public interface NotAuditedShopMapper {
    int deleteByPrimaryKey(Integer auditedId);

    int insert(NotAuditedShop record);

    int insertSelective(NotAuditedShop record);

    NotAuditedShop selectByPrimaryKey(Integer auditedId);

    int updateByPrimaryKeySelective(NotAuditedShop record);

    int updateByPrimaryKey(NotAuditedShop record);
    
    List<NotAuditedShop> findAll();
}