package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.ResetService;

@Controller
public class ResetController {

	@Autowired
	private ResetService resetService;
	@RequestMapping(value = "/reset", method = RequestMethod.GET)
	public String get()
	{
		return "Reset";
	}
	@RequestMapping(value = "/reset", method = RequestMethod.POST)
	public String reset(@RequestParam("oldPassword") String oldPassword, @RequestParam("firstNewPassword") String firstNewPassword, @RequestParam("secondNewPassword") String secondNewPassword, HttpSession session)
	{
		User user = (User) session.getAttribute("user");
		if(resetService.check(oldPassword, user))
		{
			int  i = resetService.reset(firstNewPassword, user);
		}
		return "redirect:/login";
	}
	
}
