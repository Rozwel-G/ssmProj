package cn.edu.cqu.card.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/user/changeinfo",method = RequestMethod.GET)
	public String showUser(Model model,HttpSession session) {
		User u = (User)session.getAttribute("user");
		User user = userService.showUser(u.getUserPhone());
		model.addAttribute("user", user);
		return "/user/changeinfo";
	}
	
	@RequestMapping(value = "/user/menu/changeinfo",method = RequestMethod.POST)
	public String updateUser(User user,MultipartFile file,HttpServletRequest request) throws IllegalStateException, IOException{
		String path = request.getServletContext().getRealPath("userPic/");
		String originalFileName = file.getOriginalFilename();
		if(originalFileName.length()>0) {
			String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
			File newFile = new File(path + newFileName);
			file.transferTo(newFile);
			user.setUserPic(newFileName);
		}
		userService.updateUser(user);
		return "/user/menu";
	}
}
