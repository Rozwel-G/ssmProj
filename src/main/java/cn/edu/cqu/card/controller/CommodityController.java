package cn.edu.cqu.card.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.service.CommodityService;

@Controller
public class CommodityController {

	@Autowired
	private CommodityService commodityService;
	
	@RequestMapping(value = "/addCommodity",method = RequestMethod.GET)
	public String show(Model model) {
		model.addAttribute("shopId", 1);
		return "addCommodity";
	}
	
	@RequestMapping(value = "/addCommodity",method = RequestMethod.POST)
	public String add(Commodity commodity,int shopId) {
		commodityService.addCommodity(commodity);
		return "NewFile";
	}
	
	@RequestMapping(value = "/comList",method = RequestMethod.GET)
	public String showCommodities(Model model) {
		List<Commodity> commodities = commodityService.commodities(1);
		model.addAttribute("commodities", commodities);
		return "comList";
	}
	
	@DeleteMapping("/comList/{comId}")
	public String delete(@PathVariable("comId") int comId) {
		
		commodityService.deleteCommodity(comId);
		
		return "redirect:/comList";
	}
}

