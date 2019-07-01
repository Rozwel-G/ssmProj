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

	int updateByPrimaryKeySelective(SpendingLog record);

	int updateByPrimaryKey(SpendingLog record);

	List<SpendingLog> selectByShopId(int shopId);

	List<SpendingLog> selectByShopIdAndTime(@Param("shopId") int shopId, @Param("begin") Date begin,
			@Param("end") Date end);
}