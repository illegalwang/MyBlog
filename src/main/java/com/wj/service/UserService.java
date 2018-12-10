package com.wj.service;

import com.github.pagehelper.PageInfo;
import com.wj.bean.model.SysUser;

import java.util.List;
import java.util.Set;

/**
 * Created by wisi on 2018/11/6.
 */
public interface UserService {
    /**
     * 根据用户名查询用户信息
     * */
    SysUser selectUserByName(String username);
    /**
     * 查询用户列表
     * */
    List<SysUser> selectUserList();
    /**
     * 添加用户
     * */
    void addUser(SysUser user);
    /**
     * 删除用户
     * */
    void deleteUser(String userId);
    /**
     * 用户信息分页
     * */
    PageInfo<SysUser> selectUserListForPage(int pageNum, int pageSize, int navigatePages);
    /**
     * 修改用户信息
     * */
    void editUser(SysUser user);
    /**
     * 根据id查询所拥有的权限
     * */
    Set<String> listPermissionByUserId(String userId);
}
