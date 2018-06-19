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
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
    public void addHelpBuy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        String name = request.getParameter("name");
        String title =  request.getParameter("title");
        String receiptAddress =  request.getParameter("receiptAddress");
        String receiptAddressAlternative =  request.getParameter("receiptAddressAlternative");
        String buyPhone =  request.getParameter("buyPhone");
        String buyAddress =  request.getParameter("buyAddress");
        String buyAddressAlternative =  request.getParameter("buyAddressAlternative");
        String buyDemand =  request.getParameter("buyDemand");
        String endTime1=  request.getParameter("endTime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date endTime = sdf.parse(endTime1);//设置截止日期
        String distance1 = request.getParameter("distance");
        distance1 = distance1.trim().replaceAll("公里","").replaceAll("米","");;
        Float distance = Float.parseFloat(distance1);
        float personPrice =  Float.parseFloat(request.getParameter("personPrice"));
        float recommendedPrice =   Float.parseFloat((request.getParameter("recommendedPrice")));

        HelpBuy helpBuy = new HelpBuy();
        helpBuy.setName(name);
        helpBuy.setTitle(title);
        helpBuy.setReceiptAddress(receiptAddress);
        helpBuy.setReceiptAddressAlternative(receiptAddressAlternative);
        helpBuy.setBuyPhone(buyPhone);
        helpBuy.setBuyAddress(buyAddress);
        helpBuy.setBuyAddressAlternative(buyAddressAlternative);
        helpBuy.setBuyDemand(buyDemand);
        helpBuy.setDistance(distance);
        helpBuy.setPersonPrice(personPrice);
        helpBuy.setRecommendedPrice(recommendedPrice);

        Date date = new Date();
        helpBuy.setCreateTime(date);
        helpBuy.setEndTime(endTime);
        helpBuy.setName("德玛西亚");

        helpBuy.setUserId(5);//userId根据session的值来设定

        helpService.addHelpBuy(helpBuy);
        response.sendRedirect("/HamiSchool/help/selectAllHelps.action");
    }

    @RequestMapping(value = "/addHelpSend.action",method = RequestMethod.GET)
    public void addHelpSend(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        String name = request.getParameter("name");
        String title =  request.getParameter("title");
        String sendAddress =  request.getParameter("sendAddress");
        String sendAddressAlternative =  request.getParameter("sendAddressAlternative");
        String sendPhone =  request.getParameter("sendPhone");
        String receiptAddress =  request.getParameter("receiptAddress");
        String receiptAddressAlternative =  request.getParameter("receiptAddressAlternative");
        String receiptPhone =  request.getParameter("receiptPhone");
        String sendInfomation =  request.getParameter("sendInfomation");

        String endTime1=  request.getParameter("endTime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date endTime = sdf.parse(endTime1);//设置截止日期
        String distance1 = request.getParameter("distance");
        distance1 = distance1.trim().replaceAll("公里","").replaceAll("米","");
        Float distance = Float.parseFloat(distance1);
        float personPrice =  Float.parseFloat(request.getParameter("personPrice"));
        float recommendedPrice =   Float.parseFloat((request.getParameter("recommendedPrice")));

        HelpSend helpSend = new HelpSend();
        helpSend.setName(name);
        helpSend.setTitle(title);
        helpSend.setSendAddress(sendAddress);
        helpSend.setSendAddressAlternative(sendAddressAlternative);
        helpSend.setSendPhone(sendPhone);
        helpSend.setReceiptAddress(receiptAddress);
        helpSend.setReceiptAddressAlternative(receiptAddressAlternative);
        helpSend.setReceiptPhone(receiptPhone);
        helpSend.setSendInformation(sendInfomation);
        helpSend.setPersonPrice(personPrice);
        helpSend.setRecommendedPrice(recommendedPrice);

        Date date = new Date();
        helpSend.setCreateTime(date);
        helpSend.setEndTime(endTime);
        helpSend.setName("德玛西亚");
        helpSend.setUserId(5);//userId根据session的值来设定
        helpService.addHelpSend(helpSend);
        response.sendRedirect("/HamiSchool/help/selectAllHelps.action");
    }

    @RequestMapping(value = "/addHelpFetch.action",method = RequestMethod.GET)
    public void addHelpFetch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
            String name = request.getParameter("name");
            String title =  request.getParameter("title");
            String fetchAddress =  request.getParameter("fetchAddress");
            String remarkShipAddress =  request.getParameter("remarkShipAddress");
            String fetchPhone =  request.getParameter("fetchPhone");
            String receiptAddress =  request.getParameter("receiptAddress");
            String remarkReciptAddress =  request.getParameter("remarkReciptAddress");
            String receiptPhone =  request.getParameter("receiptPhone");
            String fetchInfomation=  request.getParameter("fetchInfomation");
            String endTime1=  request.getParameter("endTime");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date endTime = sdf.parse(endTime1);//设置截止日期
            String distance1 = request.getParameter("distance");
            distance1 = distance1.trim().replaceAll("公里","").replaceAll("米","");;
            Float distance = Float.parseFloat(distance1);
            float personPrice =  Float.parseFloat(request.getParameter("personPrice"));
            float recommendedPrice =   Float.parseFloat((request.getParameter("recommendedPrice")));

        HelpFetch helpFetch = new HelpFetch();
        helpFetch.setName(name);
        helpFetch.setTitle(title);
        helpFetch.setFetchAddress(fetchAddress);
        helpFetch.setFetchPhone(fetchPhone);
        helpFetch.setReceiptAddress(receiptAddress);
        helpFetch.setReceiptPhone(receiptPhone);
        helpFetch.setFetchInformation(fetchInfomation);
        helpFetch.setRemarkShipAddress(remarkShipAddress);
        helpFetch.setEndTime(endTime);
        helpFetch.setDistance(distance);
        helpFetch.setPersonPrice(personPrice);
        helpFetch.setRecommendedPrice(recommendedPrice);
        Date date = new Date();
        helpFetch.setCreateTime(date);
        helpFetch.setEndTime(endTime);
        helpFetch.setName("德玛西亚");
        helpFetch.setUserId(5);//userId根据session的值来设定
        helpService.addHelpFetch(helpFetch);
        response.sendRedirect("/HamiSchool/help/selectAllHelps.action");

    }

    @RequestMapping(value = "/addHelpQueue.action",method = RequestMethod.GET)
    public void addHelpQueue(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        String name = request.getParameter("name");
        String title =  request.getParameter("title");
        String remarkInformation =  request.getParameter("remarkInformation");
        String queueAddress =  request.getParameter("queueAddress");
        String remarkQueueAddress =  request.getParameter("remarkQueueAddress");
        String queuePhone =  request.getParameter("queuePhone");

        String queueDay1 = request.getParameter("queueDay");
        String queueHour1 = request.getParameter("queueHour");
        String queueMinute1 = request.getParameter("queueMinute");
        String queueTime = queueDay1+queueDay1+queueMinute1;

        String endTime1=  request.getParameter("endTime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date endTime = sdf.parse(endTime1);//设置截止日期

        float personPrice =  Float.parseFloat(request.getParameter("personPrice"));
        float recommendedPrice =   Float.parseFloat((request.getParameter("recommendedPrice")));

        HelpQueue helpQueue = new HelpQueue();
        helpQueue.setName(name);
        helpQueue.setTitle(title);
        helpQueue.setRemarkInfomation(remarkInformation);
        helpQueue.setQueueAddress(queueAddress);
        helpQueue.setRemarkQueueAddress(remarkQueueAddress);
        helpQueue.setQueuePhone(queuePhone);
        helpQueue.setQueueTime(queueTime);

        helpQueue.setPersonPrice(personPrice);
        helpQueue.setRecommendedPrice(recommendedPrice);

        Date date = new Date();
        helpQueue.setCreateTime(date);
        helpQueue.setEndTime(endTime);

        helpQueue.setUserId(5);//userId根据session的值来设定

        helpService.addHelpQueue(helpQueue);
        response.sendRedirect("/HamiSchool/help/selectAllHelps.action");
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

        String commentedUserId1 =  request.getParameter("commentedUserId");
        int commentedUserId = Integer.parseInt(commentedUserId1);

        String userId1 =request.getParameter("userId");
        int userId = Integer.parseInt(userId1);
        int helpType = Integer.parseInt(request.getParameter("releaseType"));
        int helpId = Integer.parseInt(request.getParameter("helpId"));
        int helpCommentId = Integer.parseInt(request.getParameter("helpCommentId"));
        System.out.println("什么情况");
        HelpCommentReply helpCommentReply = new HelpCommentReply();
        helpCommentReply.setContent(content);
        helpCommentReply.setCommentedUserId(commentedUserId);
        helpCommentReply.setCreateTime(new Date());
        helpCommentReply.setUserId(userId);
        helpCommentReply.setHelpCommentId(helpCommentId);
        helpService.addHelpCommentReply(helpCommentReply);
        List<HelpComment> helpCommentList;

        switch (helpType){
            case 0:
            case 1:HelpBuy helpBuy = helpService.findHelpBuy(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpBuy",helpBuy);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpBuyDetail/helpBuyDetail.jsp").forward(request,response);
                break;
            case 2:HelpSend helpSend = helpService.findHelpSend(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpSend",helpSend);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpSendDetail/helpSendDetail.jsp").forward(request,response);
                break;
            case 3:HelpFetch helpFetch = helpService.findHelpFetch(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpFetch",helpFetch);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpFetchDetail/helpFetchDetail.jsp").forward(request,response);
                break;
            case 4:HelpQueue helpQueue = helpService.findHelpQueue(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpQueue",helpQueue);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpQueueDetail/helpQueueDetail.jsp").forward(request,response);
                break;
            default:
        }
    }


    @RequestMapping(value="/removeHelpCommentReply.action",method = RequestMethod.GET)
    public void removeHelpCommentReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        helpService.removeHelpCommentReply(2);
        request.getRequestDispatcher("/tian/haha.jsp").forward(request,response);
    }

    //帖子详情的入口界面
    @RequestMapping(value="/helpDetail.action")
    public void helpDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int helpId = Integer.parseInt(request.getParameter("helpId"));
        int helpType = Integer.parseInt(request.getParameter("helpType"));
        List<HelpComment> helpCommentList;
        switch (helpType){
            case 0:
            case 1:HelpBuy helpBuy = helpService.findHelpBuy(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpBuy",helpBuy);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpBuyDetail/helpBuyDetail.jsp").forward(request,response);
                break;
            case 2:HelpSend helpSend = helpService.findHelpSend(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpSend",helpSend);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpSendDetail/helpSendDetail.jsp").forward(request,response);
                break;
            case 3:HelpFetch helpFetch = helpService.findHelpFetch(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpFetch",helpFetch);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpFetchDetail/helpFetchDetail.jsp").forward(request,response);
                break;
            case 4:HelpQueue helpQueue = helpService.findHelpQueue(helpId);
                helpCommentList = helpService.findHelpCommentsByCondition(helpType,helpId,0);
                request.setAttribute("helpQueue",helpQueue);
                request.setAttribute("helpCommentList",helpCommentList);
                request.getRequestDispatcher("/tian/helpQueueDetail/helpQueueDetail.jsp").forward(request,response);
                break;
            default:
        }
        return;
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