package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;


import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.ConsumptionSettlementService;

@Controller
public class ConsumptionSettlementController {
	@Autowired
	private ConsumptionSettlementService consumptionsettlementservice;

	@GetMapping("/login")
	public String login(HttpSession session) {
		Shop shop = new Shop();
		shop.setShopId(1);
		
		session.setAttribute("shop", shop);
		
		return "NewFile";
	}
	
	@PutMapping("/settle")
	public String settle(HttpSession session,String userPhone,float price) {

		Shop a=(Shop)session.getAttribute("shop");
		int res=consumptionsettlementservice.consumptionSettlement(a.getShopId(), price, userPhone);
		if(res==-1)
		{
			return "redirect:/index";
		}

		return "result";
	}

}
