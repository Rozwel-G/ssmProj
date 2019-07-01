package cn.edu.cqu.card.service.Impl;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.SpendingLogMapper;
import cn.edu.cqu.card.model.SpendingLog;
import cn.edu.cqu.card.service.ShopStatisticService;

@Service
public class ShopStatisticServiceImpl implements ShopStatisticService {

	@Autowired
	private SpendingLogMapper spendingLogMapper;

	@Override
	public List<SpendingLog> getAllSpendingLogs(int shopId) {
		return spendingLogMapper.selectByShopId(shopId);
	}

	@Override
	public List<SpendingLog> getSpendingLogs(int shopId, Date begin, Date end) {
		return spendingLogMapper.selectByShopIdAndTime(shopId, begin, end);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<SpendingLog> getTodaySpendingLogs(int shopId) {
		Date today = new Date();
		today.setHours(0);
		today.setMinutes(0);
		today.setSeconds(0);
		// 计算下一天
		Calendar ca = Calendar.getInstance();
		ca.setTime(today);
		ca.add(Calendar.DATE, 1);
		Date tomorrow = ca.getTime();
		return spendingLogMapper.selectByShopIdAndTime(shopId, today, tomorrow);
	}

	@Override
	public float computeTotalMoney(List<SpendingLog> spendingLogs) {
		float sum = 0F;
		for (SpendingLog s : spendingLogs) {
			sum += s.getMoney();
		}
		return sum;
	}

}
