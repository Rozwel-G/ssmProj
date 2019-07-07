package cn.edu.cqu.card.service;

import java.util.List;

import cn.edu.cqu.card.model.News;

public interface NewsService {

	/**
	 * @return 新闻列表，按时间排序
	 */
	List<News> listNews();

	/**
	 * @param newsId 新闻的主键
	 * @return News实例
	 */
	News getNews(int newsId);

	/**
	 * @param news
	 * @return 成功则返回1
	 */
	int addNews(News news);

	
	/**
	 * @param id 删除指定id的新闻
	 */
	int delete(int id);

	int update(News news);

}
