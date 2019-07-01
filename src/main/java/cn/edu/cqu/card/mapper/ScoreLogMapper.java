package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.ScoreLog;

public interface ScoreLogMapper {
	int deleteByPrimaryKey(Integer scoreLogId);

	int insert(ScoreLog record);

	int insertSelective(ScoreLog record);

	ScoreLog selectByPrimaryKey(Integer scoreLogId);

	int updateByPrimaryKeySelective(ScoreLog record);

	int updateByPrimaryKey(ScoreLog record);

}