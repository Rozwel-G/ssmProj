package cn.edu.cqu.card.service;

import java.util.Date;
import java.util.List;

import cn.edu.cqu.card.model.SpendingLog;

public interface SpendingLogService {
	
	List<SpendingLog> getAllSpendingLogs(String userPhone);
	
	List<SpendingLog> getSpendingLogs(String userPhone, Date begin, Date end);
	
	List<SpendingLog> getTodaySpendingLogs(String userPhone);
	
	float computeTotalMoney(List<SpendingLog> spendingLogs);
}
