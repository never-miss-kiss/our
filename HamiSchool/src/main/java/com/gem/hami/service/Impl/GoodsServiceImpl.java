package com.gem.hami.service.Impl;

import com.gem.hami.dao.*;
import com.gem.hami.entity.*;
import com.gem.hami.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;
    @Autowired
    private GoodsCategoryMapper goodsCategoryMapper;
    @Autowired
    private GoodsCollectionMapper goodsCollectionMapper;
    @Autowired
    private GoodsCommentMapper goodsCommentMapper;
    @Autowired
    private GoodsCommentReplyMapper goodsCommentReplyMapper;


    @Override
    public List<GoodsCategory> findGoodsCategory() {
        return goodsCategoryMapper.selectGoodsCategory();
    }

    @Override
    public Goods findGoodsById(int id) {

        return goodsMapper.selectGoodsById(id);
    }

    @Override
    public List<Goods> findGoodsByCategoryId(int id) {
        return goodsMapper.selectGoodsByCategoryId(id);
    }

    @Override
    public void modifyClickCount(Goods goods) {
        goodsMapper.updateClickCount(goods);
    }

    @Override
    public PageInfo<Goods> findGoodsByCondition
            (Map<String, Object> map) {


        int curPage = (int) map.get("curPage");
        int pageSize = (int) map.get("pageSize");

        PageHelper.startPage(curPage,pageSize);
        List<Goods> goods = goodsMapper.selectGoodsByCondition((QueryPojo) map.get("queryPojo"));
        PageInfo<Goods> pageInfo = new PageInfo<>(goods);
        return pageInfo ;
    }



    @Override
    public boolean addGoods(Goods goods) {
        return goodsMapper.insertGoods(goods);
    }

    @Override
    public List<GoodsComment> findGoodsCommentByGoodsId(int goodsId) {
        return goodsCommentMapper.selectGoodsCommentByGoodsId(goodsId);
    }

    @Override
    public GoodsComment findGoodsCommentByGoodsCommentId(int goodsCommentId) {
        return goodsCommentMapper.selectGoodsCommentByGoodsCommentId(goodsCommentId);
    }

    @Override
    public List<GoodsCommentReply> findGoodsCommentReply(int goodsCommentId) {
        return goodsCommentReplyMapper.selectGoodsCommentReply(goodsCommentId);
    }

    @Override
    public boolean addGoodsComment(GoodsComment goodsComment) {

        return goodsCommentMapper.insertGoodsComment(goodsComment);
    }

    @Override
    public boolean addGoodsCommentReply(GoodsCommentReply goodsCommentReply) {

        return goodsCommentReplyMapper.insertGoodsCommentReply(goodsCommentReply);
    }

    @Override
    public boolean addGoodsCollection(GoodsCollection goodsCollection) {

        return goodsCollectionMapper.insertGoodsCollection(goodsCollection);
    }

    @Override
    public List<Goods> recommend(int userId, int goodsId) {
        return goodsMapper.selectRecommend(userId, goodsId);
    }

    @Override
    public boolean modifyGoodsByCondition(Goods goods) {

        return goodsMapper.updateGoodsByCondition(goods);
    }

    @Override
    public boolean removeGoods(int goodsId) {

        return goodsMapper.deleteGoods(goodsId);
    }

    @Override
    public boolean removeGoodsComment(int goodsCommentId) {
        return goodsCommentMapper.deleteGoodsComment(goodsCommentId);
    }

    @Override
    public boolean removeGoodsCommentReply(int replyId) {
        return goodsCommentReplyMapper.deleteGoodsCommentReply(replyId);
    }

    @Override
    public List<GoodsCollection> findGoodsCollectionsByCondition(int userId) {

        return goodsCollectionMapper.selectGoodsCollectionsByCondition(userId);
    }

    @Override
    public boolean removeGoodsCollection(int goodsCollectionId) {

        return goodsCollectionMapper.deleteGoodsCollection(goodsCollectionId);
    }
}
