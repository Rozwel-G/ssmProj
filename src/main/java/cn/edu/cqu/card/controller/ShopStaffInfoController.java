package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class ShopStaffInfoController {

	@Autowired
	private StaffService staffService;
	
	@GetMapping("/shop/menu/staff/staffInfo")
	public String getInfo(@RequestParam("staff") String staffNo,Model model,HttpSession session)
	{
		/*Shop shop = (Shop)session.getAttribute("shop");
		model.addAttribute("shop", shop);*/

		if(!"new".equals(staffNo))
		{
			Staff staff = staffService.findStaff(staffNo);
			model.addAttribute("staff",staff);
			System.out.println(staff.getStaffPhone());
		}
		
		return "shop/menu/staff/staffInfo";
	}
}
