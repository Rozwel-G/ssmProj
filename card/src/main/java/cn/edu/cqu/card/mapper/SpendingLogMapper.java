package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.SpendingLog;

public interface SpendingLogMapper {
    int deleteByPrimaryKey(Integer spendingLogId);

    int insert(SpendingLog record);

    int insertSelective(SpendingLog record);

    SpendingLog selectByPrimaryKey(Integer spendingLogId);

    int updateByPrimaryKeySelective(SpendingLog record);

    int updateByPrimaryKey(SpendingLog record);
}