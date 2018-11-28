package com.wj.controller.shiro;

import com.wj.bean.model.SysUser;
import com.wj.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.apache.shiro.authc.credential.PasswordService;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    /**
     * 认证
     *
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        PasswordService passwordService = new DefaultPasswordService();

        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        // token中获取username
        String username = token.getPrincipal().toString();
        SysUser user = this.userService.selectUserByName(username);

        if (null == user) {
            throw new UnknownAccountException("未知账户");
        }

        // 盐值
        ByteSource salt = ByteSource.Util.bytes(user.getUserId());

        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user, user.getPassword(), salt, getName());
        return authenticationInfo;
    }

    /**
     * 授权
     *
     * @param collection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection collection) {
        return null;
    }
}
