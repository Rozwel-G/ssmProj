package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserResetService;

@Controller
public class UserResetController {

	@Autowired
	private UserResetService userResetService;
	@RequestMapping(value = "/reset/user", method = RequestMethod.GET)
	public String get()
	{
		return "UserReset";
	}
	@RequestMapping(value = "/reset/user", method = RequestMethod.POST)
	public String reset(@RequestParam("oldPassword") String oldPassword, @RequestParam("firstNewPassword") String firstNewPassword, @RequestParam("secondNewPassword") String secondNewPassword, HttpSession session)
	{
		User user = (User) session.getAttribute("user");
		if(userResetService.check(oldPassword, user))
		{
			int  i = userResetService.reset(firstNewPassword, user);
		}
		return "redirect:/login/user";
	}
	
}
