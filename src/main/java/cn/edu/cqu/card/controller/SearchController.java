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

@Controller
public class SearchController {

	@Autowired
	SearchService searchService;

	// ËÑË÷Ò³
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String enterSearch() {
		return "/search/index";
	}

	// Ö´ÐÐËÑË÷
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@RequestParam("keyword") String keyword, Model model) {
		String[] area = new String[] { "ÖØÇì", "ÖØÇì", "ÄÏ°¶", "µ¯×ÓÊ¯" };
		List<Shop> shops = searchService.searchShop(keyword, area);
		model.addAttribute("shops", shops);
		List<Commodity> commodities = searchService.searchCommodities(keyword, area);
		model.addAttribute("commodities", commodities);
		return "/search/show";
	}

}
