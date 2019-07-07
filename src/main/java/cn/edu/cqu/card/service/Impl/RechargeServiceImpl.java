package cn.edu.cqu.card.service.Impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.RechargeLogMapper;
import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.RechargeLog;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.RechargeService;
@Service
public class RechargeServiceImpl implements RechargeService {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RechargeLogMapper rechargeLogMapper;
	@Override
	public int recharge(float money, String userPhone) {
		// TODO Auto-generated method stub
		Date time=new Date();
		User user=userMapper.selectByPrimaryKey(userPhone);
		user.setUserBalance(user.getUserBalance()+money);
		userMapper.updateByPrimaryKey(user);
		RechargeLog rechargeLog=new RechargeLog();
		rechargeLog.setRechargeLogMoney(money);
		rechargeLog.setRechargeLogTime(time);
		rechargeLog.setUserPhone(userPhone);
		rechargeLogMapper.insert(rechargeLog);
		return 0;
	}

}
