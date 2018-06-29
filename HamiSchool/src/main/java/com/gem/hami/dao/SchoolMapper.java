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
/**
  * @Author：Zhu
   * @param
  * @Result:
  * @Date：Created in 21:13 2018/6/7
  * @Description
  * @Modified By:
 */
    public List<School> selectSchoolByUserId(int userId);



    /**
      * @Author：Tian
       * @param ：学校名
      * @Description：用来模糊查找学校
      * @Result:
      * @Date：Created in 12:58 2018/6/20
      * @Modified By:
     */
    public List<School> selectSchoolsByKeyWord(String keyWord);

    public int selectSchoolIdByName(String name);

}