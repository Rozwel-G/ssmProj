package cn.edu.cqu.card.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.CommodityService;

@Controller
public class CommodityController {

	@Autowired
	private CommodityService commodityService;
	
	@RequestMapping(value = "/shop/commodity/add",method = RequestMethod.GET)
	public String show() {
		return "/shop/commodity/add";
	}
	
	@RequestMapping(value = "/shop/menu/commodity/add",method = RequestMethod.POST)
	public String add(Commodity commodity,HttpSession session,MultipartFile file,HttpServletRequest request)  throws IllegalStateException, IOException {
		String path = request.getServletContext().getRealPath("comPic/");
		String originalFileName = file.getOriginalFilename();
		String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
		File newFile = new File(path + newFileName);
		file.transferTo(newFile);
		commodity.setComPic(newFileName);
		commodity.setShopId(((Shop)session.getAttribute("shop")).getShopId());
		commodityService.addCommodity(commodity);
		return "/shop/menu";
	}
	
	@RequestMapping(value = "/shop/menu/commodity/change",method = RequestMethod.GET)
	public String showCommodities(Model model,HttpSession session) {
		Shop shop = (Shop)session.getAttribute("shop");
		List<Commodity> commodities = commodityService.commodities(shop.getShopId());
		model.addAttribute("commodities", commodities);
		return "/shop/commodity/change";
	}
	
	@DeleteMapping("/shop/menu/commodity/change/{comId}")
	public String delete(@PathVariable("comId") int comId) {
		
		commodityService.deleteCommodity(comId);
		
		return "redirect:/shop/menu/commodity/change";
	}
	
	@PostMapping("/check11")
	public @ResponseBody boolean check(String comName,HttpSession session) {
		int shopId=((Shop)session.getAttribute("shop")).getShopId();
		return commodityService.check(comName,shopId);
	}
}

