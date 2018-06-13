package com.gem.hami.control;

import com.gem.hami.entity.ForumCommentReply;
import com.gem.hami.entity.ForumPost;
import com.gem.hami.entity.ForumPostCollection;
import com.gem.hami.entity.ForumPostComment;
import com.gem.hami.service.ForumService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


@RequestMapping(value = "/forum")
@Controller
public class ForumControl {
    @Autowired
    private ForumService forumService;

     ForumPostComment forumPostComment;

    @RequestMapping(value = "/list.action")
    public void listTop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("flist",forumService.findTopForumPostBySchoolId(4));
//        request.setAttribute("tlist",forumService.selectForumPostByTime(4));
        Map<String,Object> cmap = new HashMap<>();
        cmap.put("schoolId",4);
        int pageSize=2;
        int curPage=1;
        String scurPage = request.getParameter("curPage");
        if (scurPage!=null&&!scurPage.trim().equals("")){

            curPage=Integer.parseInt(scurPage);
        }
        cmap.put("curPage",curPage);
//           每页显示的条数
        cmap.put("pageSize",pageSize);

        PageInfo<ForumPost> pageInfo=forumService.findTopForumPostBySchoolId1(cmap);
        request.setAttribute("pageInfo",pageInfo);
        System.out.println(pageInfo);
        request.getRequestDispatcher("/sun/delete.jsp").forward(request,response);
    }



    @RequestMapping(value = "/postandcomment.action")
    public void listones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("olist",forumService.findForumPostsByCondition(1));
        request.getRequestDispatcher("/sun/jsp/postandcomment.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addpost.action")
    public void insertpost(ForumPost forumPost,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id= UUID.randomUUID().toString().replaceAll("-","");
        forumPost.setUserId(4);
        forumPost.setReleaseTime(new Date());
        forumService.addForumPost(forumPost);
        request.getServletContext().setAttribute("forumPost",forumPost);
        response.sendRedirect(request.getContextPath()+"/sun/jsp/postandcomment.jsp");
//        response.sendRedirect(request.getContextPath()+"/infor.jsp");sun/jsp/postandcomment.jsp
//        request.setAttribute("olist",forumService.addForumPost(forumPost));
//        System.out.println(forumService.addForumPost(forumPost));
//        response.sendRedirect("/HamiSchool/forum/list.action");
//    }
//    @RequestMapping(value = "/content")
//    public  void forumContent(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
//        String postId=request.getParameter("postId");
//        int postid = Integer.parseInt(postId);
//        ForumPost forumPost = forumService.findForumPostByForudId(postid);
//        System.out.println(forumPost.getReleaseTime());
//        System.out.println(postid);
//        request.setAttribute("Forum",forum);
//        request.getRequestDispatcher("/sun/jsp/postandcomment.jsp").forward(request,response);

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

       PrintWriter out = response.getWriter();

       String forumId=  request.getParameter("forumId");
//        String userId=  request.getParameter("userId");
       int forumid = Integer.parseInt(forumId);
//        int userid = Integer.parseInt(userId);
        System.out.println(forumService.addForumPostCollection(3,forumid));
//        if (forumService.addForumPostCollection(3,forumid)){
//            out.println(false);
//        }else {
            out.println(true);


        System.out.println("到这了吗");
//        System.out.println(forumId);

    }


    @RequestMapping(value = "/deletecollection.action")
    public void deleteCollection(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        forumService.removeForumPostCollection(2);

    }












































}
