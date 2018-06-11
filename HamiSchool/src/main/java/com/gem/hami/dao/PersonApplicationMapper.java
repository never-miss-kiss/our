package com.gem.hami.dao;

import com.gem.hami.entity.PersonApplication;

public interface PersonApplicationMapper {
    /**
      * @Author：Zhu
       * @param
      * @Result:
      * @Date：Created in 9:17 2018/6/5
      * @Description 个人认证（表单）
      * @Modified By:
     */
    public boolean insertPersonAplication(PersonApplication personApplication);
/**
  * @Author：Zhu
   * @param
  * @Result:
  * @Date：Created in 9:19 2018/6/5
  * @Description 处理个人申请（表单）
  * @Modified By:
 */
    public boolean deletePersonApplication(int adminId, int personApplicationId);

}