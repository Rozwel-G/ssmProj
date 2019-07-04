package cn.edu.cqu.card.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.CommodityService;

@Controller
public class CommodityController {

	@Autowired
	private CommodityService commodityService;
	
	@RequestMapping(value = "/addCommodity",method = RequestMethod.GET)
	public String show() {
		return "addCommodity";
	}
	
	@RequestMapping(value = "/addCommodity",method = RequestMethod.POST)
	public String add(Commodity commodity,HttpSession session) {
		commodity.setShopId(((Shop)session.getAttribute("shop")).getShopId());
		commodityService.addCommodity(commodity);
		return "NewFile";
	}
	
	@RequestMapping(value = "/comList",method = RequestMethod.GET)
	public String showCommodities(Model model,HttpSession session) {
		Shop shop = (Shop)session.getAttribute("shop");
		List<Commodity> commodities = commodityService.commodities(shop.getShopId());
		model.addAttribute("commodities", commodities);
		return "comList";
	}
	
	@DeleteMapping("/comList/{comId}")
	public String delete(@PathVariable("comId") int comId) {
		
		commodityService.deleteCommodity(comId);
		
		return "redirect:/comList";
	}
	
	@GetMapping("/check")
	public @ResponseBody boolean check(Commodity commodity) {
		return commodityService.check(commodity);
	}
}

