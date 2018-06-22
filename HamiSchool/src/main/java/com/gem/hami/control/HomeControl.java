package com.gem.hami.control;

import com.gem.hami.entity.Goods;
import com.gem.hami.entity.QueryPojo;
import com.gem.hami.entity.QueryPojo_Goods;
import com.gem.hami.entity.User;
import com.gem.hami.service.AdminService;
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
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("/home")
@Controller
public class HomeControl {
    @Autowired
    private HomeService homeService;


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

        User userNow = homeService.findUserById(user.getUserId());

        request.setAttribute("user",userNow);

        request.getRequestDispatcher("/wang/person/userInfo.jsp").forward(request,response);

    }

//    public User modifyUser(User user)
    @RequestMapping("/updateUser.action")
    public void updateUser(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        User user = homeService.findUserById(2);
        user.setAge(101);
        user.setNickname("奈克");
        homeService.modifyUser(user);
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
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

}
