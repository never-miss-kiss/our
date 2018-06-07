package com.gem.hami.dao;

import com.gem.hami.entity.Report;

import java.util.List;

public interface ReportMapper {

    /**
     * @Author：Wang
     * @Date：Created in 20:19 2018/6/4
     * @Modified By:
     */
    /**
     * 增加举报信息
     * @param report
     * @return
     */
    public boolean addReport(Report report);


}