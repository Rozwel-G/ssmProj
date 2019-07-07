package cn.edu.cqu.card.service.Impl;

import cn.edu.cqu.card.service.ConsumptionSettlementService;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.ScoreLogMapper;
import cn.edu.cqu.card.mapper.SpendingLogMapper;
import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.ScoreLog;
import cn.edu.cqu.card.model.SpendingLog;
import cn.edu.cqu.card.model.User;
@Service
public class ConsumptionSettlementServiceImpl implements ConsumptionSettlementService {


	@Autowired
	private UserMapper userMapper;
	@Autowired
	private SpendingLogMapper spendingLogMapper;
	@Autowired
	private ScoreLogMapper scoreLogMapper;
	@Override
	public int consumptionSettlement(int shopId,float price,String userPhone,int score) {
		// TODO Auto-generated method stub
		User user=userMapper.selectByPrimaryKey(userPhone);
		if(user.getUserBalance()<(price-score/100.0))
		{
			return -1;
		}
		
		Date time=new Date();

		
		
		user.setUserBalance(user.getUserBalance()-(float)(price-score/100.0));
		user.setUserScore(user.getUserScore()+(int)(price-score/100.0)-score);
		
		ScoreLog scorelog=new ScoreLog();
		scorelog.setScoreLogScore((int)(price-score/100.0));
		scorelog.setScoreLogTime(time);
		scorelog.setUserPhone(userPhone);
		if(price-(score/100.0)!=0) {
			scoreLogMapper.insert(scorelog);
		}
		
		userMapper.updateByPrimaryKey(user);
		SpendingLog spendinglog=new SpendingLog();
		spendinglog.setShopId(shopId);
		spendinglog.setTime(time);
		spendinglog.setUserPhone(userPhone);
		spendinglog.setMoney(price);
		spendinglog.setScoreLogId(scorelog.getScoreLogId());
		spendingLogMapper.insert(spendinglog);
		

		return 0;
	}
	@Override
	public int checkScore(String userPhone) {
		User user=userMapper.selectByPrimaryKey(userPhone);
		return user.getUserScore();
	}

	

}
