package com.gem.hami.dao;

import com.gem.hami.entity.Goods;
import com.gem.hami.entity.QueryPojo;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface GoodsMapper {
    /**
      * @Author：Zhu
       * @param id
      * @Result:Goods
      * @Date：Created in 19:15 2018/6/4
      * @Description 通过商品ID查询商品
     * parameter 商品ID
      * @Modified By:
     */
    public Goods selectGoodsById(int id);
/**
  * @Author：Zhu
   * @param
  * @Result:
  * @Date：Created in 19:20 2018/6/4
  * @Description 按条件查询商品信息
 * name 表示要模糊查询商品的名字
  * sortId 表示排序的类型 1为按学校 2为按热度(点击量) 3为按价格 4为按时间
  * @Modified By:
 */
public List<Goods> selectGoodsByCondition(QueryPojo queryPojo);

    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 19:32 2018/6/4
      * @Description 发布商品
      * @Modified By:
     */
     public boolean insertGoods(Goods goods);
/**
  * @Author：Zhu
   * @param
  * @Result:
  * @Date：Created in 19:41 2018/6/4
  * @Description 商品推荐
  * @Modified By:
 */
    public List<Goods> selectRecommend(@Param("userId") int userId, @Param("goodsId") int goodsId);
/**
  * @Author：Zhu
   * @param
  * @Result:
  * @Date：Created in 19:52 2018/6/4
  * @Description 修改商品信息（点赞、增加点击量）
  * @Modified By:
 */
    public boolean updateGoodsByCondition(Goods goods);
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 19:54 2018/6/4
      * @Description 删除商品
      * @Modified By:
     */
    public boolean deleteGoods(int goodsId);




}