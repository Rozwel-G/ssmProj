package cn.edu.cqu.card.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

import cn.edu.cqu.card.model.NotAuditedShop;
import cn.edu.cqu.card.service.AuditService;

@Controller
public class AuditController {

	@Autowired
	private AuditService auditService;

	@GetMapping("admin/menu/audit")
	public String notAuditedShops(Model model) {
		
		List<NotAuditedShop> notAuditedShops = auditService.notAuditedShops();
		model.addAttribute("notAuditedShops", notAuditedShops);
		return "adminmenu/audit";
	}
	@GetMapping("admin/menu/audit/{auditedId}")
	public String redirect(Model model) {
		return "redirect:/admin/menu/audit";
	}
	
	@PutMapping("/audit/{auditedId}")
	public String notAuditedShops(@PathVariable("auditedId")int auditedId,String result) {
		auditService.audit(auditedId, result);
		return "redirect:/admin/menu/audit?code=100";
	}
	
}
	
