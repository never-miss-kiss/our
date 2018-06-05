package com.gem.hami.control;

import com.gem.hami.entity.HelpInfo;
import com.gem.hami.service.HelpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@RequestMapping(value = "/help")
@Controller
public class HelpControl {
    @Autowired
    HelpService helpService;
//    @RequestMapping(value = "/newspost.action",method = RequestMethod.POST)
//    public void newspost(News news, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id= UUID.randomUUID().toString().replaceAll("-","");
//        news.setId(id);
//        news.setCreateTime(new Date());
//        pageService.insertNews(news);
//        request.getServletContext().setAttribute("news",news);
//
//        response.sendRedirect(request.getContextPath()+"/infor.jsp");
//
//
//    }

    @RequestMapping(value = "/addHelpSend.action",method = RequestMethod.GET)
    public void addHelpSend(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<HelpInfo> helpInfos = helpService.findHelpByCondition(2,0,0);
        for(HelpInfo helpInfo : helpInfos){
            System.out.println(helpInfo);
        }
        request.setAttribute("helpInfos",helpInfos);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);



    }
}
