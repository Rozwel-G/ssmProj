package cn.edu.cqu.card.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.ScoreLog;
import cn.edu.cqu.card.model.User;
import cn.edu.cqu.card.service.ScoreLogService;

@Controller
public class ScoreLogController {

	@Autowired
	private ScoreLogService scoreLogService;


	@RequestMapping(value = "/scoreLog", method = RequestMethod.GET)
	public String enterScoreStatistic() {
		return "/scoreLog/S_index";
	}
	// 查询当日
	@RequestMapping(value = "/scoreLog/today", method = RequestMethod.GET)
	public String listTodayScoreLog(Model model, HttpSession session) {

		// 实际应该使用session获取
		List<ScoreLog> scoreLogs = scoreLogService.getTodayScoreLogs(((User)session.getAttribute("user")).getUserPhone());
		model.addAttribute("scoreLogs", scoreLogs);
		model.addAttribute("totalScore", scoreLogService.computeTotalScore(scoreLogs));
		return "/scoreLog/score";
	}

	// 查询总共
	@RequestMapping(value = "/scoreLog/total", method = RequestMethod.GET)
	public String listTotalScoreLog(Model model, HttpSession session) {

		// 实际应该使用session获取
		List<ScoreLog> scoreLogs = scoreLogService.getAllScoreLogs(((User)session.getAttribute("user")).getUserPhone());
		model.addAttribute("scoreLogs", scoreLogs);
		model.addAttribute("totalScore", scoreLogService.computeTotalScore(scoreLogs));
		return "/scoreLog/score";
	}

	// 查询给定范围的流水
	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/scoreLog/time", method = RequestMethod.POST)
	public String listTotalScoreLog(@RequestParam("begin") String begin, @RequestParam("end") String end,
			Model model, HttpSession session) {
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
			List<ScoreLog> scoreLogs = scoreLogService.getScoreLogs(((User)session.getAttribute("user")).getUserPhone(), beginDate, endDate);
			model.addAttribute("scoreLogs", scoreLogs);
			model.addAttribute("totalScore", scoreLogService.computeTotalScore(scoreLogs));
			return "/scoreLog/score";

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/error";
	}
}
