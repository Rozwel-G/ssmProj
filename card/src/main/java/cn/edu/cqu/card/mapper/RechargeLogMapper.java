package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.RechargeLog;

public interface RechargeLogMapper {
    int deleteByPrimaryKey(Integer rechargeLogId);

    int insert(RechargeLog record);

    int insertSelective(RechargeLog record);

    RechargeLog selectByPrimaryKey(Integer rechargeLogId);

    int updateByPrimaryKeySelective(RechargeLog record);

    int updateByPrimaryKey(RechargeLog record);
}