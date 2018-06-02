package com.gem.hami.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@RequestMapping("/goods")
@Controller
public class GoodControl {

    @Autowired
    private GoodService goodService;

    @RequestMapping("/main.action")
    //首页
    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获得全部商品
//        获得全部商品
        request.setAttribute("glist",goodService.selectAllGoods());
//          获得商品的类名
        request.setAttribute("clist",goodService.selectAllGoodsCatory());

//      域对象发送到首页的jsp上
        request.getRequestDispatcher("/jsp/list.jsp").forward(request,response);
    }

    @RequestMapping("/delete.action")
    public void delete(int id,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        //删除后回到首页
        goodService.deleteGood(id);

        request.getRequestDispatcher("main.action").forward(request,response);
    }

    @RequestMapping("/update.action")
    public void update(int id,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //  修改商品的最新数据查询并显示
        Goods good = goodService.getGood(id);//最新数据
        if(good!=null){
            //商品存在
//            商品修改的页面
            request.setAttribute("good",good);
            request.getRequestDispatcher("/jsp/update.jsp").forward(request,response);
        }else{

            //商品不存在，如何处理
        }

    }

    @RequestMapping(value="/updateTrue.action",method = RequestMethod.POST)
    public void updateTrue(MultipartFile imgFileUp, Goods goods, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        imgFileUp 接收文件选择器上传的文件
        String filename = imgFileUp.getOriginalFilename();

        //将这个文件上传到服务器上（images 文件夹在服务器上绝对路径）
        String imgFile = request.getServletContext().getRealPath("images");
        String img = imgFile+"/"+filename;
        File file = new File(img);
        //创建
        if(!file.exists())
        {//不存在直接创建
            file.mkdirs();
        }else{
            file.delete();//删除再创建
            file.mkdirs();
        }

        imgFileUp.transferTo(file);//图片的复制

        //图片路径发生改变
        goods.setPic("images/"+filename);



        //通过IO技术将自己电脑上的文件内容一个个读取到服务器上新创建的图片上




        //        调用service层的修改方法
        System.out.println(goods);
        if(goodService.updateGood(goods)){
            request.getRequestDispatcher("/goods/main.action").forward(request,response);
        };
    }
}
