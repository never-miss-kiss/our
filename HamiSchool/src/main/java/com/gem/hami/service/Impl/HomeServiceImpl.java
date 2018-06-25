package com.gem.hami.service.Impl;

import com.gem.hami.dao.GoodsCollectionMapper;
import com.gem.hami.dao.GoodsMapper;
import com.gem.hami.dao.UserMapper;
import com.gem.hami.dao.UserMessageMapper;
import com.gem.hami.entity.*;
import com.gem.hami.service.HomeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    private UserMessageMapper userMessageMapper ;

    @Autowired
    private GoodsMapper goodsMapper;

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private GoodsCollectionMapper goodsCollectionMapper;

    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    @Override
    public User findUserById(Integer userId) {
        return userMapper.selectUserById(userId);
    }

    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    @Override
    public boolean modifyUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public boolean modifyPassInUser(String password) {
        return userMapper.updatePassInUser(password);
    }

    @Override
    public PageInfo<Goods> allGoodsCollection(Map<String, Object> map) {
        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");

        PageHelper.startPage(curPage,pageSize);
        List<Goods> goodsList = goodsCollectionMapper.selectAllGoodsCollections((Goods) map.get("queryPojo"));

        PageInfo<Goods> pageInfo = new PageInfo<>(goodsList);
        return pageInfo ;
    }

    @Override
    public PageInfo<Goods> selectGoodByUserId(Map<String, Object> map) {
        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");

        PageHelper.startPage(curPage,pageSize);
        List<Goods> goodsList = goodsMapper.getAllGoodsByUserId((QueryPojo_Goods) map.get("queryPojo"));

        PageInfo<Goods> pageInfo = new PageInfo<>(goodsList);
        return pageInfo ;
    }


    @Override
    public PageInfo<UserMessage> getAllUserMessageByUserId(Map<String, Object> map) {
        return null;
    }

    @Override
    public PageInfo<HelpBuy> listHelpBuy(Map<String, Object> map) {
        int curPage1 = (int) map.get("curPage");
        int pageSize1 = (int) map.get("pageSize");

        PageHelper.startPage(curPage1,pageSize1);
//        List<HelpBuy> buyList = goodsMapper.getAllGoodsByUserId((QueryPojo_Goods) map.get("queryPojo"));

//        PageInfo<Goods> pageInfo = new PageInfo<>(buyList);
        return null ;
    }

    @Override
    public PageInfo<HelpFetch> listHelpFetch(Map<String, Object> map) {
        return null;
    }

    @Override
    public PageInfo<HelpSend> listHelpSend(Map<String, Object> map) {
        return null;
    }

    @Override
    public PageInfo<HelpQueue> listHelpQueue(Map<String, Object> map) {
        return null;
    }


    /**
      * @Author：sunshilin
      * @param: userId
      * @result: 消息通知列表
      * @Description:查询某人的所有消息通知
      * @Date：Created in 10:17 2018/6/7
      * @Modified By:
     */
    @Override
    public List<UserMessage> findUserMessagesByCondition(int userId) {
        return userMessageMapper.selectUserMessagesByCondition(userId) ;
    }


    /**
      * @Author：sunshilin
      * @param: * @param null
      * @result:
      * @Description:
      * @Date：Created in 10:18 2018/6/7
      * @Modified By:
     */
    @Override
    public boolean removeUserMessage(int userMessageId) {
        userMessageMapper.modifyUserMessagesIsRead(userMessageId);
        return userMessageMapper.deleteUserMessagesIsRead();
    }
}
