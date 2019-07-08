package cn.edu.cqu.card.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserRegisterService;

@Controller
public class UserRegisterController {
	
	@Autowired
	private UserRegisterService userRegisterService;
	@RequestMapping(value = "/user/register",method = RequestMethod.GET)
	public String get()
	{
		return "register";
	}
	@RequestMapping(value = "/user/register", method = RequestMethod.POST)
	public String register( @RequestParam(value = "userFile")MultipartFile file, User user, HttpServletRequest request) throws IllegalStateException, IOException
	{
		
	
		String path = request.getServletContext().getRealPath("userPic/");
		String originalFileName = file.getOriginalFilename();
		String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
		File newFile = new File(path + newFileName);
		file.transferTo(newFile);
		user.setUserPic(newFileName);
		user.setUserBalance((float) 0.0);
		user.setUserScore(0);
		User user1 = userRegisterService.register(user);
		return "redirect:/index";
		
	}
}
