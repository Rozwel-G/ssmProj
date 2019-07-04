package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

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
	public String showShop(Model model,HttpSession session) {
		Shop s = shopService.showShop(((Shop)session.getAttribute("shop")).getShopId());
		model.addAttribute("shop", s);
		return "updateShopInformation";
	}
	
	@RequestMapping(value = "/shop",method = RequestMethod.POST)
	public String updateShop(Shop shop) {
		shopService.updateShop(shop);
		return "NewFile";
	}
}
