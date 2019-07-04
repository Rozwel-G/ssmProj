package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/updateUserInformation",method = RequestMethod.GET)
	public String showUser(Model model,HttpSession session) {
		User user = userService.showUser(((User)session.getAttribute("user")).getUserPhone());
		model.addAttribute("user", user);
		return "updateUserInformation";
	}
	
	@RequestMapping(value = "/user",method = RequestMethod.POST)
	public String updateUser(User user) {
		userService.updateUser(user);
		return "NewFile";
	}
}
