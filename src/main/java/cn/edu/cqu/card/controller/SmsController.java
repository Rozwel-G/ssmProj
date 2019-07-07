package cn.edu.cqu.card.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aliyuncs.http.HttpRequest;

import cn.edu.cqu.card.service.SmsService;

@Controller
public class SmsController {

	
	@Autowired
	private SmsService smsService;
	
	  @RequestMapping(value = "verifyCode")
	  public @ResponseBody Map<String, Object> verifyCode(@RequestParam(value = "mobile") String mobile) {
	    Map<String, Object> map = new HashMap<String, Object>();
	    boolean smsSuccess = false;
	    try {
	      if (mobile == "") {
	        map.put("message", "手机号码不能为空");
	        map.put("result", "error");
	        return map;
	      }
	      String msg = getRandomNumber(6);
	      smsSuccess = smsService.sendVerificationCode(msg, mobile);
	      if (smsSuccess) {
	        map.put("result", "success");
	      } else {
	        map.put("result", "error");
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return map;
	  }
	  
	  public static String getRandomNumber(int length)
	  {
	    String result = "";
	    for (int i = 0; i < length; i++) {
	      result = result + (int)(Math.random() * 9.0D);
	    }
	    return result;
	  }
}
