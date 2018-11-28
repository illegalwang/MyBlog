package com.wj.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

/**
 * Created by wj on 2018/11/8.
 */
public class BaseController {

    /**
     * 获得一个Shiro的Session
     * @return
     */
    public static Session getSession() {
        return SecurityUtils.getSubject().getSession();
    }
}
