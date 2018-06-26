package com.gem.hami.control;

import com.gem.hami.entity.*;
import com.gem.hami.service.GoodsService;
import com.gem.hami.service.HomeService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@RequestMapping("/goods")
@Controller
public class GoodsControl {
    @Autowired
    private GoodsService goodsService;

    @Autowired
    private HomeService homeService;


//    根据商品的ID查询商品详情
    @RequestMapping(value = "/findGoodsById.action",method = RequestMethod.GET)
    public void findGoodsById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u = (User) request.getSession().getAttribute("userInfo");
        System.out.println(u.getNickname());
        Map<String,Object> cmap = new HashMap<>();
        int pageSize = 4  ;
        int curPage = 1;
        Integer goodsId = null;

        String scurPage = request.getParameter("curPage");
        if(scurPage!=null && !scurPage.trim().equals("")){
            curPage = Integer.parseInt(scurPage);
        }

        String gId = request.getParameter("goodsId");
        if(gId!=null && !gId.trim().equals("")){
            goodsId = Integer.parseInt(gId);
        }

        Goods good = goodsService.findGoodsById(goodsId);
        goodsService.modifyClickCount(good);
        Goods goods = goodsService.findGoodsById(goodsId);
        List<GoodsComment> goodsComments = goodsService.findGoodsCommentByGoodsId(goodsId);
        Map<Integer,String> usernames = new HashMap<>();
        Map<Integer,Integer> counts = new HashMap<>();
        for(GoodsComment g:goodsComments){
            System.out.println(g.getContent());
            Integer goodsCommentId = g.getGoodsCommentId();
            List<GoodsCommentReply> goodsCommentReplies = goodsService.findGoodsCommentReply(goodsCommentId);
            int count = goodsCommentReplies.size();
            Integer uid = g.getUserId();
            String uname = homeService.findUserById(g.getUserId()).getNickname();
            usernames.put(uid,uname);
            counts.put(goodsCommentId,count);
        }



        int  goodsCategoryId = goods.getGoodsCategoryId();
        QueryPojo queryPojo = new QueryPojo();
        queryPojo.setGoodsCategoryId(goodsCategoryId);
        cmap.put("curPage",curPage);
        cmap.put("pageSize",pageSize);
        cmap.put("queryPojo",queryPojo);

        PageInfo<Goods> pageInfo = goodsService.findGoodsByCondition(cmap);
        List<Goods> goods1 = pageInfo.getList();
        for(int i=0;i<goods1.size();i++){
            if(goods1.get(i).getGoodsId().equals(goodsId)){
                goods1.remove(i);
                i--;
            }
        }
        PageInfo<Goods> pageInfo1 = new PageInfo<>(goods1);

        User user = homeService.findUserById(goods.getUser().getUserId());
        String userNickname = user.getNickname();
        String schoolName = user.getSchool().getName();

        Map<Integer,String> name = new HashMap<>();
        Iterator iterator = pageInfo.getList().iterator();
        while (iterator.hasNext()){
            Goods g = (Goods) iterator.next();
            int Id = g.getGoodsId();
            int uId = g.getUser().getUserId();
            //System.out.println(uId);
            String sName = homeService.findUserById(uId).getSchool().getName();
            //System.out.println(sName);
            name.put(Id,sName);
        }

        request.setAttribute("goods",goods);
        request.setAttribute("userNickname",userNickname);
        request.setAttribute("schoolName",schoolName);
        request.setAttribute("queryPojo",queryPojo);
        request.setAttribute("pageInfo",pageInfo1);
        request.setAttribute("goodsId",goodsId);
        request.setAttribute("goodsComment",goodsComments);
        request.setAttribute("username",usernames);
        request.setAttribute("count",counts);
        request.setAttribute("u",u);
        request.setAttribute("sName",name);
        request.getRequestDispatcher("/zhu/jsp/single-goods.jsp").forward(request,response);
    }


//    查询商品并分页(按条件查询：商品ID/)
//    无条件查询所有商品
    @RequestMapping("/findAllGoods.action")
    public  void findAllGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,Object> cmap = new HashMap<>();
        int pageSize = 8 ;
        int curPage = 1;
        Integer goodsCategoryId = null;
        Integer releaseTime = null;
        Integer price = null;
        Integer clickCount = null;
        Integer schoolId = null ;

        String scurPage = request.getParameter("curPage");
        if(scurPage!=null && !scurPage.trim().equals("")){
            curPage = Integer.parseInt(scurPage);
        }

        String categoryId = request.getParameter("goodsCategoryId");
        if(categoryId!=null && !categoryId.trim().equals("")){
            goodsCategoryId = Integer.parseInt(categoryId);
        }

        String postTime = request.getParameter("releaseTime");
        if(postTime!=null && !postTime.trim().equals("")){
            releaseTime = Integer.parseInt(postTime);
        }

        String lowprice = request.getParameter("price");
        if(lowprice!=null && !lowprice.trim().equals("")){
            price = Integer.parseInt(lowprice);
        }

        String clicks = request.getParameter("clickCount");
        if(clicks!=null && !clicks.trim().equals("")){
            clickCount = Integer.parseInt(clicks);
        }

        String sId = request.getParameter("schoolId");
        if(sId!=null && !sId.trim().equals("")){
            schoolId = Integer.parseInt(sId);
        }

        QueryPojo queryPojo = new QueryPojo();
        queryPojo.setGoodsCategoryId(goodsCategoryId);
        queryPojo.setReleaseTime(releaseTime);
        queryPojo.setPrice(price);
        queryPojo.setClickCount(clickCount);
        queryPojo.setSchoolId(schoolId);
        cmap.put("curPage",curPage);
        cmap.put("pageSize",pageSize);
        cmap.put("queryPojo",queryPojo);


        PageInfo<Goods> pageInfo = goodsService.findGoodsByCondition(cmap);
        System.out.println(pageInfo);
        Map<Integer,String> name = new HashMap<>();
        Iterator iterator = pageInfo.getList().iterator();
        while (iterator.hasNext()){
            Goods goods = (Goods) iterator.next();
            int goodsId = goods.getGoodsId();
            int userId = goods.getUser().getUserId();
            System.out.println(userId);
            String schoolName = homeService.findUserById(userId).getSchool().getName();
            System.out.println(schoolName);
            name.put(goodsId,schoolName);
        }
        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("schoolName",name);
        request.setAttribute("queryPojo",queryPojo);
        request.getRequestDispatcher("/zhu/jsp/main.jsp").forward(request,response);

    }

    //查询商品评论详情
    @RequestMapping("/findGoodsCommentDetail.action")
    public void findGoodsCommentDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User u = (User) request.getSession().getAttribute("userInfo");

        Integer goodsCommentId = null;
        String gcId = request.getParameter("goodsCommentId");
        if(gcId!=null && !gcId.trim().equals("")){
            goodsCommentId = Integer.parseInt(gcId);
        }

        System.out.println(goodsCommentId);
        GoodsComment goodsComment = goodsService.findGoodsCommentByGoodsCommentId(goodsCommentId);
        System.out.println(goodsComment);
        String uname = homeService.findUserById(goodsComment.getUserId()).getNickname();
        int userId = homeService.findUserById(goodsComment.getUserId()).getUserId();
        System.out.println(uname);
        List<GoodsCommentReply> goodsCommentReplies = goodsService.findGoodsCommentReply(goodsCommentId);
        int count = goodsCommentReplies.size();

        Map<Integer,String> usernames = new HashMap<>();

        for(GoodsCommentReply gcr:goodsCommentReplies){
            Integer goodsCommentReplyId = gcr.getGoodsCommentReplyId();
            String uname1 = homeService.findUserById(gcr.getUserId()).getNickname();
            System.out.println(uname1);
            usernames.put(goodsCommentReplyId,uname1);
        }

        request.setAttribute("u",u);
        request.setAttribute("goodsComment",goodsComment);
        request.setAttribute("uname",uname);
        request.setAttribute("userId",userId);
        request.setAttribute("count",count);
        request.setAttribute("goodsCommentReply",goodsCommentReplies);
        request.setAttribute("username",usernames);
        request.getRequestDispatcher("/zhu/jsp/comment.jsp").forward(request,response);

    }

    //提交单个用户商品评论
    @RequestMapping("/addGoodsComment.action")
    public void addGoodsComment(HttpServletRequest request,HttpServletResponse response) throws ParseException, ServletException, IOException {
        User user = (User) request.getSession().getAttribute("userInfo");
        int userId = user.getUserId();
        System.out.println(userId);
        String content = request.getParameter("oSize");
        System.out.println(content);
        int goodsId = Integer.parseInt(request.getParameter("goodsId"));
//        String time = request.getParameter("now");
//        Date releaseTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(time);
//        System.out.println(time);
        GoodsComment goodsComment = new GoodsComment();
        goodsComment.setUserId(userId);
        goodsComment.setContent(content);
        goodsComment.setGoodsId(goodsId);
        goodsComment.setReleaseTime(new Date());
        System.out.println(goodsComment.getContent());
        boolean flag = goodsService.addGoodsComment(goodsComment);
        System.out.println(flag);
        if(flag==true){
            System.out.println("nice");
        }
    }

    @RequestMapping("/deleteGoodsComment.action")
    public void deleteGoodsComment(HttpServletRequest request,HttpServletResponse response){
        String content = request.getParameter("oSize");
        System.out.println(content);
        int goodsId = Integer.parseInt(request.getParameter("goodsId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        System.out.println(goodsId);
        System.out.println(userId);
        GoodsComment goodsComment = new GoodsComment();
        goodsComment.setGoodsId(goodsId);
        goodsComment.setUserId(userId);
        boolean flag = goodsService.removeGoodsComment(goodsComment);
        if(flag==true){
            System.out.println("删除评论成功");
        }
    }

    @RequestMapping("/addGoodsCommentReply.action")
    public void addGoodsCommentReply(HttpServletRequest request,HttpServletResponse response){
        int goodsCommentId = Integer.parseInt(request.getParameter("goodsCommentId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        String content = request.getParameter("oSize");
       // String content = cont.split(":")[1];
        int uId = Integer.parseInt(request.getParameter("uId"));
        GoodsCommentReply goodsCommentReply = new GoodsCommentReply();
        goodsCommentReply.setCommentedUserId(userId);
        goodsCommentReply.setGoodsCommentId(goodsCommentId);
        goodsCommentReply.setCreateTime(new Date());
        goodsCommentReply.setUserId(uId);
        goodsCommentReply.setContent(content);
        boolean flag = goodsService.addGoodsCommentReply(goodsCommentReply);
        if(flag==true){
            System.out.println("回复评论成功");
        }
    }
    @RequestMapping("/deleteGoodsCommentReply.action")
    public void deleteGoodsCommentReply(HttpServletRequest request,HttpServletResponse response){
        int goodsCommentId = Integer.parseInt(request.getParameter("goodsCommentId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        int uId = Integer.parseInt(request.getParameter("uId"));
        GoodsCommentReply goodsCommentReply = new GoodsCommentReply();
        goodsCommentReply.setCommentedUserId(userId);
        goodsCommentReply.setGoodsCommentId(goodsCommentId);
        goodsCommentReply.setUserId(uId);
        boolean flag = goodsService.removeGoodsCommentReply(goodsCommentReply);
        if(flag==true){
            System.out.println("删除回复评论成功");
        }
    }

    //用户收藏
    @RequestMapping("/addGoodsCollection.action")
    public void addGoodsCollection(HttpServletRequest request,HttpServletResponse response){

        int userId = Integer.parseInt(request.getParameter("userId"));
        int goodsId = Integer.parseInt(request.getParameter("goodsId"));
        GoodsCollection goodsCollection = new GoodsCollection();
        goodsCollection.setGoodsId(goodsId);
        goodsCollection.setUserId(userId);
        goodsCollection.setTime(new Date());
        boolean flag = goodsService.addGoodsCollection(goodsCollection);
        if(flag==true){
            System.out.println("收藏成功");
        }
    }


    //发布个人商品
    @RequestMapping("/postGoods.action")
    public  void postGoods(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        User u = (User) request.getSession().getAttribute("userInfo");
        int userId = u.getUserId();
        String name = request.getParameter("title");
        String detail = request.getParameter("detail");
        String location = request.getParameter("address");
        float price = Float.parseFloat(request.getParameter("price"));
        int type = Integer.parseInt(request.getParameter("type"));
        System.out.println(type);
        String tel = request.getParameter("tel");
        //int cId = goodsService.findGoodsCategoryByName(type);

        Goods goods = new Goods();
        goods.setName(name);
        goods.setUserId(userId);
        goods.setClickCount(0);
        goods.setLocation(location);
        goods.setGoodsCategoryId(1);
        goods.setPhone(tel);
        goods.setPrice(price);
        goods.setReleaseTime(new Date());
        goods.setRemark(detail);
        goods.setGoodsCategoryId(type);

        boolean flag = goodsService.addGoods(goods);
        if(flag==true){
            System.out.println("商品发布成功");
            request.setAttribute("para",111);
        }

        request.getRequestDispatcher("/zhu/jsp/main.jsp").forward(request,response);
    }

}
