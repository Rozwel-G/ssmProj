package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String get()
	{
		return "Login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String userLogin(@RequestParam("telephone")String telephone, @RequestParam("password")String password, HttpSession Session)
	{
		
		try {
			User user = loginService.Login(telephone, password);
			Session.setAttribute("user", user);
			return "redirect:/index";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Login";
		
	}
	
}
