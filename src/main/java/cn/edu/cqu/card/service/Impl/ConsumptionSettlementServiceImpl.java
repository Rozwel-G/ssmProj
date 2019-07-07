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
	private UserMapper usermapper;
	@Autowired
	private SpendingLogMapper spendinglogmapper;
	@Autowired
	private ScoreLogMapper scorelogmapper;
	@Override
	public int consumptionSettlement(int shopId,float price,String userPhone) {
		// TODO Auto-generated method stub
		User user=usermapper.selectByPrimaryKey(userPhone);
		if(user.getUserBalance()<price)
		{
			return -1;
		}
		
		Date time=new Date();

		
		
		user.setUserBalance(user.getUserBalance()-price);
		user.setUserScore(user.getUserScore()+(int)price);
		
		ScoreLog scorelog=new ScoreLog();
		scorelog.setScoreLogScore((int)price);
		scorelog.setScoreLogTime(time);
		scorelog.setUserPhone(userPhone);
		scorelogmapper.insert(scorelog);
		
		usermapper.updateByPrimaryKey(user);
		SpendingLog spendinglog=new SpendingLog();
		spendinglog.setShopId(shopId);
		spendinglog.setTime(time);
		spendinglog.setUserPhone(userPhone);
		spendinglog.setMoney(price);
		spendinglog.setScoreLogId(scorelog.getScoreLogId());
		spendinglogmapper.insert(spendinglog);
		

		return 0;
	}

}
