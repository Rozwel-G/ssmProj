package cn.edu.cqu.card.service;

public interface ConsumptionSettlementService {
	int consumptionSettlement(int shopId,float price,String userPhone,int score);
	int checkScore(String userPhone);
}
