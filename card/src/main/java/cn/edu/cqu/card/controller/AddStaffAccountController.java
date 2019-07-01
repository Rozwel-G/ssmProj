package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.Impl.StaffService;

@Controller
public class AddStaffAccountController {
	@Autowired
	private StaffService staffService;
	
	
	@RequestMapping(value="/addStaffAccount",method=RequestMethod.POST)
	public String addStaff(Staff staff,HttpSession session)
	{
		//Shop shop = (Shop) session.getAttribute("account");
		//Integer shopId = shop.getShopId();
		Integer shopId = 1;
		staff.setShopId(shopId);
		int i = staffService.insert(staff);
		if(i<0)
		{
			return "error";
		}
		else {
			//session.setAttribute("staffAccount", staff);
			return "sucess";
		}
		
	}
}
