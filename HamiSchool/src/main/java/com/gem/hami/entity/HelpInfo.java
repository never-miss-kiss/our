package com.gem.hami.entity;

import java.util.Date;

public class HelpInfo {

    protected String name;

    protected Float recommendedPrice;

    protected Float personPrice;

    protected Date createTime;

    protected Integer userId;

    protected  Date endTime;

    protected String isFinished;

    protected byte helpType;//表示跑腿表的种类 1帮我买 2.帮我送 3.帮我取 4.代排队

}
