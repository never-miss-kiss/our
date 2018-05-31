package com.gem.hami.dao;

import com.gem.hami.entity.GoodsCommentReply;
import com.gem.hami.entity.GoodsCommentReplyExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsCommentReplyMapper {
    long countByExample(GoodsCommentReplyExample example);

    int deleteByExample(GoodsCommentReplyExample example);

    int deleteByPrimaryKey(Integer goodsCommentReplyId);

    int insert(GoodsCommentReply record);

    int insertSelective(GoodsCommentReply record);

    List<GoodsCommentReply> selectByExample(GoodsCommentReplyExample example);

    GoodsCommentReply selectByPrimaryKey(Integer goodsCommentReplyId);

    int updateByExampleSelective(@Param("record") GoodsCommentReply record, @Param("example") GoodsCommentReplyExample example);

    int updateByExample(@Param("record") GoodsCommentReply record, @Param("example") GoodsCommentReplyExample example);

    int updateByPrimaryKeySelective(GoodsCommentReply record);

    int updateByPrimaryKey(GoodsCommentReply record);
}