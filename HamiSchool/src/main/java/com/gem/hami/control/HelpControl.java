package com.gem.hami.control;

import com.gem.hami.entity.HelpComment;
import com.gem.hami.entity.HelpInfo;
import com.gem.hami.entity.HelpSend;
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

    @RequestMapping(value = "/selectByCondition.action",method = RequestMethod.GET)
    public void addHelpSend(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<HelpInfo> helpInfos = helpService.findHelpByCondition(0,0,0);
        for(HelpInfo helpInfo : helpInfos){
            System.out.println(helpInfo);
        }
        request.setAttribute("helpInfos",helpInfos);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addHelpSend.action",method = RequestMethod.GET)
    public void addHelp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HelpSend helpSend1 = new HelpSend();
        //helpSend1.setName("jiayou");
        helpSend1.setIsFinished("T");
        Date date = new Date();
        helpSend1.setEndTime(date);
        helpSend1.setName("德玛西亚");
        helpService.addHelpSend(helpSend1);

        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value="/removeHelp.action",method = RequestMethod.GET)
    public void removeHelp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        short a = 3;
        int b = (short)a;
        System.out.println(a);
        helpService.removeHelp((short) a,3);

        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value="/addHelpComment.action",method = RequestMethod.GET)
    public void addHelpComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HelpComment helpComment= new HelpComment();
        helpComment.setContent("人生迟早会碰壁的，只是早晚问题，而我只要稳住心态就行");

        helpComment.setReleaseType((byte)2);
        helpService.addHelpComment(helpComment);

        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value="/removeHelpComment.action",method = RequestMethod.GET)
    public void removeHelpComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        short a = 3;
        int b = (short)a;
        System.out.println(a);
        helpService.removeHelpComment(1);

        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }


}
