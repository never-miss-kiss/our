package com.gem.hami.dao;

import com.gem.hami.entity.HelpBuy;
import com.gem.hami.entity.HelpFetch;
import com.gem.hami.entity.HelpQueue;

import java.util.List;

public interface HelpQueueMapper {

    /**
      * @Author：Tian
       * @param userId
      * @Result:
      * @Date：Created in 19:24 2018/6/4
      * @Modified By:
     */
    public List<HelpQueue> selectByUserId(int  userId,int schoolId);

    public boolean insertHelpQueue(HelpQueue helpQueue);

    public boolean deleteHelpQueue(int helpId);

    public boolean updateHelpClickCount(int helpId);

}