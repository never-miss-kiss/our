package com.gem.hami.control;

import com.gem.hami.entity.Goods;
import com.gem.hami.entity.QueryPojo_Goods;
import com.gem.hami.entity.User;
import com.gem.hami.service.AdminService;
import com.gem.hami.service.HomeService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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


    @RequestMapping("/selectUser.action")
    public void selectUser(Integer userId,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("userId",homeService.findUserById(userId));



       request.getRequestDispatcher("/wang/user/details.jsp").forward(request,response);
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

    @RequestMapping("/AllGoodsInUserId.action")
    public void selectAllGoodsByUserId(QueryPojo_Goods queryPojo,HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        编码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Map<String,Object> gmap = new HashMap<>();
        gmap.put("queryPojo",queryPojo);


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

        request.getRequestDispatcher("/wang/person/perGoods.jsp").forward(request,response);
    }




}
