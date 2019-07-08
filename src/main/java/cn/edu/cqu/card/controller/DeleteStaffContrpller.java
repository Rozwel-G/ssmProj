package cn.edu.cqu.card.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.Staff;
import cn.edu.cqu.card.service.StaffService;

@Controller
public class DeleteStaffContrpller {
	
	@Autowired
	private StaffService staffService;
	
	@GetMapping("/shop/menu/staff/delete")
	public String deleteStaff(@RequestParam("account") Staff staff)
	{
		staffService.delete(staff);
		return "redirect:list";
	}
}
