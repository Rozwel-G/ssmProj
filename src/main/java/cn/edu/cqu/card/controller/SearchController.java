package cn.edu.cqu.card.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.SearchService;
import cn.edu.cqu.card.service.ShopService;

@Controller
public class SearchController {

	@Autowired
	SearchService searchService;
	
	@Autowired
	ShopService shopService;

	// 搜索
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(@RequestParam("keyword") String keyword, Model model) {
		String[] area = new String[] { "", "", "", "" };
		List<Shop> shops = searchService.searchShop(keyword, area);
		List<Commodity> commodities = searchService.searchCommodities(keyword, area);
		for(Commodity comm : commodities) {
			Shop shop = shopService.showShop(comm.getShopId());
			System.out.println(shop);
			if(!shops.contains(shop)) {
				shops.add(shop);
			}			
		}
		model.addAttribute("shops", shops);
		return "/search/list";
	}
}
