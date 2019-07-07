package cn.edu.cqu.card.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.cqu.card.service.CheckService;

@Controller
public class CheckController {

	@Autowired
	CheckService checkService;
	@PostMapping("/check")
	public @ResponseBody boolean check(@RequestParam("userPhone")String userPhone) {

		boolean result = checkService.check(userPhone);
		return result;
	}
}
