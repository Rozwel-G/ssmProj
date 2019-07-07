package cn.edu.cqu.card.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class UpdateStaffAccountController {
	@Autowired
	private StaffService staffService;
	
	@PostMapping(value="/shop/menu/staff/updateStaffAccount")
	public String updateStaff(Staff staff,HttpSession session,@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException
	{
		System.out.println(file.getOriginalFilename());
		ServletContext sc = request.getSession().getServletContext();
		if(null!=file&&!(file.getOriginalFilename().equals("")))
		{
			System.out.println("error");
			File newFile = new File(sc.getRealPath("/images")+"\\"+staff.getStaffPhone()+".jpg");
			file.transferTo(newFile);
			staff.setStaffPic(staff.getStaffPhone()+".jpg");
		}
		//System.out.println(newFile.getPath());
		
		//Shop shop = (Shop) session.getAttribute("account");
		//Integer shopId = shop.getShopId();
		Integer shopId = 1;
		staff.setShopId(shopId);
		staff.setStaffPic(staff.getStaffPhone()+".jpg");
		staffService.update(staff);
		
		return "redirect:../staff/list";
		
	}
}
