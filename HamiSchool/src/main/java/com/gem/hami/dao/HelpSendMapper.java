package com.gem.hami.dao;

import com.gem.hami.entity.HelpBuy;
import com.gem.hami.entity.HelpFetch;
import com.gem.hami.entity.HelpQueue;
import com.gem.hami.entity.HelpSend;

import java.util.List;

public interface HelpSendMapper {

    /**
      * @Author：Tian
      * @Result:
      * @Date：Created in 19:28 2018/6/4
      * @Modified By:
     */

    public List<HelpSend> selectByUserId(int  userId,int schoolId);

    public boolean insertHelpSend(HelpSend helpSend);
//
    public boolean deleteHelpSend(int helpId);

}
