package com.wj.test;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.util.JdbcUtils;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by wisi on 2018/10/30.
 */

public class DBTest {

    @Test
    public void test1(){
        long start = System.currentTimeMillis();
        String sql = "select user_id,user_name,age from user";
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        druidDataSource.setPassword("123456");
        druidDataSource.setUrl("jdbc:mysql://127.0.0.1:3306/test_database?useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true&useSSL=false&allowMultiQueries=true");
        druidDataSource.setUsername("root");

        try {
            List<Map<String, Object>> maps = JdbcUtils.executeQuery(druidDataSource, sql);
            maps.forEach(stringObjectMap ->
                    System.out.println(stringObjectMap)
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("耗时："+(System.currentTimeMillis()-start));
    }
}
