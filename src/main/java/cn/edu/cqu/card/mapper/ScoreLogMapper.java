package cn.edu.cqu.card.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.cqu.card.model.ScoreLog;


public interface ScoreLogMapper {
    int deleteByPrimaryKey(Integer scoreLogId);

    int insert(ScoreLog record);

    int insertSelective(ScoreLog record);

    List<ScoreLog> select(String userPhone);

    int updateByPrimaryKeySelective(ScoreLog record);

    int updateByPrimaryKey(ScoreLog record);
    
    List<ScoreLog> selectByUserPhone(String userPhone);

	List<ScoreLog> selectByUserPhoneAndTime(@Param("userPhone") String userPhone, @Param("begin") Date begin,
			@Param("end") Date end);

}