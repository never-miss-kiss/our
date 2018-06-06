package com.gem.hami.service.Impl;

import com.gem.hami.dao.HelpCommentMapper;
import com.gem.hami.dao.HelpSendMapper;
import com.gem.hami.entity.*;
import com.gem.hami.service.HelpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class HelpServiceImpl implements HelpService{

    @Autowired
    private HelpSendMapper helpSendMapper;

    @Autowired
    private HelpCommentMapper helpCommentMapper;

    @Override
    public List<HelpInfo> findHelpByCondition(int userId, int schoolId, int sortId) {
        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        List<HelpSend>  helpSends =  helpSendMapper.selectByUserId(userId,schoolId);
        helpInfos.addAll(helpSends);
        return helpInfos;

    }

    @Override
    public boolean addHelpBuy(HelpBuy helpBuy) {
        return false;
    }

    @Override
    public boolean addHelpFetch(HelpFetch helpFetch) {
        return true;
    }

    @Override
    public boolean addHelpSend(HelpSend helpSend) {
        helpSendMapper.insertHelpSend(helpSend);
        return true;
    }

    @Override
    public boolean addHelpQueue(HelpQueue helpQueue) {
        return true;
    }

    @Override
    public boolean addHelpComment(HelpComment helpComment) {
        helpCommentMapper.insertHelpComment(helpComment);

        return true;
    }

    @Override
    public boolean addCommentReply(HelpCommentReply helpCommentReply) {
        return false;
    }

    @Override
    public boolean removeHelp(short typeId, int helpId) {

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
        return false;
    }
}
