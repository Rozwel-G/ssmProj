package cn.edu.cqu.card.service;

import java.util.List;

import cn.edu.cqu.card.model.Commodity;
import cn.edu.cqu.card.model.Shop;

public interface SearchService {
	/**
	 * @param nameKeyword 商户名称关键字
	 * @param area        地域关键字，含4个字段，依次为 省、市、县（区）、详细地址。此参数可设置为空
	 * @return 商户列表
	 */
	List<Shop> searchShop(String nameKeyword, String[] area);

	/**
	 * @param nameKeyword 商品名称关键字
	 * @param area        地域关键字，含4个字段，依次为 省、市、县（区）、详细地址。此参数可设置为空
	 * @return 商户列表
	 */
	List<Commodity> searchCommodities(String nameKeyword, String[] area);

}
