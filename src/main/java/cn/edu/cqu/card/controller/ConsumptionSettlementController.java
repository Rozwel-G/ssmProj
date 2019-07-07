package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.ConsumptionSettlementService;

@Controller
public class ConsumptionSettlementController {
	@Autowired
	private ConsumptionSettlementService consumptionsettlementservice;

	@GetMapping("/shop/menu/checkout")
	public String checkout() {

		return "shopmenu/checkout";
	}

	@PutMapping("/checkout")
	public String settle(HttpSession session, String userPhone,float price,int score) {
//改成session
		Shop shop = (Shop) session.getAttribute("shop");
		int res = consumptionsettlementservice.consumptionSettlement(shop.getShopId(), price, userPhone,score);
		if (res == -1) {	
			return "redirect:/shop/menu/checkout?code=0";
		}

		return "redirect:/shop/menu/checkout?code=1";
	}
	@GetMapping("/checkScore")
	public @ResponseBody int checkScore(String userPhone) {
		
		int score = consumptionsettlementservice.checkScore(userPhone);
		
		return score;
	}

}