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
public class ShopStaffInfoController {

	@Autowired
	private StaffService staffService;
	
	@Autowired
	private ShopService shopService;
	
	@GetMapping("/shop/menu/staff/staffInfo")
	public String getInfo(@RequestParam("staff") String staffNo,Model model,HttpSession session)
	{
		Staff staff = (Staff) session.getAttribute("staff");
		Shop shop = shopService.showShop(staff.getShopId());
		model.addAttribute("shop", shop);
		if(!"new".equals(staffNo))
		{
			model.addAttribute("staff",staff);
		}
		
		return "shop/menu/staff/staffInfo";
	}
}
