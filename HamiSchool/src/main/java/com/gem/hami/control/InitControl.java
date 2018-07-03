package com.gem.hami.control;

import com.gem.hami.entity.User;
import com.gem.hami.service.InitService;
import com.gem.miaodiyun.httpApiDemo.AccountInfo;
import com.gem.miaodiyun.httpApiDemo.IndustrySMS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

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
                request.getRequestDispatcher("/sun/userLogin/loginRegister.jsp?info=1").forward(request,response);
            }
        }else{
//            request.setAttribute("param.info","2");
            request.getRequestDispatcher("/sun/userLogin/loginRegister.jsp?info=2").forward(request,response);
        }
        System.out.println(user);


    }
    @RequestMapping(value = "/register.action")
    public void  register(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String username = request.getParameter("username");
        User user = initService.login(username);
        if (user!=null){
            PrintWriter out = response.getWriter();
            out.println("用户名已存在");
        }
    }

    @RequestMapping(value = "/registerSub.action")
    public void  registerSub(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String username = request.getParameter("user.telephone");
       String pwd = request.getParameter("user.password");
        System.out.println(username);
        System.out.println(pwd);
       User user = new User();
       user.setTelphone(username);
       user.setPassword(pwd);
       initService.register(user);
       request.getRequestDispatcher("/sun/userLogin/loginRegister.jsp?info=4").forward(request,response);
    }

    @RequestMapping
    public void yanzhengma(HttpServletRequest request, HttpServletResponse response){

        String to = request.getParameter("");

    }

    @RequestMapping("/getYanMa.action")
    public String getYanMa(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        String phone = request.getParameter("phone");
        int num= (int)((Math.random()*9+1)*100000);//6位随机数字
        System.out.println(phone +"=="+num);
//        短信内容,根据注册的模板 例如"【项目中心】您的验证码为23456，请于2分钟内正确输入，如非本人操作，请忽略此短信。"

        String Content="【项目中心】您的验证码为"+num+"，请于2分钟内正确输入，如非本人操作，请忽略此短信。";

        request.setAttribute("yan",num);

        AccountInfo.execute();
        IndustrySMS industrySMS=new IndustrySMS(phone,Content);
        String resJson=industrySMS.execute();
        System.out.println(resJson+"哈哈");
        out.println(resJson);
        return resJson;


    }

    @RequestMapping("/exit.action")
    public void  exit(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("userInfo");
        response.sendRedirect("/HamiSchool/tian/index/index.jsp");
    }


//
//    @RequestMapping("/login.action")
//    public void login(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
//        if(user.getUname().equals("xl")&&user.getPwd().equals("123")){
//            response.setCharacterEncoding("utf-8");
//            response.getWriter().print("登录成功");
//        }

//    }

}
