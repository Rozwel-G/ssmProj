package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.Impl.ShopService;

@Controller
public class addStaffToShopController {
	@Autowired
	private ShopService shopService;
	
	
	@RequestMapping(value = "/shop/add",method = RequestMethod.GET)
	public String addAccount(HttpSession session)
	{
		Staff staff = (Staff) session.getAttribute("staffAccount");
		int i = shopService.addStaff(staff, 1);
		
		if(i< 0)
		{
			return "error";
		}
		else {
			return "success";
		}
	}
}
