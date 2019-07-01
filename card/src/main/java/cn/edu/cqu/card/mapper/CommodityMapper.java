package cn.edu.cqu.card.mapper;

import cn.edu.cqu.card.model.Commodity;

public interface CommodityMapper {
    int deleteByPrimaryKey(Integer comId);

    int insert(Commodity record);

    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(Integer comId);

    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);
}