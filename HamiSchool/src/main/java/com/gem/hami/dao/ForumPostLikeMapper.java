package com.gem.hami.dao;

import com.gem.hami.entity.ForumPostLike;

import java.util.List;

public interface ForumPostLikeMapper {

        public List<ForumPostLike> selectForumPostLikeByUserId(int userid);

}