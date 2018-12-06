package com.wj.service;

import com.github.pagehelper.PageInfo;
import com.wj.bean.model.SysUser;

import java.util.List;
import java.util.Set;

/**
 * Created by wisi on 2018/11/6.
 */
public interface UserService {
    SysUser selectUserByName(String username);

    List<SysUser> selectUserList();

    void addUser(SysUser user);

    void deleteUser(String userId);

    PageInfo<SysUser> selectUserListForPage(int pageNum, int pageSize, int navigatePages);

    void editUser(SysUser user);

    Set<String> listPermissionByUserId(String userId);
}
