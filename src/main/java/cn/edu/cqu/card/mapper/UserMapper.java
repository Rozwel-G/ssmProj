package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(String userPhone);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userPhone);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    int updateSomeAttribute(User record);
}