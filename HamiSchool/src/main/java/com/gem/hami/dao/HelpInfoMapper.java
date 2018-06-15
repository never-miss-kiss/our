package com.gem.hami.dao;

import com.gem.hami.entity.HelpFetch;
import com.gem.hami.entity.HelpInfo;

import java.util.List;
import java.util.SortedMap;

public interface HelpInfoMapper {
    public List<HelpInfo> selectAllHelpsByCreateTime();
    public List<HelpInfo> selectBuyInfosByCreateTime();
    public List<HelpInfo> selectSendInfosByCreateTime();
    public List<HelpInfo> selectFetchInfosByCreateTime();
    public List<HelpInfo> selectQueueInfosByCreateTime();
}
