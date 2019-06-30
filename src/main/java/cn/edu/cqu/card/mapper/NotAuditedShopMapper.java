package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.NotAuditedShop;

public interface NotAuditedShopMapper {
    int deleteByPrimaryKey(Integer auditedId);

    int insert(NotAuditedShop record);

    int insertSelective(NotAuditedShop record);

    NotAuditedShop selectByPrimaryKey(Integer auditedId);

    int updateByPrimaryKeySelective(NotAuditedShop record);

    int updateByPrimaryKey(NotAuditedShop record);
}