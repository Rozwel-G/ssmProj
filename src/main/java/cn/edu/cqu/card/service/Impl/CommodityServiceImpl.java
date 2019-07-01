package cn.edu.cqu.card.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.CommodityMapper;
import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.service.CommodityService;

@Service
public class CommodityServiceImpl implements CommodityService {

	@Autowired
	private CommodityMapper commodityMapper;
	
	@Override
	public void addCommodity(Commodity commoduty) {
		commodityMapper.insert(commoduty);
	}

	@Override
	public List<Commodity> commodities(int shopId) {
		return commodityMapper.selectByShopId(shopId);
	}

	@Override
	public int deleteCommodity(int comId) {
		return commodityMapper.deleteByPrimaryKey(comId);
	}

}
