package com.gem.hami.dao;

import com.gem.hami.entity.Admin;
import com.gem.hami.entity.HelpComment;

public interface HelpCommentMapper {

    /**
      * @Author：Tian
      * @Description：添加评论
      * @Result:
      * @Date：Created in 20:02 2018/6/4
      * @Modified By:
     */
    public boolean insertHelpComment(HelpComment helpComment);

    public boolean deleteHelpComment(int helpCommentReplyId);


}