package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.ShopRegisterService;
import cn.edu.cqu.card.service.ShopResetService;
import cn.edu.cqu.card.service.StaffService;
import cn.edu.cqu.card.service.UserResetService;

@Controller
public class ShopResetController {

	@Autowired
	private ShopResetService shopResetService;
	@RequestMapping(value = "/shop/menu/changepsw", method = RequestMethod.GET)
	public String get()
	{
		return "shopreset";
	}
	@RequestMapping(value = "/shop/menu/changepsw", method = RequestMethod.POST)
	public String reset(@RequestParam("oldPassword") String oldPassword, @RequestParam("firstNewPassword") String firstNewPassword, @RequestParam("secondNewPassword") String secondNewPassword, HttpSession session)
	{
		Staff staff = (Staff) session.getAttribute("staff");
		if(shopResetService.check(oldPassword, staff))
		{
			int  i = shopResetService.reset(firstNewPassword, staff);
		}
		return "redirect:/shop/login";
	}
	
}
