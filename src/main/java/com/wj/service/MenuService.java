package com.wj.service;

import com.wj.bean.model.SysMenu;

import java.util.List;

/**
 * Created by wisi on 2018/11/21.
 */
public interface MenuService {
    List<SysMenu> selectMenuList();

    void addMenu(SysMenu menu);

    void updateMenu(SysMenu menu);

    void deleteMenu(Integer id);
}
