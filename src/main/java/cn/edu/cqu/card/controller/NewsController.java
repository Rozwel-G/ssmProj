package cn.edu.cqu.card.controller;

import java.io.File;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.model.Administrator;
import cn.edu.cqu.card.model.News;
import cn.edu.cqu.card.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	NewsService newsService;
	
	
	//------------普通用户---------------------------------------------------------------------
	
	// 新闻列表页面
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String enterNews(Model model) {
		List<News> news = newsService.listNews();
		Collections.reverse(news);
		model.addAttribute("news", news);
		return "/news/newslist";
	}
	
	//新闻详情
	@RequestMapping(value = "/news/detail/{id}", method = RequestMethod.GET)
	public String viewNews(@PathVariable("id") int id, Model model) {
		News news = newsService.getNews(id);
		news.setNewsContent(news.getNewsContent().replaceAll("\n", "<br/>"));
		model.addAttribute("news", news);
		return "/news/detailpage";
	}	
	//------------------------------------------------------------------------------------------
	
	

	//--------------管理员----------------------------------------------------------------------
	// 新闻查看页面
	@RequestMapping(value = "/admin/menu/news", method = RequestMethod.GET)
	public String enterNewsAdmin(Model model) {
		List<News> news = newsService.listNews();
		Collections.reverse(news);
		model.addAttribute("news", news);
		return "/admin/menu/news/managepage";
	}
	
	// 发布新闻
	@RequestMapping(value = "/admin/menu/news/add", method = RequestMethod.GET)
	public String republishNews() {
		return "/admin/menu/news/addpage";
	}

	// 将新闻加入数据库
	@RequestMapping(value = "/admin/menu/news/addnews", method = RequestMethod.POST)
	public String addNews(@RequestParam("title") String title, @RequestParam("content") String content, MultipartFile upfile, HttpServletRequest request) {

		try {
			News news = new News();

			HttpSession session = request.getSession();
			Administrator admin = (Administrator)session.getAttribute("admin");
			
			// 根据会话信息确定管理员电话
			news.setAdminPhone(admin.getAdminPhone());
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
					upfile.transferTo(file);
					news.setNewsPic("/pic/newspic/"+storeName);
					newsService.addNews(news);
					System.err.println(file.getPath());
					return "redirect:/admin/menu/news";
				}
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/menu/news/error";
	}
	
	//新闻详情页
	@RequestMapping(value = "/admin/menu/news/detail/{id}", method = RequestMethod.GET)
	public String viewNewsAdmin(@PathVariable("id") int id, Model model) {
		News news = newsService.getNews(id);
		news.setNewsContent(news.getNewsContent().replaceAll("\n", "<br/>"));
		model.addAttribute("news", news);
		return "/admin/menu/news/detailpage";
	}	
	
	//删除新闻
	@DeleteMapping("/admin/menu/news/delete/{id}")
	public String remove(@PathVariable("id") int id) {		
		newsService.delete(id);		
		return "redirect:/admin/menu/news";
	}
	
	//进入更改新闻页
	@GetMapping("/admin/menu/news/update/{id}")
	public String edit(@PathVariable("id") int id, Model model) {
		News news = newsService.getNews(id);
		model.addAttribute("news", news);
		return "/admin/menu/news/updatepage";
	}
	
	//提交更改的新闻
	@RequestMapping(value = "/admin/menu/news/updatenews", method = RequestMethod.POST)
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
					return "redirect:/admin/menu/news/detail/"+id;
				}
			}
			else {
				newsService.update(news);
				return "redirect:/admin/menu/news/detail/"+id;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/menu/news/error";
	}
	
	@GetMapping(value="admin/menu/news/error")
	public String enterErroe() {
		return "/admin/menu/news/errorpage";
	}

}
