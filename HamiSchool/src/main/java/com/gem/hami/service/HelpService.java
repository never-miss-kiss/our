package com.gem.hami.service;

import com.gem.hami.entity.*;

import java.util.List;

public interface HelpService {

//    /help/findHelpByCondition.action
//    显示所有跑腿信息（按学校)
//   按用户号查询
//   按发布时间,点击量排序
// userId 用户号，schoolId 学校号，sortId（排序方式：1.按发布时间，2点击量排序）
    public List<HelpInfo> findHelpByCondition(int userId,int schoolId,int sortId);

//    /help/addHelp.action
//    添加跑腿信息（帮我买，帮我取，帮我送，代排队）
//    帮我买，
//    帮我取，
//    帮我送，
//    代排队
    public List<HelpBuy> addHelpBuy(HelpBuy helpBuy);
    public List<HelpFetch> addHelpFetch(HelpFetch helpFetch);
    public List<HelpSend> addHelpSend(HelpSend helpSend);
    public List<HelpQueue> addHelpQueue(HelpQueue helpQueue);


//    /help/addHelpComment.action
//            对跑腿贴评论
    public boolean addHelpComment(HelpComment helpComment);


    //    /help/addCommentReply.action
//            对评论回复
    public boolean addCommentReply(HelpCommentReply helpCommentReply);


    //     /help/removeHelp.action
//            删除跑腿信息
//type 跑腿类型 ,helpId跑腿主键id
    public boolean removeHelp(short typeId,int helpId);

//    /help/removeHelpComment.action
//            删除跑腿信息评论
    public boolean removeHelpComment(int helpCommentId);

//    /help/removeHelpCommentReply.action
//            删除跑腿信息评论回复
    public boolean removeHelpCommentReply(int replyId);

}
