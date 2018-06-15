package com.gem.hami.dao;

import com.gem.hami.entity.GoodsComment;

import java.util.List;

public interface GoodsCommentMapper {

    //查询单个商品的相关评论
    public List<GoodsComment> selectGoodsCommentByGoodsId(int goodsId);

//    查询单个评论
    public GoodsComment selectGoodsCommentByGoodsCommentId(int goodsCommentId);
    /**
     * @Author：Zhu
     * @param
     * @Result:
     * @Date：Created in 19:33 2018/6/4
     * @Description 添加商品评论
     * @Modified By:
     */
    public boolean insertGoodsComment(GoodsComment goodsComment);
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 19:54 2018/6/4
      * @Description 删除商品评论
      * @Modified By:
     */
    public boolean deleteGoodsComment(int goodsCommentId);


}