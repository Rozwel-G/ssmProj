package cn.edu.cqu.card.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class ShopStaffController {

	@Autowired
	private StaffService staffService;
	
	@GetMapping("/shop/menu/staff/list")
	public String listStaff(Model model,HttpSession session)
	{
		//Shop shop = (Shop)session.getAttribute("account");
		Shop shop = new Shop();
		shop.setShopId(1);
		List<Staff> staffs = staffService.findShopStaffs(shop);
		int number = staffs.size();
		
		int last = number%5==0?0:(5-number%5);
		for(int i=0;i<last;i++)
		{
			Staff s = new Staff();
			s.setStaffPhone("   ");
			staffs.add(s);
		}
		model.addAttribute("staffs",staffs);
		//System.out.println(staffs.toString());
		return "shop/menu/staff/list";
	}
}
