package com.gem.hami.control;

import com.gem.hami.entity.User;
import com.gem.hami.service.AdminService;
import com.gem.hami.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping("/home")
@Controller
public class HomeControl {
    @Autowired
    private HomeService homeService;

    @RequestMapping("/selectUser.action")
    public void selectUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        homeService.findUserById(2);

       request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
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




}
