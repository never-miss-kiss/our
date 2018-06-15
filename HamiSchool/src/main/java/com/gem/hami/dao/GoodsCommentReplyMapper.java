package com.gem.hami.dao;

import com.gem.hami.entity.GoodsCommentReply;

import java.util.List;

public interface GoodsCommentReplyMapper {


    //查询用户之间的评论
    public List<GoodsCommentReply> selectGoodsCommentReply(int goodsCommentId);

    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 19:35 2018/6/4
      * @Description 添加回复评论
      * @Modified By:
     */
    public boolean insertGoodsCommentReply(GoodsCommentReply goodsCommentReply);
/**
  * @Author：Zhu
   * @param
  * @Result:
  * @Date：Created in 20:02 2018/6/4
  * @Description 删除商品回复评论
  * @Modified By:
 */
    public boolean deleteGoodsCommentReply(int replyId);

}