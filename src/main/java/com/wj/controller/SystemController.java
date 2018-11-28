package com.wj.controller;

import com.wj.bean.model.SysMenu;
import com.wj.service.MenuService;
import com.wj.util.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Arrays;
import java.util.List;

/**
 * 系统Controller
 * Created by wj on 2018/10/29.
 */
@Controller
public class SystemController extends BaseController {

    private static final Log log = LogFactory.getLog(SystemController.class);

    @Autowired
    private MenuService menuService;
    /**
     * 去登陆页面
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/system/login";
    }

    /**
     * 登陆页面带参数的请求
     * @param username
     * @param password
     * @param redirectAttribute
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(
            @RequestParam(value = "username", required = false)String username,
            @RequestParam(value = "password", required = false)String password,
            RedirectAttributes redirectAttribute) {
        Session session = BaseController.getSession();

        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            redirectAttribute.addFlashAttribute("message", "用户名或密码不能为空!");
            return "redirect:/login";
        }

        // 相当于获取当前用户
        Subject subject = SecurityUtils.getSubject();
        // 创建一个用户名/密码的身份验证token
        UsernamePasswordToken token = new UsernamePasswordToken(username, password, "myRealm");

        try {
            // 登录， 即身份验证
            subject.login(token);
        } catch (UnknownAccountException e) {
            // 未知账户\
            redirectAttribute.addFlashAttribute("message", "用户名或密码不正确！");
        } catch (IncorrectCredentialsException e) {
            // 密码错误
            redirectAttribute.addFlashAttribute("message", "用户名或密码不正确！");
        } catch (LockedAccountException e) {
            // 账户已锁定
            redirectAttribute.addFlashAttribute("message", "账户已锁定！");
        } catch (ExcessiveAttemptsException e) {
            // 用户名或密码错误次数太多
            redirectAttribute.addFlashAttribute("message", "用户名密码错误次数过多！");
        } catch (AuthenticationException e) {
            // 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
            e.printStackTrace();
            redirectAttribute.addFlashAttribute("message", "登录失败，请重新登录！");
        }

        if (subject.isAuthenticated()) {
            List<SysMenu> menuList = this.menuService.selectMenuList();
            session.setAttribute("menuList", menuList);
            return "redirect:/index";
        } else {
            token.clear();
            return "redirect:/login";
        }
    }

    /**
     * 去主页面
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "/system/index";
    }

    /**
     * 登出
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        // 退出系统
        SecurityUtils.getSubject().logout();
        return "/system/login";
    }

    /**
     * 没有权限
     * @return
     */
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String unAuthorizedRole() {
        return "/403";
    }

}
