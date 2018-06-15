package com.gem.hami.control;

import com.gem.hami.entity.User;
import com.gem.hami.service.InitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@RequestMapping(value = "/loginpage")
@Controller
public class InitControl {
    @Autowired
    private InitService initService;
    @RequestMapping("/login.action")
    public void  login(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user.telephone");
        String psw = request.getParameter("user.password");
        User user = initService.login(username);
        if (user!=null){
            if (user.getPassword().equals(psw)){
                HttpSession session = request.getSession();
                session.setAttribute("userInfo",user);
                response.sendRedirect(request.getContextPath()+"/forum/list.action");
            }else{
//                request.setAttribute("param.info","1");
                request.getRequestDispatcher(request.getContextPath()+"/sun/userLogin/loginRegister.jsp?info=1").forward(request,response);
            }
        }else{
//            request.setAttribute("param.info","2");
            request.getRequestDispatcher(request.getContextPath()+"/sun/userLogin/loginRegister.jsp?info=2").forward(request,response);
        }
        System.out.println(user);


    }
}
