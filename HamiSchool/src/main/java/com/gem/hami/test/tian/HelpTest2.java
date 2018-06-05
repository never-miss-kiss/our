package com.gem.test;


import com.gem.hami.dao.HelpSendMapper;
import com.gem.hami.entity.HelpSend;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.junit.runners.JUnit4;

import java.io.IOException;
import java.util.Date;

public class HelpTest2 {
    private  SqlSessionFactory factory;

    public HelpTest2() {

        try {
            factory=new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("config/SqlMapConfig.xml"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    //    JUnit4测试的方法不能有返回值，不能有参数
    @Test
    public  void testSelectByName(){
//      sqlSession 私有的
        SqlSession sqlSession=factory.openSession();
        HelpSendMapper mapper =sqlSession.getMapper(HelpSendMapper.class);
        System.out.println(mapper.selectByUserId(2));
        sqlSession.close();
    }




}




