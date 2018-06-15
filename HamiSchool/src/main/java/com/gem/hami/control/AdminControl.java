package com.gem.hami.control;
//管理员模块 控制层

import com.gem.hami.entity.*;
import com.gem.hami.service.AdminService;
import com.gem.hami.service.GoodsService;
import com.gem.hami.service.HomeService;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


@RequestMapping("/admin")
@Controller
public class AdminControl {

    @Autowired
    private AdminService adminService;
    @Autowired
    private HomeService homeService;

    @Autowired
    private GoodsService goodsService;

//    关于管理员的操作开始
    @RequestMapping("/allAdmin.action")
    public void allAdmin(QueryPojo_Admin queryPojo,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

       /*queryPojo.setAdminId(queryPojo.getAdminId());
       queryPojo.setAdminAuthorityId(queryPojo.getAdminAuthorityId());
       queryPojo.setNickname(queryPojo.getNickname());
       queryPojo.setName(queryPojo.getName());
       queryPojo.setEmail(queryPojo.getEmail());
       queryPojo.setPhone(queryPojo.getPhone());
       queryPojo.setUserId(queryPojo.getUserId());
       queryPojo.setAuthority(queryPojo.getAuthority());*/

        Map<String,Object> amap = new HashMap<>();

        amap.put("queryPojo",queryPojo);

        int pageSize = 5;
        int curPage = 1;

        String acurPage = request.getParameter("curPage");

        if (acurPage != null && !acurPage.trim().equals("")){
            curPage= Integer.parseInt(acurPage);
        }
        amap.put("pageSize",pageSize);
        amap.put("curPage",curPage);
        PageInfo<Admin> pageInfo = adminService.getAllAdmin(amap);
        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("queryPojo",queryPojo);

        request.getRequestDispatcher("/wang/admin/adminList.jsp").forward(request,response);
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
    @RequestMapping(value = "/updateAdmin.action")
    public void updateAdmin(Admin admin,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.modifyAdmin(admin);

        request.getRequestDispatcher("wang/admin/updateAdmin.jsp").forward(request,response                                                                                                                                                                     );
    }

 /*   @RequestMapping("/selectAdmin.action")
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
*/
//    public  findAdminsByCondition(String name);
    @RequestMapping("/selectAdminByName.action")
    public void selectAdminByName(String nickname,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.findAdminsByCondition("张");

        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }
//    关于管理员的操作结束


//    关于举报的操作开始
    @RequestMapping("/reportList.action")
    public void reportList(QueryPojo_Report queryPojo, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        /*queryPojo.setReportId(queryPojo.getReportId());
        System.out.println(queryPojo.getReportId());
        queryPojo.setReportedUserId(queryPojo.getReportedUserId());
        queryPojo.setCreateTime(queryPojo.getCreateTime());
        queryPojo.setReasonCategoryId(queryPojo.getReasonCategoryId());
        queryPojo.setSourceItemId(queryPojo.getSourceItemId());*/

        Map<String,Object> rmap = new HashMap<>();

        rmap.put("queryPojo",queryPojo);

        int pageSize = 5;
        int curPage = 1;

        String rcurPage = request.getParameter("curPage");

        if (rcurPage != null && !rcurPage.trim().equals("")){
            curPage= Integer.parseInt(rcurPage);
        }
        rmap.put("pageSize",pageSize);
        rmap.put("curPage",curPage);
        PageInfo<Report> pageInfo = adminService.getAllReprort(rmap);
        request.setAttribute("pageInfo",pageInfo);
//        request.setAttribute("queryPojo",queryPojo);
         request.getRequestDispatcher("/wang/report/reportList.jsp").forward(request,response);
    }

    @RequestMapping("/selectReport.action")
    public void selectReportByReson(Integer reportId,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("reportId",adminService.findReportByReson(reportId));
        request.getRequestDispatcher("/wang/report/reportList.jsp").forward(request,response);
    }

    @RequestMapping("/deleteReport.action")
    public void deleteReport(Integer reportId, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

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
    public void selectAllUser(QueryPojo_User queryPojo, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

        request.getRequestDispatcher("/wang/user/userList.jsp").forward(request,response);
    }

    @RequestMapping("/slectUserByName.action")
    public void selectUserByName(String uname, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        adminService.findUserByName("剑");
        request.getRequestDispatcher("/wang/index.jsp").forward(request,response);
    }

//关于用户的操作结束

//    关于商品的操作开始

    @RequestMapping("/goodsList.action")
    public void selectAllGoods(QueryPojo_Goods queryPojo,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        //        编码问题，解决乱码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
       /* if (queryPojo.getSex() == null || queryPojo.getSex().trim().equals("") || queryPojo.getSex().trim().equals("1")){
            queryPojo.setSex(null);
        }
        queryPojo.setUserId(queryPojo.getUserId());
        queryPojo.setShoolId(queryPojo.getShoolId());
        queryPojo.setNickname(queryPojo.getNickname());*/
        queryPojo.setGoodsId(queryPojo.getGoodsId());
//        queryPojo.setUserId(queryPojo.getUserId());
//        queryPojo.setGoodsCategoryId(queryPojo.getGoodsCategoryId());
        queryPojo.setName(queryPojo.getName());
//        queryPojo.setNickname(queryPojo.getUser().getNickname());
//        queryPojo.setGoodsCategoryName(queryPojo.getGoodsCategory().getGoodsCategoryName());

        if (queryPojo.getGoodsCategoryId()!=null && !queryPojo.getGoodsCategoryId().toString().trim().equals("") && !queryPojo.getGoodsCategoryId().equals("1")){
            queryPojo.setGoodsCategoryId(queryPojo.getGoodsCategoryId());
        }

        Map<String,Object> gmap = new HashMap<>();
        gmap.put("queryPojo",queryPojo);


        int pageSize = 5;

        int curPage = 1;

        String gcurPage = request.getParameter("curPage");
        if (gcurPage != null && !gcurPage.trim().equals("")){
            curPage= Integer.parseInt(gcurPage);
        }
        gmap.put("pageSize",pageSize);
        gmap.put("curPage",curPage);

//        PageInfo<User> pageInfo = adminService.getAllUser(gmap);
        PageInfo<Goods> pageInfo = goodsService.selectGoodByCondition(gmap);
        request.setAttribute("pageInfo",pageInfo);

        List<GoodsCategory> categoryList =  goodsService.findGoodsCategory();

        request.setAttribute("clist",categoryList);
        request.setAttribute("queryPojo",queryPojo);
        request.getRequestDispatcher("/wang/goods/goodsList.jsp").forward(request,response);

    }


//    关于商品的操作结束
}
