package com.gem.hami.control;

import com.gem.hami.entity.*;
import com.gem.hami.service.HelpService;
import com.gem.hami.service.Impl.HelpServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@RequestMapping(value = "/help")
@Controller
public class HelpControl {

    @Autowired
    HelpService helpService;


     //通过条件查询，主要用于showHelps右边栏目框中的按 点击量，截至日期，价格排序
    @RequestMapping(value = "/selectByCondition.action")
    @ResponseBody
    public void findByCondition(String sortId,String schoolId, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int schoolId1 = Integer.parseInt(schoolId);
        int sortId1 = Integer.parseInt(sortId);
        List<HelpInfo> helpSorts = helpService.findHelpsByCondition(0,schoolId1,sortId1);
        for(HelpInfo helpInfo : helpSorts){
            System.out.println(helpInfo);
        }
        System.out.println(helpSorts);
        request.setAttribute("helpSorts",helpSorts);
        request.setAttribute("helpType",0);
        request.setAttribute("sortId",sortId);
        request.getRequestDispatcher("/tian/showHelp/sortHelp.jsp").forward(request,response);
    }

    //按左边跑腿分类或下面的分页筛选中间帖子栏目的信息。 通过ajax异步刷新实现
    @RequestMapping(value = "/selectInfos.action")
    @ResponseBody
    public  void selectInfos(String typeId,String curPage,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int typeId1 = Integer.parseInt(typeId);
        Map<String,Object> cmap = new HashMap<>();
        int pageSize = 5;
        int curPage1 = Integer.parseInt(curPage);
        cmap.put("curPage",curPage1);
        cmap.put("pageSize",pageSize);
        PageInfo<HelpInfo> pageInfo;
        switch (typeId1){
            case 0:pageInfo = helpService.findAllHelpsByCreateTime(cmap);
                    request.setAttribute("helpType",0);
                    break;
            case 1:pageInfo = helpService.findBuyInfosByCreateTime(cmap);
                    request.setAttribute("helpType",1);
                    break;
            case 2:pageInfo = helpService.findSendInfosByCreateTime(cmap);
                    request.setAttribute("helpType",2);
                    break;
            case 3:pageInfo = helpService.findFetchInfosByCreateTime(cmap);
                    request.setAttribute("helpType",3);
                    break;
            case 4:pageInfo = helpService.findQueueInfosByCreateTime(cmap);
                    request.setAttribute("helpType",4);
                    break;
            default:pageInfo=new PageInfo<>();
        }

        System.out.println(pageInfo);
        request.setAttribute("pageInfo",pageInfo);
        request.getRequestDispatcher("/tian/showHelp/selectInfos.jsp").forward(request,response);
    }

    //用于从栏目框等跳转而来时刷新整体页面
    @RequestMapping(value = "/selectAllHelps.action")
    public void selectAllHelps(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String,Object> cmap = new HashMap<>();
        int pageSize = 5;
        int curPage = 1;
        String scurPage = request.getParameter("curPage");
        if(scurPage!=null && !scurPage.trim().equals("")){
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("curPage",curPage);
        cmap.put("pageSize",pageSize);
        PageInfo<HelpInfo> pageInfo = helpService.findAllHelpsByCreateTime(cmap);
        System.out.println(pageInfo);
        List<HelpInfo> helpInfos = helpService.findHelpsByCondition(0,0,2);
        request.setAttribute("helpSorts",helpInfos);
        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("helpType",0);
        request.getRequestDispatcher("/tian/showHelp/showHelp1.jsp").forward(request,response);

    }


    //用于测试的
    @RequestMapping(value = "/showHelp.action",method = RequestMethod.GET)
    public void findHelp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int typeId=2;
        int helpId=1;
        switch (typeId){
            case 1:HelpBuy helpBuy = helpService.findHelpBuy(helpId);
                    request.setAttribute("helpBuy",helpBuy);
                    request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
                    break;


            case 2:HelpSend helpSend = helpService.findHelpSend(helpId);
                request.setAttribute("helpSend",helpSend);
                request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
                break;

            case 3:HelpFetch helpFetch = helpService.findHelpFetch(helpId);
                request.setAttribute("helpFetch",helpFetch);
                request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
                break;

            case 4:HelpQueue helpQueue = helpService.findHelpQueue(helpId);
                request.setAttribute("helpQueue",helpQueue);
                request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
                break;
        }
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

    //test
    @RequestMapping(value="/findHelpCommentsByCondition.action",method = RequestMethod.GET)
    public void findHelpCommentsByCondition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int typeId = 0;
        int helpId = 0;
        short userId=2;
        List<HelpComment> helpCommentList = helpService.findHelpCommentsByCondition(typeId,helpId,userId);

        request.setAttribute("helpComentList",helpCommentList);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    @RequestMapping(value="/findCommentReplyByCondition.action")
    @ResponseBody
    public void findCommentsReplyByCondition(int commentId,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<HelpCommentReply> helpCommentReplyList = helpService.findReplysByCommentId(commentId);
//        String name = helpCommentReplyList.get(0).getCommentedUser().getNickname();
//        System.out.println(name);
        request.setAttribute("helpCommentReplyList",helpCommentReplyList);
        request.getRequestDispatcher("/tian/helpBuyDetail/commentReply.jsp").forward(request,response);
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

    //对评论进行回复
    @RequestMapping(value="/addHelpCommentReply.action")
    public void addHelpCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String content =  request.getParameter("content");
        int commentedUserId = Integer.parseInt(request.getParameter("commentedUserId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        int helpCommentId = Integer.parseInt(request.getParameter("helpCommentId"));
        System.out.println("什么情况");
        HelpCommentReply helpCommentReply = new HelpCommentReply();
        helpCommentReply.setContent(content);
        helpCommentReply.setCommentedUserId(commentedUserId);
        helpCommentReply.setCreateTime(new Date());
        helpCommentReply.setUserId(userId);
        helpCommentReply.setHelpCommentId(helpCommentId);
        helpService.addHelpCommentReply(helpCommentReply);
        request.getRequestDispatcher("/help/helpDetail.action").forward(request,response);
    }


    @RequestMapping(value="/removeHelpCommentReply.action",method = RequestMethod.GET)
    public void removeHelpCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        helpService.removeHelpCommentReply(2);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    //帖子详情的入口界面
    @RequestMapping(value="/helpDetail.action")
    public void helpDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HelpBuy helpBuy = helpService.findHelpBuy(2);
        List<HelpComment> helpCommentList = helpService.findHelpCommentsByCondition(1,2,0);
        List<HelpCommentReply> helpCommentReplyList = helpService.findReplysByCommentId(5);
        request.setAttribute("helpBuy",helpBuy);
        request.setAttribute("helpCommentList",helpCommentList);
        request.setAttribute("helpCommentReplyList",helpCommentReplyList);
        request.getRequestDispatcher("/tian/helpBuyDetail/helpBuyDetail.jsp").forward(request,response);
    }

}




//    @RequestMapping(value = "/selectBuyInfos.action")
//    public  void selectBuyInfos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Map<String,Object> cmap = new HashMap<>();
//        int pageSize = 5;
//        int curPage = 1;
//        String scurPage = request.getParameter("curPage");
//        if(scurPage!=null && !scurPage.trim().equals("")){
//            curPage = Integer.parseInt(scurPage);
//        }
//        cmap.put("curPage",curPage);
//        cmap.put("pageSize",pageSize);
//        PageInfo<HelpInfo> pageInfo = helpService.findBuyInfosByCreateTime(cmap);
//        System.out.println(pageInfo);
//        request.setAttribute("pageInfo",pageInfo);
//        request.setAttribute("helpType",1);
//        request.getRequestDispatcher("/tian/showHelp/showHelp1.jsp").forward(request,response);
//    }
//
//    @RequestMapping(value = "/selectSendInfos.action")
//    public  void selectSendInfos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Map<String,Object> cmap = new HashMap<>();
//        int pageSize = 5;
//        int curPage = 1;
//        String scurPage = request.getParameter("curPage");
//        if(scurPage!=null && !scurPage.trim().equals("")){
//            curPage = Integer.parseInt(scurPage);
//        }
//        cmap.put("curPage",curPage);
//        cmap.put("pageSize",pageSize);
//        PageInfo<HelpInfo> pageInfo = helpService.findSendInfosByCreateTime(cmap);
//        System.out.println(pageInfo);
//        request.setAttribute("pageInfo",pageInfo);
//        request.setAttribute("helpType",2);
//        request.getRequestDispatcher("/tian/showHelp/showHelp1.jsp").forward(request,response);
//    }
//
//    @RequestMapping(value = "/selectFetchInfos.action")
//    public  void selectFetchInfos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Map<String,Object> cmap = new HashMap<>();
//        int pageSize = 5;
//        int curPage = 1;
//        String scurPage = request.getParameter("curPage");
//        if(scurPage!=null && !scurPage.trim().equals("")){
//            curPage = Integer.parseInt(scurPage);
//        }
//        cmap.put("curPage",curPage);
//        cmap.put("pageSize",pageSize);
//        PageInfo<HelpInfo> pageInfo = helpService.findFetchInfosByCreateTime(cmap);
//        System.out.println(pageInfo);
//        request.setAttribute("pageInfo",pageInfo);
//        request.setAttribute("helpType",3);
//        request.getRequestDispatcher("/tian/showHelp/showHelp1.jsp").forward(request,response);
//    }
//    @RequestMapping(value = "/selectQueueInfos.action")
//    public  void selectQueueInfos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Map<String,Object> cmap = new HashMap<>();
//        int pageSize = 5;
//        int curPage = 1;
//        String scurPage = request.getParameter("curPage");
//        if(scurPage!=null && !scurPage.trim().equals("")){
//            curPage = Integer.parseInt(scurPage);
//        }
//        cmap.put("curPage",curPage);
//        cmap.put("pageSize",pageSize);
//        PageInfo<HelpInfo> pageInfo = helpService.findQueueInfosByCreateTime(cmap);
//        System.out.println(pageInfo);
//        request.setAttribute("pageInfo",pageInfo);
//        request.setAttribute("helpType",4);
//        request.getRequestDispatcher("/tian/showHelp/showHelp1.jsp").forward(request,response);
//    }