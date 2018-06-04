package com.gem.hami.service;

import com.gem.hami.entity.PersonApplication;
import com.gem.hami.entity.School;
import com.gem.hami.entity.SchoolApplication;

import java.util.List;

public interface CertifyService {
    /*/certify/addSchoolApplication.action
    开通学校（即开通学校的表单提交功能）*/
    public boolean addSchoolApplication(SchoolApplication schoolApplication);


//    /certify/findCertifiedSchool.action
//            显示已开通学校
    public List<String> findCertifiedSchool();


//    个人认证（即个人认证的表单提交功能）
//  /certify/addPersonAppliation.action
    public boolean addPersonAplication(PersonApplication personApplication);


//    /certify/removeApplication.action
//            处理个人申请表单;
    public boolean removePersonApplication(int adminId,int personApplicationId);


//     /certify/removeSchoolApplication.action
//    学校认证（即学校认证的表单提交功能）
    public boolean removeSchoolApplication(int adminId,int schoolApplicationId);


}
