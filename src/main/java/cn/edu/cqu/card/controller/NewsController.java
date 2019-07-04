package cn.edu.cqu.card.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.model.News;
import cn.edu.cqu.card.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	NewsService newsService;

	// 新闻查看页面
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String enterNews() {
		return "/news/index";
	}

	// 新闻管理页面
	@RequestMapping(value = "/news/manage", method = RequestMethod.GET)
	public String enterNewsManage(Model model) {
		List<News> news = newsService.listNews();
		model.addAttribute("news", news);
		return "/news/managepage";
	}
	
	// 发布新闻
	@RequestMapping(value = "/news/republish", method = RequestMethod.GET)
	public String republishNews() {
		return "/news/repnews";
	}

	// 将新闻加入数据库
	@RequestMapping(value = "/news/add", method = RequestMethod.POST)
	public String addNews(@RequestParam("title") String title, @RequestParam("content") String content, MultipartFile upfile, HttpServletRequest request) {

		try {
			News news = new News();

			// 实际需要根据回话信息确定管理员电话
			news.setAdminPhone("13234567890");

			news.setNewsTitle(title);
			news.setNewsContent(content);
			news.setNewsTime(new Date());
			
			//上传图片处理
			if(upfile.getSize()>0) {
				String path = request.getServletContext().getRealPath("/pic/newspic");
				String fileName = upfile.getOriginalFilename();
				if(fileName.endsWith("jpg")||fileName.endsWith("png")||fileName.endsWith("gif")||fileName.endsWith("bmp")||fileName.endsWith("jpeg")) {
					String suffix = fileName.substring(fileName.lastIndexOf(".")); //取到文件名后缀
					String storeName = UUID.randomUUID().toString().replace("-", "").substring(0,8) + suffix; //防止文件重名问题，为文件生成随机名字
					File file = new File(path, storeName);
					System.err.println(file.getPath());
					upfile.transferTo(file);
					news.setNewsPic("/pic/newspic/"+storeName);
					newsService.addNews(news);
					return "redirect:/news/manage";
				}
			}			
		} catch (Exception e) {
			return "redirect:/error";
		}
		return "redirect:/error";
	}

	// 新闻列表
	@RequestMapping(value = "/news/list", method = RequestMethod.GET)
	public String listNews(Model model) {

		List<News> news = newsService.listNews();
		model.addAttribute("news", news);
		return "/news/viewnews";

	}
	
	@RequestMapping(value = "/news/view/{id}", method = RequestMethod.GET)
	public String viewNews(@PathVariable("id") int id, Model model) {
		News news = newsService.getNews(id);
		news.setNewsContent(news.getNewsContent().replaceAll("\n", "<br/>"));
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
	
	@RequestMapping(value = "/news/manage/update", method = RequestMethod.POST)
	public String updateNews(@RequestParam("id") int id, @RequestParam("title") String title, @RequestParam("content") String content, MultipartFile upfile, HttpServletRequest request) {

		try {
			News news = new News();
			
			news.setNewsId(id);
			news.setNewsTitle(title);
			news.setNewsContent(content);
			
			//上传图片处理
			if(upfile.getSize()>0) {
				String path = request.getServletContext().getRealPath("/pic/newspic");
				String fileName = upfile.getOriginalFilename();
				if(fileName.endsWith("jpg")||fileName.endsWith("png")||fileName.endsWith("gif")||fileName.endsWith("bmp")||fileName.endsWith("jpeg")) {
					String suffix = fileName.substring(fileName.lastIndexOf(".")); //取到文件名后缀
					String storeName = UUID.randomUUID().toString().replace("-", "").substring(0,8) + suffix; //防止文件重名问题，为文件生成随机名字
					File file = new File(path, storeName);
					System.err.println(file.getPath());
					upfile.transferTo(file);
					news.setNewsPic("/pic/newspic/"+storeName);
					newsService.update(news);
					return "redirect:/news/list";
				}
			}			
		} catch (Exception e) {
			return "redirect:/error";
		}
		return "redirect:/error";
	}

}
