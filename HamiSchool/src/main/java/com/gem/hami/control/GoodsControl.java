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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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

        request.setAttribute("goods",goods);
        request.setAttribute("userNickname",userNickname);
        request.setAttribute("schoolName",schoolName);
        request.setAttribute("queryPojo",queryPojo);
        request.setAttribute("pageInfo",pageInfo1);
        request.setAttribute("goodsId",goodsId);
        request.setAttribute("goodsComment",goodsComments);
        request.setAttribute("username",usernames);
        request.setAttribute("count",counts);
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

        Integer goodsCommentId = null;
        String gcId = request.getParameter("goodsCommentId");
        if(gcId!=null && !gcId.trim().equals("")){
            goodsCommentId = Integer.parseInt(gcId);
        }

        System.out.println(goodsCommentId);
        GoodsComment goodsComment = goodsService.findGoodsCommentByGoodsCommentId(goodsCommentId);
        System.out.println(goodsComment);
        String uname = homeService.findUserById(goodsComment.getUserId()).getNickname();
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


        request.setAttribute("goodsComment",goodsComment);
        request.setAttribute("uname",uname);
        request.setAttribute("count",count);
        request.setAttribute("goodsCommentReply",goodsCommentReplies);
        request.setAttribute("username",usernames);
        request.getRequestDispatcher("/zhu/jsp/comment-detail.jsp").forward(request,response);

    }

}
