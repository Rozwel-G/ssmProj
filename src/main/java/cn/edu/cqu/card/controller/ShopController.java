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
import cn.edu.cqu.card.service.ShopService;

@Controller
public class ShopController {
	@Autowired
	private ShopService shopService;
	
	@RequestMapping(value = "/shop/changeinfo",method = RequestMethod.GET)
	public String showShop(Model model,HttpSession session) {
		Shop shop = shopService.showShop(((Shop)session.getAttribute("shop")).getShopId());
		model.addAttribute("shop", shop);
		return "/shop/changeinfo";
	}
	
	@RequestMapping(value = "/shop/menu/changeinfo",method = RequestMethod.POST)
	public String updateShop(Shop shop,MultipartFile file,HttpServletRequest request) throws IllegalStateException, IOException {
		String path = request.getServletContext().getRealPath("shopPic/");
		String originalFileName = file.getOriginalFilename();
		if(originalFileName.length()>0) {
			String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
			File newFile = new File(path + newFileName);
			file.transferTo(newFile);
			shop.setShopPic(newFileName);
		}
		shopService.updateShop(shop);
		return "/shop/menu";
	}
}
