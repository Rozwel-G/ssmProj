package cn.edu.cqu.card.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class AddStaffAccountController {
	@Autowired
	private StaffService staffService;
	
	
	@RequestMapping(value="/shop/addStaffAccount",method=RequestMethod.POST)
	public String addStaff(Staff staff,HttpSession session,@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException
	{
		System.out.println(file.getOriginalFilename());
		ServletContext sc = request.getSession().getServletContext();
		File newFile = new File(sc.getRealPath("/img")+"\\"+file.getOriginalFilename());
		file.transferTo(newFile);
		System.out.println(newFile.getPath());
		
		//Shop shop = (Shop) session.getAttribute("account");
		//Integer shopId = shop.getShopId();
		Integer shopId = 1;
		staff.setShopId(shopId);
		staff.setStaffPic(file.getOriginalFilename());
		staffService.insert(staff);
		
		return "redirect:list";
		
	}
}