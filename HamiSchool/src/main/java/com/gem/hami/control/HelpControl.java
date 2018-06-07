package com.gem.hami.control;

import com.gem.hami.entity.*;
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

    @RequestMapping(value = "/selectByCondition.action",method = RequestMethod.GET)
    public void addHelp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<HelpInfo> helpInfos = helpService.findHelpByCondition(0,0,1);
        for(HelpInfo helpInfo : helpInfos){
            System.out.println(helpInfo);
        }
        request.setAttribute("helpInfos",helpInfos);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);

    }


    @RequestMapping(value = "/addHelpBuy.action",method = RequestMethod.GET)
    public void addHelpBuy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HelpBuy helpBuy = new HelpBuy();
        helpBuy.setIsFinished("T");
        Date date = new Date();
        helpBuy.setEndTime(date);
        helpBuy.setName("德玛西亚");
        helpService.addHelpBuy(helpBuy);

        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addHelpSend.action",method = RequestMethod.GET)
    public void addHelpSend(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HelpSend helpSend1 = new HelpSend();
        //helpSend1.setName("jiayou");
        helpSend1.setIsFinished("T");
        Date date = new Date();
        helpSend1.setEndTime(date);
        helpSend1.setName("德玛西亚");
        helpService.addHelpSend(helpSend1);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addHelpFetch.action",method = RequestMethod.GET)
    public void addHelpFetch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HelpFetch helpFetch = new HelpFetch();
        helpFetch.setIsFinished("T");
        Date date = new Date();
        helpFetch.setEndTime(date);
        helpFetch.setName("德玛西亚");
        helpService.addHelpFetch(helpFetch);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addHelpQueue.action",method = RequestMethod.GET)
    public void addHelpQueue(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HelpQueue helpQueue = new HelpQueue();


        helpQueue.setIsFinished("T");
        Date date = new Date();
        helpQueue.setEndTime(date);
        helpQueue.setName("德玛西亚");
        helpService.addHelpQueue(helpQueue);

        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }




    @RequestMapping(value="/removeHelp.action",method = RequestMethod.GET)
    public void removeHelp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        short a = 1;
        helpService.removeHelp((short) a,11);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value="/modifyHelpClickCount.action",method = RequestMethod.GET)
    public void modifyHelpComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        helpService.modifyHelpClickCount(1,2);
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
        short a = 4;
        int b = (short)a;
        System.out.println(a);
        helpService.removeHelpComment(1);

        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value="/addHelpCommentReply.action",method = RequestMethod.GET)
    public void addHelpCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("什么情况");
        HelpCommentReply helpCommentReply = new HelpCommentReply();
        helpCommentReply.setContent("人生迟早会碰壁的，只是早晚问题，而我只要稳住心态就行");
        helpCommentReply.setCommentedUserId(1);
        helpCommentReply.setCreateTime(new Date());
        helpCommentReply.setUserId(2);
        helpCommentReply.setHelpCommentReplyId(3);
        helpCommentReply.setHelpPostCommentId(2);
        helpService.addHelpCommentReply(helpCommentReply);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value="/removeHelpCommentReply.action",method = RequestMethod.GET)
    public void removeHelpCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        helpService.removeHelpCommentReply(2);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

}
