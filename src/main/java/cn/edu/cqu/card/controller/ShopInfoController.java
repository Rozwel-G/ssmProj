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
public class ShopInfoController {


	@Autowired
	ShopService shopService;
	@Autowired
	CommodityService commodityService;
	
	@RequestMapping(value = "/shop/{id}", method = RequestMethod.GET)
	public String viewNews( @PathVariable("id") int id,Model model) {
		System.out.println(id);
		Random random = new Random();     
		
		Shop shop=shopService.showShops(id);
		
		List<Commodity> comm=commodityService.commodities(id);
		int length = comm.size();
		int commodityRandom[]=random(6,length);
		Commodity comms[]=new Commodity[6];
		for(int i=0;i<6;i++){
			comms[i]=comm.get(commodityRandom[i]);
		}
		
		model.addAttribute("shop", shop);
		model.addAttribute("comm1",comms[0]);
		model.addAttribute("comm2",comms[1]);
		model.addAttribute("comm3",comms[2]);
		model.addAttribute("comm4",comms[3]);
		model.addAttribute("comm5",comms[4]);
		model.addAttribute("comm6",comms[5]);
		return "shop";
	}	
	
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String viewNews(Model model) {
		 
		return "redirect:/index";
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
