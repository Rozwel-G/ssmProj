package cn.edu.cqu.card.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.cqu.card.mapper.NewsMapper;
import cn.edu.cqu.card.model.News;
import cn.edu.cqu.card.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsMapper newsMapper;

	@Override
	public List<News> listNews() {
		return newsMapper.selectNews();
	}

	@Override
	public News getNews(int newsId) {
		return newsMapper.selectByPrimaryKey(newsId);
	}

	@Override
	public int addNews(News news) {
		int res = newsMapper.insert(news);
		return res;
	}
	
	@Override
	public int delete(int id) {
		return newsMapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public int update(News news) {
		return newsMapper.updateByPrimaryKeySelective(news);
	}

}
