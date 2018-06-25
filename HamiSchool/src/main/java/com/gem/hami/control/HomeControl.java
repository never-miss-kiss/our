package com.gem.hami.control;

import com.gem.hami.entity.*;
import com.gem.hami.service.AdminService;
import com.gem.hami.service.HelpService;
import com.gem.hami.service.HomeService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("/home")
@Controller
public class HomeControl {
    @Autowired
    private HomeService homeService;

    @Autowired
    private HelpService helpService;


    @RequestMapping("/userDetails.action")
    public void selectUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        从session中得到用户
        User user = (User) request.getSession().getAttribute("user");

        User userNow = homeService.findUserById(user.getUserId());
        request.setAttribute("user",userNow);

       request.getRequestDispatcher("/wang/user/details.jsp").forward(request,response);
    }

    @RequestMapping(value = "/personalCenter.action")
    public void userCenter(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

//        User user = (User) request.getSession().getAttribute("user");
        User user = (User) request.getSession().getAttribute("userInfo");

//        User userNow = homeService.findUserById(user.getUserId());
        request.setAttribute("user",user);
        request.getRequestDispatcher("/wang/person/userInfo.jsp").forward(request,response);
    }

//    public User modifyUser(User user)
    @RequestMapping("/forUpdateUser.action")
    public void updateUser(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("userInfo");

//        System.out.println(user);

//        User userNow = homeService.findUserById(user.getUserId());
        request.getAttribute("user");

        boolean userNow = homeService.modifyUser(user);

        System.out.println(userNow);

        request.getRequestDispatcher("/wang/person/userSafe_1.jsp").forward(request,response);
    }

    @RequestMapping("/AllGoodsInUser.action")
    public void selectAllGoodsByUserId(QueryPojo_Goods queryPojo,HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        编码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Map<String,Object> gmap = new HashMap<>();
        gmap.put("queryPojo",queryPojo);
        User user = (User) request.getSession().getAttribute("userInfo");

        queryPojo.setUserId(user.getUserId());

        int pageSize = 3;

        int curPage = 1;

        String gcurPage = request.getParameter("curPage");
        if (gcurPage != null && !gcurPage.trim().equals("")){
            curPage= Integer.parseInt(gcurPage);
        }
        gmap.put("pageSize",pageSize);
        gmap.put("curPage",curPage);

//        PageInfo<User> pageInfo = adminService.getAllUser(gmap);
        PageInfo<Goods> pageInfo = homeService.selectGoodByUserId(gmap);
        request.setAttribute("pageInfo",pageInfo);

        request.getRequestDispatcher("/wang/person/userGoods.jsp").forward(request,response);
    }

    @RequestMapping("/favGoodsInUser.action")
    public void selectfavGoodsByUserId(Goods queryPojo,HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        编码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Map<String,Object> gmap = new HashMap<>();
        gmap.put("queryPojo",queryPojo);
        User user = (User) request.getSession().getAttribute("userInfo");

        queryPojo.setUserId(user.getUserId());

        int pageSize = 3;

        int curPage = 1;

        String gcurPage = request.getParameter("curPage");
        if (gcurPage != null && !gcurPage.trim().equals("")){
            curPage= Integer.parseInt(gcurPage);
        }
        gmap.put("pageSize",pageSize);
        gmap.put("curPage",curPage);

//        PageInfo<User> pageInfo = adminService.getAllUser(gmap);
        PageInfo<Goods> pageInfo = homeService.allGoodsCollection(gmap);
        System.out.println(pageInfo);
        request.setAttribute("pageInfo",pageInfo);

        request.getRequestDispatcher("/wang/person/favGoods.jsp").forward(request,response);
    }

    @RequestMapping(value = "/listHelps.action")
    public  void allHelps(Integer typeId,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession();
        User user =(User)session.getAttribute("userInfo");
        int schoolId = 0 ;//设置初始值为0,表示不限学校（默认查找所有学校）
        if(user!=null) {
            schoolId = user.getSchoolId();
        }
//        int typeId1 = Integer.parseInt(typeId);
        Map<String,Object> cmap = new HashMap<>();
        int pageSize = 5;
        int curPage = 1;
        String hcurPage = request.getParameter("curPage");
        if (hcurPage != null && !hcurPage.trim().equals("")){
            curPage= Integer.parseInt(hcurPage);
        }
        cmap.put("curPage",curPage);
        cmap.put("pageSize",pageSize);
        PageInfo<HelpInfo> pageInfo;
        switch (typeId){
            case 0:pageInfo = helpService.findAllHelpsByCreateTime(schoolId,0,cmap);
                request.setAttribute("helpType",0);
                break;
            case 1:pageInfo = helpService.findBuyInfosByCreateTime(schoolId,cmap);
                request.setAttribute("helpType",1);
                break;
            case 2:pageInfo = helpService.findSendInfosByCreateTime(schoolId,cmap);
                request.setAttribute("helpType",2);
                break;
            case 3:pageInfo = helpService.findFetchInfosByCreateTime(schoolId,cmap);
                request.setAttribute("helpType",3);
                break;
            case 4:pageInfo = helpService.findQueueInfosByCreateTime(schoolId,cmap);
                request.setAttribute("helpType",4);
                break;
            default:pageInfo=new PageInfo<>();
        }
        System.out.println(pageInfo);
        request.setAttribute("pageInfo",pageInfo);
        request.getRequestDispatcher("/").forward(request,response);
    }

    public void checkPassword(HttpServletRequest request,HttpServletResponse response){
        System.out.println("用户修改密码");
//        从session中拿到用户信息
        User user = (User) request.getSession().getAttribute("userInfo");
//        重新新查找user
        User userNow = homeService.findUserById(user.getUserId());

        String oldpwd = request.getParameter("oldPass");
        String newpwd = request.getParameter("newPass");
        String confim = request.getParameter("confim");

    }

//    收藏
    public void forumCollection(HttpServletRequest request,HttpServletResponse response){

    }
    public void goodsCollection(HttpServletRequest request,HttpServletResponse response){

    }

}
