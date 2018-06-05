package com.gem.hami.test.tian;

import com.gem.hami.dao.HelpSendMapper;
import com.gem.hami.entity.HelpSend;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;

public class HelpTest {
    @Autowired
    HelpSendMapper mapper;

    //    JUnit4测试的方法不能有返回值，不能有参数
    @Test
    public  void testSelectByName(){
//      sqlSession 私有的
        System.out.println(mapper.selectByUserId(2));

    }
}
