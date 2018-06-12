package com.gem.hami.control;

import com.gem.hami.dao.UserMapper;
import com.gem.hami.entity.Goods;
import com.gem.hami.entity.QueryPojo;
import com.gem.hami.entity.School;
import com.gem.hami.entity.User;
import com.gem.hami.service.GoodsService;
import com.gem.hami.service.HomeService;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.javassist.bytecode.Descriptor;
import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
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

        Goods goods = goodsService.findGoodsById(goodsId);
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
        request.getRequestDispatcher("/zhu/jsp/single-goods.jsp").forward(request,response);
    }


//    查询商品并分页(按条件查询：商品ID/)
//    无条件查询所有商品
    @RequestMapping("/findAllGoods.action")
    public  void findAllGoods(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
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
}
