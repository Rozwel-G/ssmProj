package cn.edu.cqu.card.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.cqu.card.model.SpendingLog;

public interface SpendingLogMapper {
    int deleteByPrimaryKey(Integer spendingLogId);

    int insert(SpendingLog record);

    int insertSelective(SpendingLog record);

    SpendingLog selectByPrimaryKey(Integer spendingLogId);
    
    List<SpendingLog> selectByShop(SpendingLog record);

    int updateByPrimaryKeySelective(SpendingLog record);

    int updateByPrimaryKey(SpendingLog record);
    
    List<SpendingLog> selectByUserPhone(String userPhone);

	List<SpendingLog> selectByUserPhoneAndTime(@Param("userPhone") String userPhone, @Param("begin") Date begin,
			@Param("end") Date end);
}