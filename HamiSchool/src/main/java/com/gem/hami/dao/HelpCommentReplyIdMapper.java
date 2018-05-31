package com.gem.hami.dao;

import com.gem.hami.entity.HelpCommentReplyId;
import com.gem.hami.entity.HelpCommentReplyIdExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HelpCommentReplyIdMapper {
    long countByExample(HelpCommentReplyIdExample example);

    int deleteByExample(HelpCommentReplyIdExample example);

    int deleteByPrimaryKey(Integer helpCommentReplyId);

    int insert(HelpCommentReplyId record);

    int insertSelective(HelpCommentReplyId record);

    List<HelpCommentReplyId> selectByExample(HelpCommentReplyIdExample example);

    HelpCommentReplyId selectByPrimaryKey(Integer helpCommentReplyId);

    int updateByExampleSelective(@Param("record") HelpCommentReplyId record, @Param("example") HelpCommentReplyIdExample example);

    int updateByExample(@Param("record") HelpCommentReplyId record, @Param("example") HelpCommentReplyIdExample example);

    int updateByPrimaryKeySelective(HelpCommentReplyId record);

    int updateByPrimaryKey(HelpCommentReplyId record);
}