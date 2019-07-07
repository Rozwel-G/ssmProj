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

import cn.edu.cqu.card.model.NotAuditedShop;
import cn.edu.cqu.card.service.ShopRegisterService;

@Controller
public class ShopRegisterController {

	@Autowired
	private ShopRegisterService shopRegisterService;
	
	@RequestMapping(value = "/shop/join", method = RequestMethod.GET)
	public String get()
	{
		return "join";
	}
	
	@RequestMapping(value = "/shop/join", method = RequestMethod.POST)
	public String join(@RequestParam(value = "shopFile")MultipartFile file,NotAuditedShop notAuditedShop,HttpServletRequest request) throws IllegalStateException, IOException
	{
		String path = request.getServletContext().getRealPath("shopPic/");
		String originalFileName = file.getOriginalFilename();
		String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
		File newFile = new File(path + newFileName);
		file.transferTo(newFile);
		notAuditedShop.setShopPic(newFileName);
		shopRegisterService.register(notAuditedShop);
		return "redirect:/index";
	}
	
}
