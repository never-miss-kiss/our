package com.gem.hami.dao;

import com.gem.hami.entity.ForumPostLike;

import java.util.List;

public interface ForumPostLikeMapper {

        public List selectForumPostLikeByUserId(int userid);

        public int selectForumPostLikeCountByPostId(int formPostId);

        public boolean updateForumPostLikeCountByPostId(int formPostId);

        public boolean addForumPostLikeCountByPostId(int formPostId);

        public boolean addForumPostLike(ForumPostLike forumPostLike);

        public boolean deleteForumPostLike(int userid, int forumpostid);

        public ForumPostLike selectForumPostLike(int userid, int forumpostid);

}