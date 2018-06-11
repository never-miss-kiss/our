package com.gem.hami.control;

import com.gem.hami.entity.ForumCommentReply;
import com.gem.hami.entity.ForumPost;
import com.gem.hami.entity.ForumPostCollection;
import com.gem.hami.entity.ForumPostComment;
import com.gem.hami.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;


@RequestMapping(value = "/forum")
@Controller
public class ForumControl {
    @Autowired
    private ForumService forumService;

     ForumPostComment forumPostComment;

    @RequestMapping(value = "/list.action")
    public void listTop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("flist",forumService.findTopForumPostBySchoolId(4));
        request.setAttribute("tlist",forumService.selectForumPostByTime(4));

        request.getRequestDispatcher("/sun/delete.jsp").forward(request,response);
    }


    @RequestMapping(value = "/postandcomment.action")
    public void listones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("olist",forumService.findForumPostsByCondition(1));
        request.getRequestDispatcher("/sun/jsp/postandcomment.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addpost.action")
    public void insertpost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ForumPost forumPost = new ForumPost();
        forumPost.setUserId(4);
        forumPost.setContent(null);
        forumPost.setReleaseTime(new Date());
        forumPost.setTitle("rng三名队员录制天天向上!");
        forumPost.setIsAdvertisement("T");
        request.setAttribute("olist",forumService.addForumPost(forumPost));
        System.out.println(forumService.addForumPost(forumPost));
        response.sendRedirect("/HamiSchool/forum/list.action");
    }


    @RequestMapping(value = "/isTop.action")
    public void isTop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("olist",forumService.modifyForumPost(1,true));

    }


    @RequestMapping(value = "/addcomment.action")
    public void addComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       forumPostComment=new ForumPostComment();
        forumPostComment.setContent("你说的有道理");
       forumPostComment.setUserId(1);
       forumPostComment.setForumPostId(3);
       forumPostComment.setReleaseTime(new Date());

        forumService.addForumPostComment(forumPostComment);
        System.out.println(forumService.addForumPostComment(forumPostComment));
    }

    @RequestMapping(value = "/addcommentreply.action")
    public void addCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ForumCommentReply forumCommentReply =new ForumCommentReply();
        forumCommentReply.setContent("谢谢支持");
        forumCommentReply.setCommentedUserId(1);
        forumCommentReply.setUserId(8);
        forumCommentReply.setCreateTime(new Date());
        forumCommentReply.setForumPostCommentId(11);

        forumService.addForumCommentReply(forumCommentReply);

    }


    @RequestMapping(value = "/deletecommentreply.action")
    public void deleteCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ForumCommentReply forumCommentReply =new ForumCommentReply();


        forumService.removeForumCommentReply(2);

    }
//    //删除帖子评论
//    @RequestMapping(value = "/deletecomment.action")
//    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ForumCommentReply forumCommentReply =new ForumCommentReply();
//
//
//        forumService.removeForumCommentReply(2);
//
//    }



























    @RequestMapping(value = "/showonesCollection.action")
    public void showCollection(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("clist",forumService.findForumPostCollectionsbyCondition(1));
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }


    @RequestMapping(value = "/addonesCollection.action")
    public void addCollection(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ForumPostCollection forumPostCollection = new ForumPostCollection();
        forumPostCollection.setForumPostId(1);
        forumPostCollection.setUserId(2);
        forumPostCollection.setTime(new Date());
        forumService.addForumPostCollection(forumPostCollection);
    }


    @RequestMapping(value = "/deletecollection.action")
    public void deleteCollection(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        forumService.removeForumPostCollection(2);

    }












































}
