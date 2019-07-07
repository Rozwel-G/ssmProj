package cn.edu.cqu.card.service;

import java.util.Date;
import java.util.List;

import cn.edu.cqu.card.model.SpendingLog;

public interface ShopStatisticService {

	/**
	 * @param shopId
	 * @return 所选商铺的所有消费记录
	 */
	List<SpendingLog> getAllSpendingLogs(int shopId);

	/**
	 * @param shopId
	 * @param begin  开始时间
	 * @param end    结束时间
	 * @return 所选商铺给定时间内的消费记录
	 */
	List<SpendingLog> getSpendingLogs(int shopId, Date begin, Date end);

	/**
	 * @param shopId
	 * @return 所选商铺今天的消费记录
	 */
	List<SpendingLog> getTodaySpendingLogs(int shopId);

	/**
	 * @param spendingLogs 消费记录的集合
	 * @return 消费总额
	 */
	float computeTotalMoney(List<SpendingLog> spendingLogs);

}
