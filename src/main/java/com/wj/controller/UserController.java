package com.wj.controller;

import com.github.pagehelper.PageInfo;
import com.wj.bean.model.SysUser;
import com.wj.service.UserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wj on 2018/11/12.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    private static final Log log = LogFactory.getLog(UserController.class);

    @Autowired
    private UserService userService;

    /**
     * 查询
     * */
    @RequestMapping(value = "/usermanager", method = RequestMethod.GET)
    public ModelAndView toUserManager(
            @RequestParam(value = "pageNum", required = false, defaultValue = "1")int pageNum,
            @RequestParam(value = "pageSize", required = false, defaultValue = "10")int pageSize) {
        ModelAndView mode = new ModelAndView();
        PageInfo<SysUser> page = userService.selectUserListForPage(pageNum, pageSize, 10);
        mode.addObject("page",page);
        mode.setViewName("/usermanager/user_manager");
        return mode;
    }

    /**
     * 增加
     * */
    @RequestMapping(value = "/usermanager", method = RequestMethod.POST)
    public String addUser(SysUser user) {
        userService.addUser(user);
        return "redirect:/user/usermanager";
    }

    /**
     * 删除
     * */
    @RequestMapping(value = "/usermanager/{userId}", method = RequestMethod.DELETE)
    public String deleteUser(@PathVariable(value = "userId") String userId) {
        userService.deleteUser(userId);
        return "redirect:/user/usermanager";
    }

    /**
     * 修改
     * */
    @RequestMapping(value = "/usermanager", method = RequestMethod.PUT)
    public String editUser(SysUser user) {
        userService.editUser(user);
        return "redirect:/user/usermanager";
    }

    /**
     * 分页
     * */
    @RequestMapping(value = "/usermanagerpage", method = RequestMethod.GET)
    @ResponseBody
    public PageInfo<SysUser> userManagerPage(
            @RequestParam(value = "pageNum", required = false, defaultValue = "1")int pageNum,
            @RequestParam(value = "pageSize", required = false, defaultValue = "10")int pageSize) {
        PageInfo<SysUser> page = userService.selectUserListForPage(pageNum, pageSize, 10);
        return page;
    }
}
