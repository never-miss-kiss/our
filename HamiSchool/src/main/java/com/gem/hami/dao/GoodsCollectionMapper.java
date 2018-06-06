package com.gem.hami.dao;

import com.gem.hami.entity.GoodsCollection;

import java.util.List;

public interface GoodsCollectionMapper {
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 19:37 2018/6/4
      * @Description 商品收藏
      * @Modified By:
     */
    public boolean addGoodsCollection(int userId, int goodsId);
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 20:10 2018/6/4
      * @Description 查询用户收藏商品信息
      * @Modified By:
     */
    public List<GoodsCollection> findGoodsCollectionsByCondition(int userId);
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 20:13 2018/6/4
      * @Description 删除用户收藏商品信息
      * @Modified By:
     */
    public boolean removeGoodsCollection(int goodsCollectionId);

}