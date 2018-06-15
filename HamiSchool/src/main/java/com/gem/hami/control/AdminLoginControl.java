package com.gem.hami.control;

import com.gem.hami.entity.Admin;
import com.gem.hami.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 *@Author：wang
 *@Date: Created in 2018-6-14 15:57:08
 *@Modified By:
 */

@RequestMapping(value = "/adminLogin")
@Controller
public class AdminLoginControl {
    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "adminlogin.action",method = RequestMethod.POST)
    public void adminLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        /*Admin a = adminService.findAdminByname(admin.getNickname());
        Admin b = adminService.findAdminByEmail(admin.getEmail());*/
        String username = request.getParameter("admin.nickname");
        String email = request.getParameter("admin.email");
        String password = request.getParameter("admin.password");
        String flag = request.getParameter("flag");

        Admin a = adminService.findAdminByEmail(email);
        Admin b = adminService.findAdminByname(username);

        if (b != null){
//            管理员存在
            if (b.getPassword().equals(password)){
                HttpSession session = request.getSession();
                session.setAttribute("admin",b);

                if("1".equals(flag)) {
                    boolean f = false;
                    Cookie[] cs = request.getCookies();
                    for(Cookie c : cs) {
                        if("admin".equals(c.getName())) {
                            f = true;
                            break;
                        }
                    }

                    if(!f) {
                        Cookie cookie = new Cookie("admin",username+"-"+password);
                        cookie.setMaxAge(60*60*24*14);
                        cookie.setPath("/");

                        response.addCookie(cookie);
                    }

                }
                response.sendRedirect(request.getContextPath()+"/wang/admin/index.jsp");
            }else {
                response.sendRedirect(request.getContextPath()+"/wang/admin/login.jsp?info=2");

            }
        }else {
            response.sendRedirect(request.getContextPath()+"/wang/admin/login.jsp?info=1");
        }

    }

}
