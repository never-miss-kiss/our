package com.gem.hami.service;

import com.gem.hami.entity.*;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface GoodsService {
//    查询商品类别

    public List<GoodsCategory> findGoodsCategory();

//    /goods/findGoodsById.action
//    查询单个商品（按id）
    public Goods findGoodsById(int id);

    //按商品类别查询商品
    public List<Goods> findGoodsByCategoryId(int id);


    //点击商品时实现点击数加1
    public void modifyClickCount(Goods goods);

//  /goods/findGoodsByCondition.action
//    按条件查询商品列表（对应搜索框的模糊查询，
//    (对应按商品种类，按学校分类功能)
// 按发布时间，热度，价格排序
//name 表示要模糊查询的名字
//goodsCategoryId表示 商品种类id
//userId 用户主键
//schoolId 学校id
//sortId 表示排序的类型 1为按学校 2为按热度(点击量) 3为按价格
public PageInfo<Goods> findGoodsByCondition(Map<String, Object> map);



//    /goods/addGoods.action
//            发布二手商品
    public boolean addGoods(Goods goods);

//    查询商品评论（根据商品ID）
    public List<GoodsComment> findGoodsCommentByGoodsId(int goodsId);

//    查询单个商品评论（评论ID）
    public GoodsComment findGoodsCommentByGoodsCommentId(int goodsCommentId);

//    查询被回复的评论
    public List<GoodsCommentReply> findGoodsCommentReply(int goodsCommentId);


//    /goods/addGoodsComment.action
//            添加商品评论
    public boolean addGoodsComment(GoodsComment goodsComment);


//    /goods/addGoodsCommentReply.action
//            添加回复评论
    public boolean addGoodsCommentReply(GoodsCommentReply goodsCommentReply);


//    /goods/addGoodsCollection.action
//            商品收藏
    public boolean addGoodsCollection(GoodsCollection goodsCollection);


//   /goods/recommend.action
//            推荐功能
    public List<Goods> recommend(int userId, int goodsId);


//  /goods/modifyGoodsByCondition.action
//   修改商品信息
//            点击量增加
    public boolean modifyGoodsByCondition(Goods goods);


///home/removeGoods.action
//            删除商品信息
    public boolean removeGoods(int goodsId);


    //  /goods/removeGoodsComment.action
//            删除商品评论
    public boolean removeGoodsComment(int goodsCommentId);

//  /goods/removeGoodsCommentReply.action
//            删除商品评论回复
    public boolean removeGoodsCommentReply(int replyId);

//     /home/findCollectionByCondition.action
//    显示我的收藏（包含收藏的物品）：
//   userId 用户号
    public List<GoodsCollection> findGoodsCollectionsByCondition(int userId);


// /home/removeCollection.action
//            取消收藏的东西
// collectionId  表示要删除的数据在它的表中的主键
    public boolean removeGoodsCollection(int goodsCollectionId);

}
