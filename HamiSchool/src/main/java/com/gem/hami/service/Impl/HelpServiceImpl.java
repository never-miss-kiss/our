package com.gem.hami.service.Impl;

import com.gem.hami.dao.*;
import com.gem.hami.entity.*;
import com.gem.hami.service.HelpService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class HelpServiceImpl implements HelpService{
//    public static final String TAG = "ComparatorDate";
    @Autowired
    private HelpSendMapper helpSendMapper;
    @Autowired
    private HelpBuyMapper helpBuyMapper;
    @Autowired
    private HelpFetchMapper helpFetchMapper;
    @Autowired
    private HelpQueueMapper helpQueueMapper;


    @Autowired
    private HelpCommentMapper helpCommentMapper;

    @Autowired
    private HelpInfoMapper helpInfoMapper;

    @Autowired
    private HelpCommentReplyMapper helpCommentReplyMapper;

    @Override
    public List<HelpInfo> findHelpsByCondition(int userId, int schoolId, int sortId) {

        List<HelpInfo> allHelpInfos = new ArrayList<HelpInfo>();
        List<HelpBuy> helpBuys = helpBuyMapper.selectHelpsById(userId,schoolId);
        List<HelpSend>  helpSends =  helpSendMapper.selectHelpsById(userId,schoolId);
        List<HelpFetch>  helpFetch =  helpFetchMapper.selectHelpsById(userId,schoolId);
        List<HelpQueue>  helpQueues =  helpQueueMapper.selectHelpsById(userId,schoolId);

        allHelpInfos.addAll(helpBuys);
        allHelpInfos.addAll(helpFetch);
        allHelpInfos.addAll(helpSends);
        allHelpInfos.addAll(helpQueues);


        if(sortId==1) {
            //按最新的 create_time 排序
            Collections.sort(allHelpInfos, new Comparator<HelpInfo>() {
                //按创建日期排序 按最新日期排序

                public int compare(HelpInfo t1,HelpInfo t2) {
                    int flag = 0;
                    if(t1==null||t2==null)//四个或 应该可以在一行写 因为||先判断左边的
                        return flag;
                    else if(t1.getCreateTime()==null||t2.getCreateTime()==null)
                        return flag;
                    flag = t1.getCreateTime().compareTo(t2.getCreateTime());
                    if(flag>0)
                    {
                        flag=-1;
                    }
                    else if (flag<0){
                        flag = 1;
                    }
                    return flag;
//                    SimpleDateFormat format = new SimpleDateFormat("yyyy/M/d H:mm:ss");
//                    Date d1, d2;
//                    这是String类型的，坑老子啊
//                    try {
//                        d1 = format.parse(t1.getCreateTime());
//                        d2 = format.parse(t2.getCreateTime());
//                    } catch (ParseException e) {
//                        // 解析出错，则不进行排序
//                        System.out.println("ComparatorDate--compare--SimpleDateFormat.parse--error");
//                        return 0;
//                    }
//                    if (d1.before(d2)) {
//                        return 1;
//                    } else {
//                        return -1;
//                    }
                }
            });

        }else if(sortId==2){
            //按点击量排序
            Collections.sort(allHelpInfos, new Comparator<HelpInfo>() {
                @Override
                public int compare(HelpInfo o1, HelpInfo o2) {
                    int flag = 0;
                    if(o1==null||o2==null)
                        return flag;
                    if(o1.getClickCount()<o2.getClickCount())
                    {
                        flag=-1;
                    }
                    else if (o1.getClickCount()>o2.getClickCount()){
                        flag = 1;
                    }
                    return flag;
                }
            });
        }else if(sortId==3){
            //按截止时间排序
            Collections.sort(allHelpInfos, new Comparator<HelpInfo>() {
                //按创建日期排序 按最新日期排序
                public int compare(HelpInfo t1,HelpInfo t2) {
                    int flag = 0;
                    if(t1==null||t2==null)//四个或 应该可以在一行写 因为||先判断左边的
                        return flag;
                    else if(t1.getEndTime()==null||t2.getEndTime()==null)
                        return flag;
                    flag = t1.getEndTime().compareTo(t2.getEndTime());
                    if(flag>0)
                    {
                        flag=-1;
                    }
                    else if (flag<0){
                        flag = 1;
                    }
                    return flag;
                }
            });
        }else if(sortId==4){
            //按价格排序
            Collections.sort(allHelpInfos, new Comparator<HelpInfo>() {
                @Override
                public int compare(HelpInfo o1, HelpInfo o2) {
                    int flag = 0;
                    if(o1==null||o2==null||o1.getPersonPrice()==null||o2.getPersonPrice()==null)
                        return flag;
                    if(o1.getPersonPrice()<o2.getPersonPrice())
                    {
                        flag=-1;
                    }
                    else if (o1.getPersonPrice()>o2.getPersonPrice()){
                        flag = 1;
                    }
                    return flag;
                }
            });
        };

        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        for(int i = 0;i<10;i++){
            helpInfos.add(allHelpInfos.get(i));
            helpInfos.get(i).setId(i+1);
        }
        return helpInfos;
    }


    @Override
    public PageInfo<HelpInfo> findBuyInfosByCreateTime(Map<String, Object> map) {
        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        helpInfos = helpInfoMapper.selectBuyInfosByCreateTime();
        PageInfo<HelpInfo> pageInfo = new PageInfo<>(helpInfos);
        return pageInfo;
    }

    @Override
    public PageInfo<HelpInfo> findSendInfosByCreateTime(Map<String, Object> map) {
        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        helpInfos = helpInfoMapper.selectSendInfosByCreateTime();
        PageInfo<HelpInfo> pageInfo = new PageInfo<>(helpInfos);
        return pageInfo;

    }

    @Override
    public PageInfo<HelpInfo> findFetchInfosByCreateTime(Map<String, Object> map) {
        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        helpInfos = helpInfoMapper.selectFetchInfosByCreateTime();
        PageInfo<HelpInfo> pageInfo = new PageInfo<>(helpInfos);
        return pageInfo;
    }

    @Override
    public PageInfo<HelpInfo> findQueueInfosByCreateTime(Map<String, Object> map) {
        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        helpInfos = helpInfoMapper.selectQueueInfosByCreateTime();
        PageInfo<HelpInfo> pageInfo = new PageInfo<>(helpInfos);
        return pageInfo;
    }

    @Override
    public PageInfo<HelpInfo> findAllHelpsByCreateTime(Map<String, Object> map) {
        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        helpInfos = helpInfoMapper.selectAllHelpsByCreateTime();
        PageInfo<HelpInfo> pageInfo = new PageInfo<>(helpInfos);
        return pageInfo;
    }

    @Override
    public HelpBuy findHelpBuy(int helpId) {
        return helpBuyMapper.selectHelpByHelpId(helpId);
    }

    @Override
    public HelpSend findHelpSend(int helpId) {
        return helpSendMapper.selectHelpByHelpId(helpId);
    }

    @Override
    public HelpFetch findHelpFetch(int helpId) {
        return helpFetchMapper.selectHelpByHelpId(helpId);
    }

    @Override
    public HelpQueue findHelpQueue(int helpId) {
        return helpQueueMapper.selectHelpByHelpId(helpId);
    }


    @Override
    public boolean addHelpBuy(HelpBuy helpBuy) {
        helpBuyMapper.insertHelpBuy(helpBuy);
        return true;
    }

    @Override
    public boolean addHelpFetch(HelpFetch helpFetch) {
        helpFetchMapper.insertHelpFetch(helpFetch);
        return true;
    }

    @Override
    public boolean addHelpSend(HelpSend helpSend) {
        helpSendMapper.insertHelpSend(helpSend);
        return true;
    }

    @Override
    public boolean addHelpQueue(HelpQueue helpQueue) {
        helpQueueMapper.insertHelpQueue(helpQueue);
        return true;
    }

    @Override
    public boolean modifyHelpClickCount(int typeId, int helpId) {
        switch (typeId){
            case 1:helpBuyMapper.updateHelpClickCount(helpId);
                   break;
            case 2:helpSendMapper.updateHelpClickCount(helpId);
                    break;
            case 3:helpFetchMapper.updateHelpClickCount(helpId);
                    break;
            case 4:helpQueueMapper.updateHelpClickCount(helpId);
                    break;
        }
        return false;
    }

    @Override
    public List<HelpComment> findHelpCommentsByCondition(int typeId, int helpId, int userId) {
        if(typeId!=0&&helpId!=0){
            return helpCommentMapper.selectCommentsByHelpId(typeId,helpId);
        }else if (userId!=0){
            return helpCommentMapper.selectCommentsByUserId(userId);
        }
        return null;
    }

    @Override
    public List<HelpCommentReply> findReplysByCommentId(int commentId) {
        return helpCommentReplyMapper.selectReplysByCommentId(commentId);
    }

    @Override
    public HelpCommentReply findReplyByReplyId(int ReplyId) {
        return null;
    }

    @Override
    public boolean addHelpComment(HelpComment helpComment) {
        helpCommentMapper.insertHelpComment(helpComment);
        return true;
    }

    @Override
    public boolean addHelpCommentReply(HelpCommentReply helpCommentReply) {
        helpCommentReplyMapper.insertHelpCommentReply(helpCommentReply);
        return true;
    }

    @Override
    public boolean removeHelp(short typeId, int helpId) {
        switch (typeId){
            case 1:helpBuyMapper.deleteHelpBuy(helpId);
            case 2:helpSendMapper.deleteHelpSend(helpId);
            case 3:helpFetchMapper.deleteHelpFetch(helpId);
            case 4:helpQueueMapper.deleteHelpQueue(helpId);
        }
        helpSendMapper.deleteHelpSend(helpId);
        return true;
    }

    @Override
    public boolean removeHelpComment(int helpCommentId) {
        helpCommentMapper.deleteHelpComment(helpCommentId);
        return true;
    }

    @Override
    public boolean removeHelpCommentReply(int replyId) {
        helpCommentReplyMapper.deleteHelpCommentReply(replyId);
        return true;
    }
}
