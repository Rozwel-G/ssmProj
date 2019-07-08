package cn.edu.cqu.card.service;

import java.util.List;

import cn.edu.cqu.card.model.Commodity;

public interface CommodityService {

	void addCommodity(Commodity commoduty);
	
	List<Commodity> commodities(int shopId);
	
	int deleteCommodity(int comId);
	
	boolean check(Commodity commodity);

	Commodity commodity(int commodityId);

	boolean check(String comName, int shopId);


}
