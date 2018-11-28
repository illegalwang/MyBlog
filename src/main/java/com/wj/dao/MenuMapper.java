package com.wj.dao;

import com.wj.bean.model.SysMenu;

import java.util.List;

/**
 * Created by wisi on 2018/11/21.
 */
public interface MenuMapper {
    List<SysMenu> selectMenuList();
}
