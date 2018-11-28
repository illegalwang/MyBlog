package com.wj.controller;

import com.wj.bean.model.SysMenu;
import com.wj.service.MenuService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by wisi on 2018/11/22.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    private static final Log log = LogFactory.getLog(MenuController.class);

    @Autowired
    private MenuService menuService;

    @RequestMapping(value = "/menumanager", method = RequestMethod.GET)
    public ModelAndView toMenuManager() {
        ModelAndView model = new ModelAndView();
        model.setViewName("/menumanager/menu_manager");
        return model;
    }

    @RequestMapping(value = "/menu", method = RequestMethod.GET)
    @ResponseBody
    public List<SysMenu> queryMenu() {
        List<SysMenu> menuList = menuService.selectMenuList();
        return menuList;
    }

    @RequestMapping(value = "menu", method = RequestMethod.POST)
    public String addMenu(SysMenu menu) {
        menuService.addMenu(menu);
        return "redirect:/menu/menu";
    }

    @RequestMapping(value = "menu", method = RequestMethod.PUT)
    public String updateMenu(SysMenu menu) {
        menuService.updateMenu(menu);
        return "redirect:/menu/menu";
    }

    @RequestMapping(value = "menu/{ids}", method = RequestMethod.DELETE)
    public String deleteMenu(@PathVariable(value = "ids")Integer[] ids) {
        menuService.deleteMenu(ids);
        return "redirect:/menu/menu";
    }
}
