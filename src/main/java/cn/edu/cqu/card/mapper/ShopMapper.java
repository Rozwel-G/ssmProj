package cn.edu.cqu.card.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import cn.edu.cqu.card.model.Shop;

public interface ShopMapper {
	int deleteByPrimaryKey(Integer shopId);

	int insert(Shop record);

	int insertSelective(Shop record);

	Shop selectByPrimaryKey(Integer shopId);
	
	Shop selectKey(Integer shopId);

	int updateByPrimaryKeySelective(Shop record);

	int updateByPrimaryKey(Shop record);

	List<Shop> searchByNameKeyword(String nameKeyword);

	List<Shop> searchByNameAndArea(@Param("name") String name, @Param("province") String province,
			@Param("city") String city, @Param("county") String county, @Param("detail") String detail);
}
