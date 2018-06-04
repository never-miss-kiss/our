package com.gem.hami.dao;

import com.gem.hami.entity.ForumCommentReply;
import com.gem.hami.entity.ForumPost;
import com.gem.hami.entity.ForumPostCollection;
import com.gem.hami.entity.ForumPostComment;

import java.util.List;

public interface ForumPostMapper {

/**
  * @Author：sunshilin
  * @param: * @param null
  * @result:返回帖子的集合
  * @Description:查询某特定学校所有的置顶帖子
  * @Date：Created in 19:09 2018/6/4
  * @Modified By:
 */
    public List<ForumPost> selectTopForumPostBySchoolId(int schoolId);



    /**
      * @Author：sunshilin
      * @param: * @param null
      * @result:非置顶帖子的集合
      * @Description:按照时间排序，查询某学校的非置顶帖子
      * @Date：Created in 19:13 2018/6/4
      * @Modified By:
     */
    public List<ForumPost> selectForumPostByTime(int schoolId);



    /**
      * @Author：sunshilin
      * @param: 某学校的id
      * @result: 帖子集合
      * @Description:按照点赞量从高到低查询出所有的帖子
      * @Date：Created in 19:18 2018/6/4
      * @Modified By:
     */
    public List<ForumPost> selectForumPostByLikeCount(int schoolId);



    /**
      * @Author：sunshilin
      * @param:用户id
      * @result:帖子集合
      * @Description:用户发表的帖子集合
      * @Date：Created in 19:27 2018/6/4
      * @Modified By:
     */
    public List<ForumPost> selectOnesForumPost(int userId);




    //用到了user详细信息的一个方法



    /**
      * @Author：sunshilin
      * @param: * @param null
      * @result:插入成功或失败
      * @Description:发表帖子时将帖子内容插入数据库
      * @Date：Created in 19:36 2018/6/4
      * @Modified By:
     */
    public boolean  insertForumPost();




    //问题：管理员删除帖子要不要日志记录



    /**
      * @Author：sunshilin
      * @param: 帖子的id
      * @result:
      * @Description:根据业务层传来的id将帖子设为置顶状态
      * @Date：Created in 19:49 2018/6/4
      * @Modified By:
     */
    public void  updateForumPostIsTop(int forumPostId);



    /**
      * @Author：sunshilin
      * @param: 帖子id
      * @result:
      * @Description:将帖子设为不置顶
      * @Date：Created in 19:55 2018/6/4
      * @Modified By:
     */
    public void  updateForumPostIsnotTop(int forumPostId);



    /**
      * @Author：sunshilin
      * @param: 帖子id
      * @result:
      * @Description: 根据id删除某条帖子
      * @Date：Created in 20:10 2018/6/4
      * @Modified By:
     */
    public  boolean deleteForumPost(int postId);











}