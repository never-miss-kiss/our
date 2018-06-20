package com.gem.hami.util;

import com.gem.hami.entity.User;
import com.sun.deploy.util.StringUtils;
import org.springframework.lang.Nullable;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginIntercepter implements HandlerInterceptor{

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();

        if(url.endsWith("loginRegister.jsp")
                ||url.endsWith("selectAllHelps.action")
                ||url.endsWith("findAllGoods.action")
                ||url.endsWith("register.jsp")
                ||url.endsWith("list.action")
                ||url.endsWith("login.action")
                ||url.endsWith("login.action")
                ){
            return true;
        }

        HttpSession session =request.getSession();
        User user =(User) session.getAttribute("userInfo");
        if(user!=null){

            return true;
        }else{
            /**
             * 拦截目录下请求，是否为ajax请求
             *   是：无需登录，直接访问（因为我是用于首页的ajax登录请求）
             *   否：跳转至登录界面
             */
            if (request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){
                //如果是ajax请求响应头会有，x-requested-with
                System.out.print("发生ajax请求...");
                return true;
                //response.setHeader("sessionstatus", "timeout");//在响应头设置session状态
            }else{
                System.out.print("返回主页...");
                request.getRequestDispatcher("/sun/userLogin/loginRegister.jsp").forward(request, response);//转发到登录界面
            }
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {

    }
}
