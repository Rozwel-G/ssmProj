package cn.edu.cqu.card.mapper;

import java.util.List;

import cn.edu.cqu.card.model.News;

public interface NewsMapper {
	int deleteByPrimaryKey(Integer newsId);

	int insert(News record);

	int insertSelective(News record);

	News selectByPrimaryKey(Integer newsId);

	int updateByPrimaryKeySelective(News record);

	int updateByPrimaryKey(News record);

	List<News> selectNews();
}