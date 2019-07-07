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
