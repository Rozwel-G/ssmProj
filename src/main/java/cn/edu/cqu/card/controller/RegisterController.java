package cn.edu.cqu.card.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.RegisterService;

@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService registerService;
	@RequestMapping(value = "/register",method = RequestMethod.GET)
	public String get()
	{
		return "Register";
	}
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@RequestParam("password")String password,@RequestParam("nickName")String nickName,@RequestParam("userName")String userName,@RequestParam("userSex")String userSex,@RequestParam("idType")String idType,@RequestParam("idNumber")String idNumber,@RequestParam("userPhone")String userPhone,@RequestParam("userEmail")String userEmail)
	{
		
		User user = registerService.register(password, nickName, userName, userSex, idType, idNumber, userPhone, userEmail);
		
		return "redirect:/login";
		
	}
}