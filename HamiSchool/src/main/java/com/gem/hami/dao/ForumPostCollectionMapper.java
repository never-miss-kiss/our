package com.gem.hami.dao;

import com.gem.hami.entity.ForumPostCollection;

import java.util.List;

public interface ForumPostCollectionMapper {

    /**
     * @Author：sunshilin
     * @param:用户id
     * @result:    收藏集合
     * @Description: 将该用户所有的收藏显示出来
     * @Date：Created in 20:12 2018/6/4
     * @Modified By:
     */
    public List<ForumPostCollection> selectForumPostCollectionsbyCondition(int userId);



    /**
     * @Author：sunshilin
     * @param: 一个收藏
     * @result:
     * @Description: 添加收藏
     * @Date：Created in 20:17 2018/6/4
     * @Modified By:
     */
    public boolean insertForumPostCollection(ForumPostCollection forumPostCollection);



    /**
     * @Author：sunshilin
     * @param: 帖子收藏表id
     * @result:
     * @Description: 将一条收藏从帖子收藏表删除
     * @Date：Created in 20:19 2018/6/4
     * @Modified By:
     */
    public boolean removeForumPostCollection(int forumPostCollectionId);



}