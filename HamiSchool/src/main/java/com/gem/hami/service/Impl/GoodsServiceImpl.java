package com.gem.hami.service.Impl;

import com.gem.hami.dao.*;
import com.gem.hami.entity.*;
import com.gem.hami.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GoodsServiceImpl implements GoodsService{

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
    public List<Goods> findGoodsByCondition(QueryPojo queryPojo) {
        return goodsMapper.selectGoodsByCondition(queryPojo);
    }


    @Override
    public boolean addGoods(Goods goods) {
        return goodsMapper.insertGoods(goods);
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
