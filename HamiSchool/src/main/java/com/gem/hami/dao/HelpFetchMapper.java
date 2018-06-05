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
    public List<HelpFetch> selectByUsreId(int userId);

    public List<HelpFetch> insertHelpFetch(HelpBuy helpBuy);

    public List<HelpFetch> deleteHelpFetch(int helpId);
}