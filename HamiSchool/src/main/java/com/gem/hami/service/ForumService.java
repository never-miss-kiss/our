package com.gem.hami.service;

import com.gem.hami.entity.*;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface ForumService {
//    /forum/findForumPostByCondition.action
//    显示帖子列表（按学校，按时间，按点击量）
//    显示帖子点赞量
//    显示帖子点击量


//userId 用户id(用户id)    根据用户号查帖子
//schoolId  学校的id,学生属于哪个学校查哪个学校
//sortId分类 type 排序类型(如按时间,按点击量)
//显示帖子点击量
    public List<ForumPost> findTopForumPostBySchoolId(int schoolId);

    public PageInfo<ForumPost> findTopForumPostBySchoolId1(Map<String, Object> map);

//    public List<ForumPost> selectForumPostByTime(int schoolId);

    public List<ForumPost> selectForumPostByLikeCount(int schoolId);

    public List<ForumPost> findForumPostsByCondition(int userId);

    //根据帖子id查找某个帖子，用于帖子详情
    /**
      * @Author：sunshilin
      * @param: * @param null
      * @result:
      * @Description:用来显示某帖子详情的所有内容
      * @Date：Created in 18:52 2018/6/12
      * @Modified By:
     */
    public ForumPost findForumPostByForudId(int forumId);
    public List<ForumPostComment> findForumComment(int forumId);
//    public ForumCommentReply findOneAllReply(int userId,int forumId);

    //根据帖子id查询某帖子下的所有评论回复
    public List<ForumCommentReply> findForumCommentReply(int forumId);
//    /forum/addForumPost.action
//    发表论坛帖子（即发帖）
    public boolean addForumPost(ForumPost forumPost);

//    /forum/modifyForumPost.action
//    帖子点赞量的增加
//    修改是否置顶
// forumPostId 帖子Id ， isTop是否置顶
    //实现方法若isTop为true
    public boolean modifyForumPost(int forumPostId, boolean isTop);

//   /forum/addForumPostComment.action
//   帖子评论
    public boolean addForumPostComment(ForumPostComment forumPostComment);


//   /forum/addForumCommentReply.action
//            对评论的回复
    public boolean addForumCommentReply(ForumCommentReply forumCommentReply);

///forum/removeForumCommentReply.action
//            删除回复
//  根据帖子id去删除
    public boolean removeForumCommentReply(int replyId);

//    /forum/removeForumPostComment.action
//            删除评论
    public boolean removeForumPostComment(int commentId);

//    /forum/removeForumPost.action
//            删帖
    public  boolean removeForumPost(int postId);

    //     /home/findCollectionByCondition.action
//    显示我的收藏（帖子)：
//   userId 用户号
    public List<ForumPostCollection> findForumPostCollectionsbyCondition(int userId);

/**
  * @Author：sunshilin
  * @param: 一条收藏
  * @result:
  * @Description: 添加收藏
  * @Date：Created in 20:16 2018/6/4
  * @Modified By:
 */
    public boolean addForumPostCollection(int userId, int forumId);


// /home/removeCollection.action
//            取消收藏的东西
// collectionId  表示要删除的数据在它的表中的主键
    public boolean removeForumPostCollection(int forumPostCollectionId);

    public List<ForumPostLike> findForumPostLikeByUserId(int userid);

}
