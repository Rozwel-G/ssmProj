package cn.edu.cqu.card.mapper;

import java.util.List;

import cn.edu.cqu.card.model.Commodity;

public interface CommodityMapper {
    int deleteByPrimaryKey(Integer comId);

    int insert(Commodity record);

    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(Integer comId);
    
    List<Commodity> selectByShopId(int shopId);

    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);
}