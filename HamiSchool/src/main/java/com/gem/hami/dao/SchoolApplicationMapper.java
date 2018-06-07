package com.gem.hami.dao;

import com.gem.hami.entity.SchoolApplication;

public interface SchoolApplicationMapper {
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 9:13 2018/6/5
      * @Description 开通学校
      * @Modified By:
     */
    public boolean insetSchoolApplication(SchoolApplication schoolApplication);
/**
  * @Author：Zhu
   * @param
  * @Result:
  * @Date：Created in 9:20 2018/6/5
  * @Description 处理学校申请表单
  * @Modified By:
 */
    public boolean deleteSchoolApplication(int adminId, int schoolApplicationId);

}