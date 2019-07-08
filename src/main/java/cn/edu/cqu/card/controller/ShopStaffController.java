package cn.edu.cqu.card.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.ShopService;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class ShopStaffController {

	@Autowired
	private StaffService staffService;
	@Autowired
	private ShopService shopService;
	@GetMapping("/shop/menu/staff/list")
	public String listStaff(Model model,HttpSession session)
	{
		Staff staff = (Staff)session.getAttribute("staff");
		Shop shop = shopService.showShop(staff.getShopId());
		session.setAttribute("shop", shop);
		System.out.println(shop.getShopCounty());
		List<Staff> staffs = staffService.findShopStaffs(shop);
		model.addAttribute("staffs",staffs);
		//System.out.println(staffs.toString());
		return "shop/menu/staff/list";
	}
}
