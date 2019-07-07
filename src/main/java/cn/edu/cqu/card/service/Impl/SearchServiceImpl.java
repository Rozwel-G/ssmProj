package cn.edu.cqu.card.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.CommodityMapper;
import cn.edu.cqu.card.mapper.ShopMapper;
import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.model.Shop;
import cn.edu.cqu.card.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private ShopMapper shopMapper;

	@Autowired
	private CommodityMapper commodityMapper;

	/**
	 * @param nameKeyword 商户名称关键字。此字段设置为空字符串即可查找给定地域的所有商家
	 * @param area        地域关键字，含4个字段，依次为 省、市、县（区）、详细地址。此参数可设置为空
	 * @return 商户列表
	 */
	@Override
	public List<Shop> searchShop(String keyword, String[] area) {
		if (area == null) {
			return shopMapper.searchByNameKeyword(keyword);
		}

		switch (area.length) {
		case 4:
			return shopMapper.searchByNameAndArea(keyword, area[0], area[1], area[2], area[3]);
		case 3:
			return shopMapper.searchByNameAndArea(keyword, area[0], area[1], area[2], "");
		case 2:
			return shopMapper.searchByNameAndArea(keyword, area[0], area[1], "", "");
		case 1:
			return shopMapper.searchByNameAndArea(keyword, area[0], "", "", "");
		case 0:
			return shopMapper.searchByNameAndArea(keyword, "", "", "", "");
		default:
			break;
		}

		return null;
	}

	/**
	 * @param nameKeyword 商品名称关键字
	 * @param area        地域关键字，含4个字段，依次为 省、市、县（区）、详细地址。此参数可设置为空
	 * @return 商户列表
	 */
	@Override
	public List<Commodity> searchCommodities(String keyword, String[] area) {
		if (area == null) {
			return commodityMapper.searchByNameKeyword(keyword);
		}

		switch (area.length) {
		case 4:
			return commodityMapper.searchByNameAndArea(keyword, area[0], area[1], area[2], area[3]);
		case 3:
			return commodityMapper.searchByNameAndArea(keyword, area[0], area[1], area[2], "");
		case 2:
			return commodityMapper.searchByNameAndArea(keyword, area[0], area[1], "", "");
		case 1:
			return commodityMapper.searchByNameAndArea(keyword, area[0], "", "", "");
		case 0:
			return commodityMapper.searchByNameAndArea(keyword, "", "", "", "");
		default:
			break;
		}
		return null;
	}

}
