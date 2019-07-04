package cn.edu.cqu.card.service.Impl;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.ScoreLogMapper;
import cn.edu.cqu.card.model.ScoreLog;
import cn.edu.cqu.card.service.ScoreLogService;


@Service
public class ScoreLogimpl implements ScoreLogService{
	
	@Autowired
	private ScoreLogMapper scoreLogMapper;



	@Override
	public List<ScoreLog> getScoreLogs(String userPhone, Date begin, Date end) {
		return scoreLogMapper.selectByUserPhoneAndTime(userPhone, begin, end);
	}
	@SuppressWarnings("deprecation")
	@Override
	public List<ScoreLog> getTodayScoreLogs(String userPhone) {
		Date today = new Date();
		today.setHours(0);
		today.setMinutes(0);
		today.setSeconds(0);
		Calendar ca = Calendar.getInstance();
		ca.setTime(today);
		ca.add(Calendar.DATE, 1);
		Date tomorrow = ca.getTime();
		return scoreLogMapper.selectByUserPhoneAndTime(userPhone, today, tomorrow);
	}

	@Override
	public float computeTotalScore(List<ScoreLog> scoreLogs) {
		float sum = 0F;
		for (ScoreLog s : scoreLogs) {
			sum += s.getScoreLogScore();
		}
		return sum;
	}

	@Override
	public List<ScoreLog> getAllScoreLogs(String userPhone) {
		return scoreLogMapper.selectByUserPhone(userPhone);
	}


}
