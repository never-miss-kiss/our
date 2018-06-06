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
    public boolean insertReport(Report report);

    /**
     * @Author：Wang
     * @Date：Created in 8:55 2018/6/5
     * @Modified By:
     */
    /**
     * 查询所有举报
     * @return
     */
    public List<Report> selectReport();

   /**
    * @Author：Wang
    * @Date：Created in 8:55 2018/6/5
    * @Modified By:
    */
    /**
     * 根据id删除举报
     * @param id
     * @return
     */
    public boolean  deleteReportById(int id);


}