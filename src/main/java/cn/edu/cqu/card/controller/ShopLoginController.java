package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.ShopLoginService;

@Controller
public class ShopLoginController {
	@Autowired
	private ShopLoginService shopLoginService;
	@GetMapping(value = "/shop/login")
	public String get()
	{
		return "shoplogin";
	}
	
	@RequestMapping(value = "/shop/login", method = RequestMethod.POST)
	public String userLogin(@RequestParam("telephone")String telephone, @RequestParam("password")String password, HttpSession Session)
	{
		try {
			Staff staff = shopLoginService.login(telephone, password);
			Session.setAttribute("staff", staff);
			return "redirect:/shop/menu";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "shoplogin";
		
	}
	
}
