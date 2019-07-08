package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.ShopService;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class UpdateInfoController {
	@Autowired
	private StaffService staffService;
	@Autowired
	private ShopService shopService;
	
	@GetMapping("/shop/menu/staff/staffInfoUpdate")
	public String getInfo(@RequestParam("staff") String staffNo,Model model,HttpSession session)
	{
		

		Staff staff = staffService.findStaff(staffNo);
		Shop shop = shopService.showShop(staff.getShopId());
		model.addAttribute("staff",staff);
		model.addAttribute("shop", shop);
		System.out.println(staff.getShopId());
		System.out.println(shop.getShopName());
		
		return "shop/menu/staff/staffInfoUpdate";
	}
}
