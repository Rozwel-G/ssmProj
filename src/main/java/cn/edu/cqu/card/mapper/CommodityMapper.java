package cn.edu.cqu.card.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.cqu.card.model.Commodity;

public interface CommodityMapper {
	int deleteByPrimaryKey(Integer comId);

	int insert(Commodity record);

	int insertSelective(Commodity record);

	Commodity selectByPrimaryKey(Integer comId);

	int updateByPrimaryKeySelective(Commodity record);

	int updateByPrimaryKey(Commodity record);
	
    Commodity selectByShopIdAndComName(Commodity record);
  
    List<Commodity> selectByShopId(int shopId);

	List<Commodity> searchByNameKeyword(String nameKeyword);

	List<Commodity> searchByNameAndArea(@Param("name") String name, @Param("province") String province,
			@Param("city") String city, @Param("county") String county, @Param("detail") String detail);
}
