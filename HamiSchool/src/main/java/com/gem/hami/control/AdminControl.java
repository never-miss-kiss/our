package com.gem.hami.control;
//管理员模块 控制层

import com.gem.hami.entity.Admin;
import com.gem.hami.service.AdminService;
import com.gem.hami.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@RequestMapping("/admin")
@Controller
public class AdminControl {

    @Autowired
    private AdminService adminService;


    @RequestMapping("/allAdmin.action")
    public void allAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("allAdmin",adminService.findAllAdmin());

        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

    @RequestMapping("/insertAdmin.action")
    public void insertAdmin(Admin admin, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Admin a1 = new Admin();
        a1.setAge(23);
        a1.setEmail("eemai@sdas.com");
        a1.setNickname("Tom");

        adminService.addAdmin(a1);

        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);

    }

    @RequestMapping("/deleteAdmin.action")
    public void deleteAdmin(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.removeAdminById(2);
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

    @RequestMapping("/selectAdmin.action")
    public void selectAdminById(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.findAdmin(2);

        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

    @RequestMapping("/updateAdmin.action")
    public void updateAdmin(Integer id,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Admin admin = adminService.findAdmin(2);
        if (admin != null){
            //管理员存在
            admin.setNickname("jack");
            admin.setPassword("abc");
            adminService.modifyAdmin(admin);
            request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
        }else {
            //管理员不存在
        }
    }

//    public  findAdminsByCondition(String name);
    @RequestMapping("/selectAdminByName.action")
    public void selectAdminByName(String nickname,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.findAdminsByCondition("张");

        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }



//    关于举报的操作开始
    @RequestMapping("/reportList.action")
    public void reportList(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
         request.setAttribute("reportList",adminService.findReport());

         request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

    @RequestMapping("/selectReport.action")
    public void selectReportByReson(int rid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.findReportByReson(3);
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

    @RequestMapping("/deleteReport.action")
    public void deleteReport(int id, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        adminService.removeReportByid(id);

        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }
//    关于举报的操作结束

//关于用户的操作开始
    @RequestMapping("/deleteUser.action")
    public void deleteUserById(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.removeUserById(8);
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }


    @RequestMapping("/slectUserByName.action")
    public void selectUserByName(String uname, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.findUserByName("剑");
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

//关于用户的操作结束



}
