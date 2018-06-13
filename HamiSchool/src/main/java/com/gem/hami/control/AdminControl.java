package com.gem.hami.control;
//管理员模块 控制层

import com.gem.hami.entity.Admin;
import com.gem.hami.entity.WQueryPojo;
import com.gem.hami.entity.Report;
import com.gem.hami.entity.User;
import com.gem.hami.service.AdminService;
import com.gem.hami.service.HomeService;
import com.gem.hami.service.Impl.AdminServiceImpl;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RequestMapping("/admin")
@Controller
public class AdminControl {

    @Autowired
    private AdminService adminService;
    @Autowired
    private HomeService homeService;

//    关于管理员的操作开始
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
//    关于管理员的操作结束


//    关于举报的操作开始
    @RequestMapping("/reportList.action")
    public void reportList(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
         request.setAttribute("reportList",adminService.findReport());

         request.getRequestDispatcher("/wang/adminjsp/tip/reportList.jsp").forward(request,response);
    }

    @RequestMapping("/selectReport.action")
    public void selectReportByReson(int reportId,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("reportId",adminService.findReportByReson(reportId));
        request.getRequestDispatcher("/wang/adminjsp/tip/reportList.jsp").forward(request,response);
    }

    @RequestMapping("/deleteReport.action")
    public void deleteReport(int reportId, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        adminService.removeReportByid(reportId);

        request.getRequestDispatcher("/wang/adminjsp/tip/reportList.jsp").forward(request,response);
    }
//    关于举报的操作结束

//关于用户的操作开始
    @RequestMapping("/deleteUser.action")
    public void deleteUserById(Integer userId,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.removeUserById(userId);
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }
    @RequestMapping("/selectUserById.action")
    public void selectUserById(Integer userId,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        homeService.findUserById(userId);
        request.getRequestDispatcher("/wang/adminjsp/user/details.jsp").forward(request,response);
    }

    @RequestMapping("selectAllUser.action")
    public void selectAllUser(WQueryPojo queryPojo,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
//        编码问题，解决乱码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        if (queryPojo.getSex() == null || queryPojo.getSex().trim().equals("") || queryPojo.getSex().trim().equals("1")){
            queryPojo.setSex(null);
        }
        queryPojo.setUserId(queryPojo.getUserId());
        queryPojo.setShoolId(queryPojo.getShoolId());
        queryPojo.setNickname(queryPojo.getNickname());


        Map<String,Object> umap = new HashMap<>();
        umap.put("queryPojo",queryPojo);


        int pageSize = 5;

        int curPage = 1;



        String ucurPage = request.getParameter("curPage");
        if (ucurPage != null && !ucurPage.trim().equals("")){
            curPage= Integer.parseInt(ucurPage);
        }

        umap.put("pageSize",pageSize);
        umap.put("curPage",curPage);
        PageInfo<User> pageInfo = adminService.getAllUser(umap);
        request.setAttribute("pageInfo",pageInfo);
//        request.setAttribute("queryPojo",queryPojo);

        request.getRequestDispatcher("/wang/adminjsp/user/userList.jsp").forward(request,response);
    }

    @RequestMapping("/slectUserByName.action")
    public void selectUserByName(String uname, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.findUserByName("剑");
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

//关于用户的操作结束

}
