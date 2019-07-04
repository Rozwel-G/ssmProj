package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserLoginService;

@Controller
public class UserLoginController {

	@Autowired
	private UserLoginService userLoginService;
	
	@RequestMapping(value = "/login/user", method = RequestMethod.GET)
	public String get()
	{
		return "UserLogin";
	}
	
	@RequestMapping(value = "/login/user", method = RequestMethod.POST)
	public String userLogin(@RequestParam("telephone")String telephone, @RequestParam("password")String password, HttpSession Session)
	{
		try {
			User user = userLoginService.Login(telephone, password);
			Session.setAttribute("user", user);
			return "redirect:/index/user";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "UserLogin";
		
	}
	
}
