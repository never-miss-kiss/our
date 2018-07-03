package com.gem.hami.control;

import com.gem.hami.entity.*;
import com.gem.hami.service.ForumService;
import com.gem.hami.service.GoodsService;
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
import java.util.List;
import java.util.Map;


@RequestMapping(value = "/forum")
@Controller
public class ForumControl {
    @Autowired
    private ForumService forumService;
    @Autowired
    private GoodsService goodsService;

     ForumPostComment forumPostComment;

    @RequestMapping(value = "/list.action")
    public void listTop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,Object> cmap = new HashMap<>();
        User user= (User) request.getSession().getAttribute("userInfo");
        String schoId = request.getParameter("schoId");

        if (schoId == null) {
            if (user != null) {
                System.out.println(user.getSchoolId());
                System.out.println("123");
                cmap.put("schoolId", user.getSchoolId());
                int pageSize = 12;
                int curPage = 1;
                String scurPage = request.getParameter("curPage");
                if (scurPage != null && !scurPage.trim().equals("")) {
                    curPage = Integer.parseInt(scurPage);
                }
                cmap.put("curPage", curPage);
                cmap.put("pageSize", pageSize);
                PageInfo<ForumPost> pageInfo = forumService.findTopForumPostBySchoolId1(cmap);

//            论坛用户点赞同步
                List likelist = forumService.findForumPostLikeByUserId(user.getUserId());
                int length = likelist.size();
//            论坛商品显示
                List<Goods> listtransportion = goodsService.getFourRandomGoodsByTransport();
                List<Goods> listnottrans = goodsService.getTwoRandomGoodsnotTransport();

                request.setAttribute("listnottrans", listnottrans);
                request.setAttribute("listtrans", listtransportion);
                request.setAttribute("listlength", length);
                request.setAttribute("likelist", likelist);
                request.setAttribute("pageInfo", pageInfo);
                System.out.println(pageInfo);
            } else {
                cmap.put("schoolId", 2836);
                int pageSize = 10;
                int curPage = 1;
                String scurPage = request.getParameter("curPage");
                if (scurPage != null && !scurPage.trim().equals("")) {
                    curPage = Integer.parseInt(scurPage);
                }
                cmap.put("curPage", curPage);
//           每页显示的条数
                cmap.put("pageSize", pageSize);
                PageInfo<ForumPost> pageInfo = forumService.findTopForumPostBySchoolId1(cmap);
                List<Goods> listtransportion = goodsService.getFourRandomGoodsByTransport();
                List<Goods> listnottrans = goodsService.getTwoRandomGoodsnotTransport();

                request.setAttribute("listnottrans", listnottrans);
                request.setAttribute("listtrans", listtransportion);
                request.setAttribute("pageInfo", pageInfo);
                System.out.println(pageInfo);
                System.out.println("到这了能转发吗？");
            }
        }else {
            int schoid = Integer.parseInt(schoId);
            cmap.put("schoolId", schoid);
            int pageSize = 10;
            int curPage = 1;
            String scurPage = request.getParameter("curPage");
            if (scurPage != null && !scurPage.trim().equals("")) {
                curPage = Integer.parseInt(scurPage);
            }
            cmap.put("curPage", curPage);
//           每页显示的条数
            cmap.put("pageSize", pageSize);
            PageInfo<ForumPost> pageInfo = forumService.findTopForumPostBySchoolId1(cmap);
            List<Goods> listtransportion = goodsService.getFourRandomGoodsByTransport();
            List<Goods> listnottrans = goodsService.getTwoRandomGoodsnotTransport();

            request.setAttribute("listnottrans", listnottrans);
            request.setAttribute("listtrans", listtransportion);
            request.setAttribute("pageInfo", pageInfo);


        }

        request.getRequestDispatcher("/sun/forumhome.jsp").forward(request,response);
    }



//    @RequestMapping(value = "/postandcomment.action")
//    public void listones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("olist",forumService.findForumPostsByCondition(1));
//        request.getRequestDispatcher("/sun/jsp/postandcomment.jsp").forward(request,response);
//    }

    @RequestMapping(value = "/addpost.action")
    public void insertpost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String forumPostId= UUID.randomUUID().toString().replaceAll("-","");
//        ServletInputStream title1 = request.getInputStream();
//        System.out.println(title1);
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        System.out.println(title + "==" +content );
        User user = (User) request.getSession().getAttribute("userInfo");
        if (user != null){
            ForumPost forumPost = new ForumPost();
            forumPost.setTitle(title);
            forumPost.setContent(content);
            forumPost.setUserId(user.getUserId());
            forumPost.setReleaseTime(new Date());
            forumPost.setUser(user);
            forumService.addForumPost(forumPost);
            List<ForumPost> onesForumPost = forumService.findForumPostsByCondition(user.getUserId());
            request.setAttribute("ForumPostRecent",onesForumPost);
            request.setAttribute("ForumPost", forumPost);
            request.getRequestDispatcher("/sun/jsp/postandcomment.jsp").forward(request,response);
        }
    }


    @RequestMapping(value = "/content.action")
    public  void forumContent(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String postId = request.getParameter("postId");
        int postid = Integer.parseInt(postId);
        ForumPost forumPost = forumService.findForumPostByForudId(postid);
            if (forumPost!=null) {
                List<ForumPostComment> forumPostComments = forumService.findForumComment(forumPost.getForumPostId());
                List<ForumCommentReply> forumCommentReplies = forumService.findForumCommentReply(postid);
                List<ForumPost> onesForumPost = forumService.findForumPostsByCondition(forumPost.getUser().getUserId());
                request.setAttribute("ForumPostReply",forumCommentReplies);
                request.setAttribute("ForumPost", forumPost);
                request.setAttribute("ForumComment",forumPostComments);
                request.setAttribute("ForumPostRecent",onesForumPost);
                System.out.println(onesForumPost);
            }




        request.getRequestDispatcher("/sun/jsp/postandcomment.jsp").forward(request, response);
    }


    @RequestMapping(value = "/isTop.action")
    public void isTop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("olist",forumService.modifyForumPost(1,true));

    }


    @RequestMapping(value = "/addcomment.action")
    public void addComment(String comment,int tiziid,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        ForumPostComment forumPostComment1 = new ForumPostComment();
        forumPostComment1.setReleaseTime(new Date());
        forumPostComment1.setForumPostId(tiziid);
        forumPostComment1.setContent(comment);
        User user = (User) request.getSession().getAttribute("userInfo");
        System.out.println(comment +"--"+tiziid);

        if (user != null){
            forumPostComment1.setUserId(user.getUserId());
            if (forumService.addForumPostComment(forumPostComment1)){
                out.println(true);
            }
        }



        request.setAttribute("forumPostComment1",forumPostComment1);

    }



    @RequestMapping(value = "/addcommentreply.action" )
    public void addCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ForumCommentReply forumCommentReply = new ForumCommentReply();
        PrintWriter out = response.getWriter();
        String contentmy = request.getParameter("contentreply");
        System.out.println(contentmy);
        String commentedUserId = request.getParameter("commedid");
        System.out.println(commentedUserId);
        String commentId = request.getParameter("commid");
        System.out.println(commentId);
        String forumId = request.getParameter("forumId");
        System.out.println(forumId);

        if (commentedUserId!=null&&commentId!=null) {
            int commentedUserid = Integer.parseInt(commentedUserId);
            int commentid = Integer.parseInt(commentId);
            User user = (User) request.getSession().getAttribute("userInfo");
            if (user!=null){
                int usermyself = user.getUserId();
                forumCommentReply.setUserId(usermyself);
                forumCommentReply.setCommentedUserId(commentedUserid);
                forumCommentReply.setForumPostCommentId(commentid);
                forumCommentReply.setCreateTime(new Date());
                forumCommentReply.setContent(contentmy);

               forumService.addForumCommentReply(forumCommentReply);

                if (forumId!=null) {
                    int forumid = Integer.parseInt(forumId);
                    System.out.println(forumid);
                    ForumPost forumPost = forumService.findForumPostByForudId(forumid);
                    List<ForumPostComment> forumPostComments = forumService.findForumComment(forumPost.getForumPostId());
                    List<ForumCommentReply> forumCommentReplies = forumService.findForumCommentReply(forumid);
                    request.setAttribute("ForumPostReply",forumCommentReplies);
                    request.setAttribute("ForumPost", forumPost);
                    request.setAttribute("ForumComment",forumPostComments);
                    request.getRequestDispatcher("/sun/jsp/postandcomment.jsp").forward(request, response);
                }




                System.out.println("被评论人id"+commentedUserid+"评论内容"+contentmy+"要回复评论的id"+commentid);
            }
        }



            out.println(true);



//        forumService.addForumCommentReply(forumCommentReply);

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

    @RequestMapping(value = "/cancledianzan.action")
    public  void dianzan(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String forumPostId = request.getParameter("forumPostId");
        User user = (User) request.getSession().getAttribute("userInfo");
        if (user != null) {
        if (forumPostId != null) {
            int userId = user.getUserId();
            int forumpostId = Integer.parseInt(forumPostId);
            forumService.deleteForumPostLike(userId,forumpostId);
            forumService.modifyForumPostLikeCountByPostId(forumpostId);
            int count = forumService.findForumPostLikeCountByPostId(forumpostId);
            System.out.println(count);
            PrintWriter out = response.getWriter();
            out.println(count);
        }
        }
    }

    @RequestMapping(value = "/adddianzan.action")
    public  void adddianzan(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String forumPostId = request.getParameter("forumPostId");
        User user= (User) request.getSession().getAttribute("userInfo");
        System.out.println(forumPostId);
        System.out.println(user.getUserId());
        if (user != null) {
            if (forumPostId != null) {
                int forumpostId = Integer.parseInt(forumPostId);
                System.out.println("帖子id"+forumpostId);
                ForumPostLike forumPostLike = new ForumPostLike();
                forumPostLike.setUserId(user.getUserId());
                forumPostLike.setFroumPostId(forumpostId);
                forumPostLike.setCreateTime(new Date());
                forumService.addForumPostLike(forumPostLike);
                forumService.addForumPostLikeCountByPostId(forumpostId);
                int count1 = forumService.findForumPostLikeCountByPostId(forumpostId);
                System.out.println(count1);
                PrintWriter out = response.getWriter();
                out.println(count1);
            }

        }
    }


}
