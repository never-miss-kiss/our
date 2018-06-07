package com.gem.hami.dao;

import com.gem.hami.entity.School;

import java.util.List;

public interface SchoolMapper {
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 9:16 2018/6/5
      * @Description 查询开通过的学校信息
      * @Modified By:
     */
    public List<School> selectCertifiedSchool();


}