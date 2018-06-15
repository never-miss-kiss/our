package com.gem.hami.service;

import com.gem.hami.entity.*;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface HelpService {

    //    /help/findHelpsByCondition.action
//    显示所有跑腿信息（按学校)
//   按用户号查询
//   按发布时间,点击量排序
// userId 用户号，schoolId 学校号，sortId（排序方式：1.按发布时间，2点击量排序）
    public List<HelpInfo> findHelpsByCondition(int userId,int schoolId,int sortId);

    public PageInfo<HelpInfo> findBuyInfosByCreateTime(Map<String, Object> map);
    public PageInfo<HelpInfo> findSendInfosByCreateTime(Map<String, Object> map);
    public PageInfo<HelpInfo> findFetchInfosByCreateTime(Map<String, Object> map);
    public PageInfo<HelpInfo> findQueueInfosByCreateTime(Map<String, Object> map);
    public PageInfo<HelpInfo> findAllHelpsByCreateTime(Map<String, Object> map);

//    查找单个跑腿信息
    public HelpBuy findHelpBuy(int helpId);
    public HelpSend findHelpSend(int helpId);
    public HelpFetch findHelpFetch(int helpId);
    public HelpQueue findHelpQueue(int helpId);

//    /help/addHelp.action
//    添加跑腿信息（帮我买，帮我取，帮我送，代排队）
//    帮我买，
//    帮我取，
//    帮我送，
//    代排队

    //    /help/addHelpBuy.action
    public boolean addHelpBuy(HelpBuy helpBuy);

    //    /help/addHelpFetch.action
    public boolean addHelpFetch(HelpFetch helpFetch);

    //    /help/addHelpSend.action
    public boolean addHelpSend(HelpSend helpSend);

    //    /help/addHelpQueue.action
    public boolean addHelpQueue(HelpQueue helpQueue);

    public boolean modifyHelpClickCount(int typeId,int helpId);


//显示跑腿贴下面的评论
//按帖子显示
//按用户号显示
//  /findHelpCommentsByCondition.action
    public List<HelpComment> findHelpCommentsByCondition(int typeId,int helpId,int userId);

//显示回复
//按评论号显示回复
    public List<HelpCommentReply> findReplysByCommentId(int commentId);

//按回复id显示回复
    public HelpCommentReply findReplyByReplyId(int replyId);



    //    /help/addHelpComment.action
//            对跑腿贴评论
    public boolean addHelpComment(HelpComment helpComment);


    //    /help/addCommentReply.action
//            对评论回复
    public boolean addHelpCommentReply(HelpCommentReply helpCommentReply);


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
