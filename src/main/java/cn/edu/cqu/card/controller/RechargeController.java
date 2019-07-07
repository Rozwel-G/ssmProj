package cn.edu.cqu.card.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;

import cn.edu.cqu.card.service.RechargeService;

@Controller
public class RechargeController {

	@Autowired
	private RechargeService rechargeService;
	@GetMapping("/user/menu/recharge")
	public String get() {
		return "usermenu/recharge";
	}
	@PutMapping("/recharge")
	public String recharge(float money,String userPhone) {
		rechargeService.recharge(money, userPhone);
		return "redirect:/user/menu/recharge?code=100";
	}
}
