package cn.edu.cqu.card.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;

import cn.edu.cqu.card.service.RechargeService;

@Controller
public class RechargeController {

	@Autowired
	private RechargeService rechargeService;
	@GetMapping("/recharge")
	public String get() {
		return "recharge";
	}
	@PutMapping("/recharge")
	public String recharge(float money,String userPhone) {
		rechargeService.recharge(money, userPhone);
		return "redirect:/result";
	}
}
