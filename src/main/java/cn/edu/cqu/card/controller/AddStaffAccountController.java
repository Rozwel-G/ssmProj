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

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class AddStaffAccountController {
	@Autowired
	private StaffService staffService;
	
	
	@RequestMapping(value="/shop/menu/staff/addStaffAccount",method=RequestMethod.POST)
	public String addStaff(Staff staff,HttpSession session,@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException
	{
		System.out.println(file.getOriginalFilename());
		ServletContext sc = request.getSession().getServletContext();
		if(null!=file)
		{
			File newFile = new File(sc.getRealPath("/images")+"\\"+staff.getStaffPhone()+".jpg");
			file.transferTo(newFile);
		}
		if(null!=staffService.findStaff(staff.getStaffPhone()))
		{
			return "/error";
		}
		//System.out.println(newFile.getPath());
		
		Shop shop = (Shop) session.getAttribute("shop");
		Integer shopId = shop.getShopId();
		//Integer shopId = 1;
		staff.setShopId(shopId);
		staff.setStaffPic(staff.getStaffPhone()+".jpg");
		staffService.insert(staff);
		
		return "redirect:../staff/list";
		
	}
}
