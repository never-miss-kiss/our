package com.gem.hami.control;

import com.gem.hami.entity.PersonApplication;
import com.gem.hami.entity.SchoolApplication;
import com.gem.hami.entity.User;
import com.gem.hami.service.CertifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

//个人认证 开通学校模块控制层
@RequestMapping("/certify")
@Controller
public class CertifyControl {


    @Autowired
    CertifyService certifyService;
    //开通学校
    @RequestMapping("/addSchool.action")
    public  void addSchool(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u = (User) request.getSession().getAttribute("userInfo");
        int userId = u.getUserId();
        String name = u.getNickname();
        String school = request.getParameter("school");
        String  telphone = request.getParameter("tel");
        int schoolId = certifyService.findSchoolIdByName(school);
        SchoolApplication schoolApplication = new SchoolApplication();
        schoolApplication.setSchoolId(schoolId);
        schoolApplication.setUserId(userId);
        schoolApplication.setName(name);
        schoolApplication.setPhone(telphone);
        schoolApplication.setSubmitTime(new Date());
        boolean flag = certifyService.addSchoolApplication(schoolApplication);
        if(flag==true){
            System.out.println("添加学校申请表单成功！");
        }

        request.getRequestDispatcher("/zhu/jsp/main.jsp").forward(request,response);

    }
    //个人认证
    @RequestMapping("/personApplication.action")
    public void personApplication(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("pname");
        String zjh = request.getParameter("zjh");
        String schoolName = request.getParameter("pschool");

        PersonApplication personApplication = new PersonApplication();
        personApplication.setName(uname);
        personApplication.setSubmitTime(new Date());
        personApplication.setSchoolName(schoolName);
        personApplication.setZjh(zjh);
        boolean flag = certifyService.addPersonAplication(personApplication);
        if(flag==true){
            System.out.println("个人认证提交成功，等待通知");
        }

        request.getRequestDispatcher("/zhu/jsp/main.jsp").forward(request,response);

    }
}
