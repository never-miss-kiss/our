package com.gem.hami.dao;

import com.gem.hami.entity.HelpFetch;
import com.gem.hami.entity.HelpInfo;

import java.util.List;
import java.util.SortedMap;

public interface HelpInfoMapper {
    public List<HelpInfo> selectAllHelpsByCreateTime(int schoolId,int userId);
    public List<HelpInfo> selectBuyInfosByCreateTime(int schoolId);
    public List<HelpInfo> selectSendInfosByCreateTime(int schoolId);
    public List<HelpInfo> selectFetchInfosByCreateTime(int schoolId);
    public List<HelpInfo> selectQueueInfosByCreateTime(int schoolId);
}
