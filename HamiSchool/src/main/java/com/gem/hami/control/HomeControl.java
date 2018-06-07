package com.gem.hami.control;

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

    @RequestMapping("/user.action")
    public void selectUser(Integer id,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       homeService.findUser("1");
       request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }




}
