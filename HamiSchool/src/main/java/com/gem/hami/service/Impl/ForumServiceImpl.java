package com.gem.hami.service.Impl;

import com.gem.hami.dao.ForumCommentReplyMapper;
import com.gem.hami.dao.ForumPostCollectionMapper;
import com.gem.hami.dao.ForumPostCommentMapper;
import com.gem.hami.dao.ForumPostMapper;
import com.gem.hami.entity.ForumCommentReply;
import com.gem.hami.entity.ForumPost;
import com.gem.hami.entity.ForumPostCollection;
import com.gem.hami.entity.ForumPostComment;
import com.gem.hami.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ForumServiceImpl implements ForumService {
    @Autowired
    private ForumPostMapper forumPostMapper;
    @Autowired
    private ForumPostCommentMapper forumPostCommentMapper;
    @Autowired
    private ForumCommentReplyMapper forumCommentReplyMapper;
    @Autowired
    private ForumPostCollectionMapper forumPostCollectionMapper;

    @Override
    public List<ForumPost> findTopForumPostBySchoolId(int schoolId) {
        return forumPostMapper.selectTopForumPostBySchoolId(schoolId);
    }

    @Override
    public List<ForumPost> selectForumPostByTime(int schoolId) {
        return forumPostMapper.selectForumPostByTime(schoolId);
    }

    @Override
    public List<ForumPost> selectForumPostByLikeCount(int schoolId) {
        return null;
    }

    @Override
    public List<ForumPost> findForumPostsByCondition(int userId) {

        return forumPostMapper.selectOnesForumPost(userId);
    }

    @Override
    public boolean addForumPost(ForumPost forumPost) {
        return forumPostMapper.insertForumPost(forumPost);
    }

    @Override
    public boolean modifyForumPost(int forumPostId, boolean isTop) {
        if (isTop==true) {
            return forumPostMapper.updateForumPostIsTop(forumPostId);
        }
        return forumPostMapper.updateForumPostIsnotTop(forumPostId);
    }

    @Override
    public boolean addForumPostComment(ForumPostComment forumPostComment) {

        return forumPostCommentMapper.insertForumPostComment(forumPostComment);
    }

    @Override
    public boolean addForumCommentReply(ForumCommentReply forumCommentReply) {
        return forumCommentReplyMapper.insertForumCommentReply(forumCommentReply);
    }

    @Override
    public boolean removeForumCommentReply(int replyId) {

        return forumCommentReplyMapper.deleteForumCommentReply(replyId);
    }

    @Override
    public boolean removeForumPostComment(int commentId) {

        return forumPostCommentMapper.deleteForumPostComment(commentId);
    }

    @Override
    public boolean removeForumPost(int postId) {

        return forumPostMapper.deleteForumPost(postId);
    }

    @Override
    public List<ForumPostCollection> findForumPostCollectionsbyCondition(int userId) {

        return forumPostCollectionMapper.selectForumPostCollectionsbyCondition(userId);
    }

    @Override
    public boolean addForumPostCollection(ForumPostCollection forumPostCollection) {

        return forumPostCollectionMapper.insertForumPostCollection(forumPostCollection);
    }

    @Override
    public boolean removeForumPostCollection(int forumPostCollectionId) {

        return forumPostCollectionMapper.removeForumPostCollection(forumPostCollectionId);
    }
}
