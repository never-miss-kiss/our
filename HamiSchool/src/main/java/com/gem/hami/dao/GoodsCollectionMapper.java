package com.gem.hami.dao;

import com.gem.hami.entity.GoodsCollection;
import com.gem.hami.entity.GoodsCollectionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsCollectionMapper {
    long countByExample(GoodsCollectionExample example);

    int deleteByExample(GoodsCollectionExample example);

    int deleteByPrimaryKey(Integer goodsCollectionId);

    int insert(GoodsCollection record);

    int insertSelective(GoodsCollection record);

    List<GoodsCollection> selectByExample(GoodsCollectionExample example);

    GoodsCollection selectByPrimaryKey(Integer goodsCollectionId);

    int updateByExampleSelective(@Param("record") GoodsCollection record, @Param("example") GoodsCollectionExample example);

    int updateByExample(@Param("record") GoodsCollection record, @Param("example") GoodsCollectionExample example);

    int updateByPrimaryKeySelective(GoodsCollection record);

    int updateByPrimaryKey(GoodsCollection record);
}