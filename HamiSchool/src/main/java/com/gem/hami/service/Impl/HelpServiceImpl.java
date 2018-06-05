package com.gem.hami.service.Impl;

import com.gem.hami.dao.HelpSendMapper;
import com.gem.hami.entity.*;
import com.gem.hami.service.HelpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HelpServiceImpl implements HelpService{

    @Autowired
    private HelpSendMapper helpSendMapper;

    @Override
    public List<HelpInfo> findHelpByCondition(int userId, int schoolId, int sortId) {
        List<HelpInfo> helpInfos = new ArrayList<HelpInfo>();
        List<HelpSend>  helpSends =  helpSendMapper.selectByUserId(userId);
        helpInfos.addAll(helpSends);
        return helpInfos;

    }

    @Override
    public List<HelpBuy> addHelpBuy(HelpBuy helpBuy) {
        return null;
    }

    @Override
    public List<HelpFetch> addHelpFetch(HelpFetch helpFetch) {
        return null;
    }

    @Override
    public List<HelpSend> addHelpSend(HelpSend helpSend) {

        return null;
    }

    @Override
    public List<HelpQueue> addHelpQueue(HelpQueue helpQueue) {
        return null;
    }

    @Override
    public boolean addHelpComment(HelpComment helpComment) {
        return false;
    }

    @Override
    public boolean addCommentReply(HelpCommentReply helpCommentReply) {
        return false;
    }

    @Override
    public boolean removeHelp(short typeId, int helpId) {
        return false;
    }

    @Override
    public boolean removeHelpComment(int helpCommentId) {
        return false;
    }

    @Override
    public boolean removeHelpCommentReply(int replyId) {
        return false;
    }
}
