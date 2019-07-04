package cn.edu.cqu.card.service;

import java.util.Date;
import java.util.List;

import cn.edu.cqu.card.model.ScoreLog;


public interface ScoreLogService {
	
	List<ScoreLog> getAllScoreLogs(String userPhone);
	
	List<ScoreLog> getScoreLogs(String userPhone, Date begin, Date end);
	
	List<ScoreLog> getTodayScoreLogs(String userPhone);
	
	float computeTotalScore(List<ScoreLog> scoreLogs);
}

