package cn.edu.cqu.card.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.ShopService;

@Controller
public class ShopController {
	@Autowired
	private ShopService shopService;
	
	@RequestMapping(value = "/updateShopInformation",method = RequestMethod.GET)
	public String showShop(Model model) {
		Shop s = shopService.showShop(1);
		model.addAttribute("shop", s);
		return "updateShopInformation";
	}
	
	@RequestMapping(value = "/shop",method = RequestMethod.POST)
	public String updateShop(Shop shop) {
		shopService.updateShop(shop);
		return "NewFile";
	}
}
