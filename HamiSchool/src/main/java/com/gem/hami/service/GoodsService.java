package com.gem.hami.service;

import com.gem.hami.entity.Goods;
import com.gem.hami.entity.GoodsCollection;
import com.gem.hami.entity.GoodsComment;
import com.gem.hami.entity.GoodsCommentReply;

import java.util.List;

public interface GoodsService {

//    /goods/findGoods.action
//    查询单个商品（按id）
    public Goods findGoods(int id);

//  /goods/findGoodsByCondition.action
//    按条件查询商品列表（对应搜索框的模糊查询，
//    (对应按商品种类，按学校分类功能)
// 按发布时间，热度，价格排序
//name 表示要模糊查询的名字
//goodsCategoryId表示 商品种类id
//userId 用户主键
//schoolId 学校id
//sortId 表示排序的类型 1为按学校 2为按热度(点击量) 3为按价格
    public List<Goods> findGoodsByCondition(String name,int goodsCategoryId,int userId,
                                            int schoolId,int sortId);

//    /goods/addGoods.action
//            发布二手商品
    public boolean addGoods(Goods goods);


//    /goods/addGoodsComment.action
//            添加商品评论
    public boolean addGoodsComment(GoodsComment goodsComment);


//    /goods/addGoodsCommentReply.action
//            添加回复评论
    public boolean addGoodsCommentReply(GoodsCommentReply goodsCommentReply);


//    /goods/addGoodsCollection.action
//            商品收藏
    public boolean addGoodsCollection(int userId,int goodsId);


//   /goods/recommend.action
//            推荐功能
    public List<Goods> recommend(int userId,int goodsId);


//  /goods/modifyGoodsByCondition.action
//   修改商品信息
//            点击量增加
    public boolean modifyGoodsByCondition(Goods goods,int goodsId);


///home/removeGoods.action
//            删除商品信息
    public boolean removeGoods(int goodsId);



    //  /goods/removeGoodsComment.action
//            删除商品评论
    public boolean removeGoodsComment(int goodsCommentId);

//  /goods/removeGoodsCommentReply.action
//            删除商品评论回复
    public boolean removeGoodsCommentReply(int replyId);



}
