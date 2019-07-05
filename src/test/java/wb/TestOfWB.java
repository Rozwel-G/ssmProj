package wb;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.cqu.card.mapper.CommodityMapper;
import cn.edu.cqu.card.mapper.ShopMapper;
import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.NewsService;
import cn.edu.cqu.card.service.SearchService;
import cn.edu.cqu.card.service.ShopStatisticService;
import cn.edu.cqu.card.service.SmsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-context.xml" })
public class TestOfWB {

	@Autowired
	private CommodityMapper commodityMapper;

	@Autowired
	private ShopMapper shopMapper;
	
	@Autowired
	private SearchService searchService;
	
	@Autowired
	private NewsService newsService;

	@Test
	public void testSearch() {
		try {
			System.err.println("#############################");
			List<Commodity> coms = commodityMapper.searchByNameAndArea("������", "����", "����", "�ϰ�", "��");
			System.out.println(coms);
			System.err.println("#############################");
			List<Shop> shops = shopMapper.searchByNameAndArea("���", "����", "����", "�ϰ�", "��");
			System.out.println(shops);
			
			System.err.println("#############################");
			System.out.println(searchService.searchShop("���", new String[] {"����","����","�ϰ�","��"}));
			System.err.println("#############################");
			System.out.println(searchService.searchShop("���", new String[] {"����","����","�ϰ�"}));
			System.err.println("#############################");
			System.out.println(searchService.searchShop("���", new String[] {"����","����"}));
			System.err.println("#############################");
			System.out.println(searchService.searchShop("���", new String[] {"����"}));
			System.err.println("#############################");
			System.out.println(searchService.searchShop("�ҳ���", null));
			System.err.println("#############################");
			System.out.println(searchService.searchShop("���", null));
			System.err.println("#############################");
			System.out.println(searchService.searchCommodities("���", new String[] {"����","����","�ϰ�","��"}));
			System.err.println("#############################");
			System.out.println(searchService.searchCommodities("���", new String[] {"����","����","�ϰ�"}));
			System.err.println("#############################");
			System.out.println(searchService.searchCommodities("���", new String[] {"����","����"}));
			System.err.println("#############################");
			System.out.println(searchService.searchCommodities("���", new String[] {"����"}));
			System.err.println("#############################");
			System.out.println(searchService.searchCommodities("������", null));
			System.err.println("#############################");
			System.out.println(searchService.searchCommodities("���", null));
			System.err.println("���� 2 #######################");
			System.out.println(searchService.searchShop("", new String[] {"����"}));
			System.out.println(searchService.searchShop("", null));
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	@Test
	public void testNews() {
		System.err.println(newsService.listNews());
	}
	
	@Autowired
	private ShopStatisticService shopStatisticService;
	
	@Test
	public void testStatistic() {
		System.out.println(shopStatisticService.getAllSpendingLogs(1));
		DateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			System.out.println(shopStatisticService.getSpendingLogs(1, dateFormat1.parse("2019-06-30"), dateFormat1.parse("2019-07-1")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.err.println(shopStatisticService.getTodaySpendingLogs(1));
		
	}
	
	@Autowired
	private SmsService smsService;
	@Test
	public void testSms() {
		smsService.sendPassNotice("654321", "13018311530");
	}

}
