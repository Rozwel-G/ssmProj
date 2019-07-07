package cn.edu.cqu.card.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Random;
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

import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.model.News;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.CommodityService;
import cn.edu.cqu.card.service.NewsService;
import cn.edu.cqu.card.service.ShopService;

@Controller
public class IndexController {

	@Autowired
	NewsService newsService;
	
	@Autowired
	ShopService shopService;
	
	@Autowired
	CommodityService commodityService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String viewIndex( Model model) {
		return viewIndex2(model);
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String viewIndex2( Model model) {
		
		Random random = new Random();     

		News news1 = newsService.getNews((random.nextInt(2)+1));
		News news2 = newsService.getNews((random.nextInt(2)+1));
		News news3 = newsService.getNews((random.nextInt(2)+1));
		News news4 = newsService.getNews((random.nextInt(2)+1));
		
		int shopRandom[]=random(6,7);
		Shop[] shops=new Shop[6];
		for(int i=0;i<6;i++){
			shops[i]=shopService.showShops(shopRandom[i]);
		}

		
		int commodityRandom[]=random(12,40);
		Commodity comms[]=new Commodity[12];
		for(int i=0;i<12;i++){
			comms[i]=commodityService.commodity(commodityRandom[i]);
		}

		model.addAttribute("news1", news1);
		model.addAttribute("news2", news2);
		model.addAttribute("news3", news3);
		model.addAttribute("news4", news4);

		model.addAttribute("shop1",shops[0]);
		model.addAttribute("shop2",shops[1]);
		model.addAttribute("shop3",shops[2]);
		model.addAttribute("shop4",shops[3]);
		model.addAttribute("shop5",shops[4]);
		model.addAttribute("shop6",shops[5]);
		
		model.addAttribute("comm1",comms[0]);
		model.addAttribute("comm2",comms[1]);
		model.addAttribute("comm3",comms[2]);
		model.addAttribute("comm4",comms[3]);
		model.addAttribute("comm5",comms[4]);
		model.addAttribute("comm6",comms[5]);
		model.addAttribute("comm7",comms[6]);
		model.addAttribute("comm8",comms[7]);
		model.addAttribute("comm9",comms[8]);
		model.addAttribute("comm10",comms[9]);
		model.addAttribute("comm11",comms[10]);
		model.addAttribute("comm12",comms[11]);
		return "/index";
	}	
	
	public int[] random(int count,int range){
		Random random = new Random();     
		int ran[]=new int[count];
		int flag=0;
		for(int i=0;i<count;i++){
			int temp=random.nextInt(range)+1;
			for(int j=0;j<i;j++){
				if(ran[j]==temp){
					flag=1;
					break;
				}
			}
			if(flag==0){
				ran[i]=temp;
			}else{
				i--;
				flag=0;
			}
		}
		return ran;
	}

}
