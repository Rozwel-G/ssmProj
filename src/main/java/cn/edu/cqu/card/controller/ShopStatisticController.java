package cn.edu.cqu.card.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.model.SpendingLog;
import cn.edu.cqu.card.service.ShopStatisticService;

@Controller
public class ShopStatisticController {

	@Autowired
	ShopStatisticService shopStatisticService;

	// 商家统计页面入口
	@RequestMapping(value = "/shop/menu/statistic", method = RequestMethod.GET)
	public String enterShopStatistic() {
		return "/shop/menu/statistic/index";
	}

	// 查询当日
	@RequestMapping(value = "/shop/menu/statistic/today", method = RequestMethod.GET)
	public String listTodaySpendingLog(Model model, HttpServletRequest request) {

		// 实际应该使用session获取shopId
		HttpSession session = request.getSession();
		Shop shop = (Shop)session.getAttribute("shop");
		List<SpendingLog> spendingLogs = shopStatisticService.getTodaySpendingLogs(shop.getShopId());
		model.addAttribute("spendingLogs", spendingLogs);
		model.addAttribute("totalMoney", shopStatisticService.computeTotalMoney(spendingLogs));
		model.addAttribute("queryType", "今日流水");
		return "/shop/menu/statistic/show";
	}

	// 查询总共
	@RequestMapping(value = "/shop/menu/statistic/total", method = RequestMethod.GET)
	public String listTotalSpendingLog(Model model, HttpServletRequest request) {

		// 实际应该使用session获取shopId
		HttpSession session = request.getSession();
		Shop shop = (Shop)session.getAttribute("shop");
		List<SpendingLog> spendingLogs = shopStatisticService.getAllSpendingLogs(shop.getShopId());
		model.addAttribute("spendingLogs", spendingLogs);
		model.addAttribute("totalMoney", shopStatisticService.computeTotalMoney(spendingLogs));
		model.addAttribute("queryType", "历史流水");
		return "/shop/menu/statistic/show";
	}

	// 查询给定范围的流水
	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/shop/menu/statistic/time", method = RequestMethod.POST)
	public String listTotalSpendingLog(@RequestParam("begin") String begin, @RequestParam("end") String end,
			Model model,  HttpServletRequest request) {
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

			// 实际应该使用session获取shopId
			HttpSession session = request.getSession();
			Shop shop = (Shop)session.getAttribute("shop");
			List<SpendingLog> spendingLogs = shopStatisticService.getSpendingLogs(shop.getShopId(), beginDate, endDate);
			model.addAttribute("spendingLogs", spendingLogs);
			model.addAttribute("totalMoney", shopStatisticService.computeTotalMoney(spendingLogs));
			String type = begin + "~" + end + " 流水";
			model.addAttribute("queryType", type);
			return "/shop/menu/statistic/show";

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/error";
	}

}
