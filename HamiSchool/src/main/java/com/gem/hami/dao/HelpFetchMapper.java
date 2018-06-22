package com.gem.hami.dao;

import com.gem.hami.entity.HelpBuy;
import com.gem.hami.entity.HelpFetch;
import com.gem.hami.entity.HelpSend;

import java.util.List;

public interface HelpFetchMapper {
    /**
     * @Author：Tian
     * @Result:
     * @Date：Created in 19:20 2018/6/4
     * @Modified By:
     */

    public List<HelpFetch> selectHelpsById(int  userId,int schoolId);

    public HelpFetch selectHelpByHelpId(int helpId);

    public boolean insertHelpFetch(HelpFetch helpFetch);

    public boolean deleteHelpFetch(int helpId);

    public boolean updateHelpClickCount(int helpId);

    public boolean deleteHelpsInSchedule();
}