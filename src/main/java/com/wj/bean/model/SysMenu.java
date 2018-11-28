package com.wj.bean.model;

import java.util.List;

public class SysMenu {
    private Integer id;

    private String menuName;

    private String menuPath;

    private Integer parentId;

    private Integer menuSort;

    private String cssClass;

    private List<SysMenu> childList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public String getMenuPath() {
        return menuPath;
    }

    public void setMenuPath(String menuPath) {
        this.menuPath = menuPath == null ? null : menuPath.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getMenuSort() {
        return menuSort;
    }

    public void setMenuSort(Integer menuSort) {
        this.menuSort = menuSort;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass == null ? null : cssClass.trim();
    }

    public List<SysMenu> getChildList() {
        return childList;
    }

    public void setChildList(List<SysMenu> childList) {
        this.childList = childList;
    }

    @Override
    public String toString() {
        return "{" +
                "id:" + id +
                ", menuName:'" + menuName + '\'' +
                ", menuPath:'" + menuPath + '\'' +
                ", parentId:" + parentId +
                ", menuSort:" + menuSort +
                ", cssClass:'" + cssClass + '\'' +
                ", childList:" + childList +
                '}';
    }
}