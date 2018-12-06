package com.wj.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wj.bean.model.SysUser;
import com.wj.bean.model.SysUserExample;
import com.wj.dao.UserMapper;
import com.wj.dao.mapper.SysUserMapper;
import com.wj.service.UserService;
import com.wj.util.MD5;
import com.wj.util.UuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

/**
 * Created by wisi on 2018/11/6.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public SysUser selectUserByName(String username) {
        return this.userMapper.selectUserByName(username);
    }

    @Override
    public List<SysUser> selectUserList() {
        return this.userMapper.selectUserList();
    }

    @Override
    public void addUser(SysUser user) {
        String userId = UuidUtil.get32UUID();
        String entryptPassword = MD5.nMd5(user.getPassword(), userId);
        user.setUserId(userId);
        user.setPassword(entryptPassword);
        this.sysUserMapper.insert(user);
    }

    @Override
    public void deleteUser(String userId) {
        this.sysUserMapper.deleteByPrimaryKey(userId);
    }

    @Override
    public PageInfo<SysUser> selectUserListForPage(int pageNum, int pageSize, int navigatePages) {
        PageHelper.startPage(pageNum, pageSize);
        List<SysUser> userList = this.selectUserList();
        PageInfo<SysUser> page = new PageInfo<>(userList, navigatePages);
        return page;
    }

    @Override
    public void editUser(SysUser user) {
        SysUserExample example = new SysUserExample();
        example.createCriteria().andUserIdEqualTo(user.getUserId());
        this.sysUserMapper.updateByExampleSelective(user,example);
    }

    @Override
    public Set<String> listPermissionByUserId(String userId) {
        return userMapper.listPermissionByUserId(userId);
    }
}
