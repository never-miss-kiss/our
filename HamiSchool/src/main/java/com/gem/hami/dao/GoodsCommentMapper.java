package com.gem.hami.dao;

import com.gem.hami.entity.GoodsComment;

public interface GoodsCommentMapper {
    /**
     * @Author：Zhu
     * @param
     * @Result:
     * @Date：Created in 19:33 2018/6/4
     * @Description 添加商品评论
     * @Modified By:
     */
    public boolean addGoodsComment(GoodsComment goodsComment);
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 19:54 2018/6/4
      * @Description 删除商品评论
      * @Modified By:
     */
    public boolean removeGoodsComment(int goodsCommentId);


}