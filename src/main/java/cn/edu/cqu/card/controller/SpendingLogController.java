package cn.edu.cqu.card.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonFormat;

import cn.edu.cqu.card.model.SpendingLog;
import cn.edu.cqu.card.service.SpendingLogService;

@Controller
public class SpendingLogController {
	@Autowired
	private SpendingLogService spendingLogService;

	@RequestMapping(value = "/spendingLog", method = RequestMethod.GET)
	public String enterUserStatistic() {
		return "/spendingLog/index";
	}
	// 查询当日
	@RequestMapping(value = "/spendingLog/today", method = RequestMethod.GET)
	public String listTodaySpendingLog(Model model) {

		// 实际应该使用session获取
		List<SpendingLog> spendingLogs = spendingLogService.getTodaySpendingLogs("17712345678");
		model.addAttribute("spendingLogs", spendingLogs);
		model.addAttribute("totalMoney", spendingLogService.computeTotalMoney(spendingLogs));
		return "/spendingLog/spending";
	}

	// 查询总共
	@RequestMapping(value = "/spendingLog/total", method = RequestMethod.GET)
	public String listTotalSpendingLog(Model model) {

		// 实际应该使用session获取
		List<SpendingLog> spendingLogs = spendingLogService.getAllSpendingLogs("17712345678");
		model.addAttribute("spendingLogs", spendingLogs);
		model.addAttribute("totalMoney", spendingLogService.computeTotalMoney(spendingLogs));
		return "/spendingLog/spending";
	}

	// 查询给定范围的流水
	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/spendingLog/time", method = RequestMethod.POST)
	public String listTotalSpendingLog(@RequestParam("begin") String begin, @RequestParam("end") String end,
			Model model) {
		// 对日期进行处理
		try {
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date beginDate = dateFormat.parse(begin);
			beginDate.setHours(0);
			beginDate.setMinutes(0);
			beginDate.setSeconds(0);
			Date endDate = dateFormat.parse(end);
			endDate.setHours(23);
			endDate.setMinutes(59);
			endDate.setSeconds(59);

			// 实际应该使用session获取
			List<SpendingLog> spendingLogs = spendingLogService.getSpendingLogs("17712345678", beginDate, endDate);
			model.addAttribute("spendingLogs", spendingLogs);
			model.addAttribute("totalMoney", spendingLogService.computeTotalMoney(spendingLogs));
			return "/spendingLog/spending";

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/error";
	}
	
	
}