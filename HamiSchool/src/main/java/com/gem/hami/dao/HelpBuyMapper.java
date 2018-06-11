package com.gem.hami.dao;

import com.gem.hami.entity.HelpBuy;
import com.gem.hami.entity.HelpFetch;
import com.gem.hami.entity.HelpSend;

import java.util.List;

public interface HelpBuyMapper {

    /**
      * @Author：Tian
     * @Result:
      * @Date：Created in 19:27 2018/6/4
      * @Modified By:
     */
    public List<HelpBuy> selectHelpsById(int  userId,int schoolId);

    public HelpBuy selectHelpByHelpId(int helpId);

    public boolean insertHelpBuy(HelpBuy helpBuy);

    public boolean deleteHelpBuy(int helpId);

    public boolean updateHelpClickCount(int helpId);
}