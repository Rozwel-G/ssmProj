package cn.edu.cqu.card.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cqu.card.model.News;
import cn.edu.cqu.card.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	NewsService newsService;

	// ���Ų鿴ҳ��
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String enterNews() {
		return "/shop/commodity/change";
	}

	// ���Ź���ҳ��
	@RequestMapping(value = "/news/manage", method = RequestMethod.GET)
	public String enterNewsManage(Model model) {
		List<News> news = newsService.listNews();
		model.addAttribute("news", news);
		return "/news/managepage";
	}
	
	// ��������
	@RequestMapping(value = "/news/republish", method = RequestMethod.GET)
	public String republishNews() {
		return "/news/repnews";
	}

	// �����ż������ݿ�
	@RequestMapping(value = "/news/add", method = RequestMethod.POST)
	public String addNews(@RequestParam("title") String title, @RequestParam("content") String content) {

		try {
			News news = new News();

			// ʵ����Ҫ���ݻػ���Ϣȷ������Ա�绰
			news.setAdminPhone("13234567890");

			news.setNewsTitle(title);
			news.setNewsContent(content);
			news.setNewsTime(new Date());
			newsService.addNews(news);
		} catch (Exception e) {
			return "redirect:listnews";
		}
		return "redirect:/news/list";
	}

	// �����б�
	@RequestMapping(value = "/news/list", method = RequestMethod.GET)
	public String listNews(Model model) {

		List<News> news = newsService.listNews();
		model.addAttribute("news", news);
		return "/news/viewnews";

	}
	
	@RequestMapping(value = "/news/view/{id}", method = RequestMethod.GET)
	public String viewNews(@PathVariable("id") int id, Model model) {
		News news = newsService.getNews(id);
		model.addAttribute("news", news);
		return "/news/newsdetail";
	}	
	
	@DeleteMapping("/news/manage/{id}")
	public String remove(@PathVariable("id") int id) {		
		newsService.delete(id);		
		return "redirect:/news/manage";
	}
	
	@GetMapping("/news/manage/edit/{id}")
	public String edit(@PathVariable("id") int id, Model model) {
		News news = newsService.getNews(id);
		model.addAttribute("news", news);
		return "/news/editnews";
	}
	
	@PutMapping("/news/manage/update")
	public String change(News news) {
		int rows = newsService.update(news);
		return "redirect:/news/manage";
	}

}
