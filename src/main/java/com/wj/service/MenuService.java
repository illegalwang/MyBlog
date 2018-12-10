package com.wj.service;

import com.wj.bean.model.SysMenu;

import java.util.List;

/**
 * Created by wisi on 2018/11/21.
 */
public interface MenuService {
    /**
     * TODO 查询所有菜单，还没有根据权限查询，需要修改
     * */
    List<SysMenu> selectMenuList();
    /**
     * 添加菜单
     * */
    void addMenu(SysMenu menu);
    /**
     * 修改菜单信息
     * */
    void updateMenu(SysMenu menu);
    /**
     * 删除菜单
     * */
    void deleteMenu(Integer[] ids);
}
