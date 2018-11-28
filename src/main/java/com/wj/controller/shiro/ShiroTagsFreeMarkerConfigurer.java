package com.wj.controller.shiro;

import com.jagregory.shiro.freemarker.ShiroTags;
import freemarker.template.TemplateException;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.io.IOException;

/**
 * 自定义的ShiroTagsFreeMarkerConfigurer类集成Spring本身提供的FreeMarkerConfigurer，
 * 目的是为了再FreeMarker中的Configurer中添加Shiro标签
 * Created by wj on 2018/11/8.
 */
public class ShiroTagsFreeMarkerConfigurer extends FreeMarkerConfigurer {
    @Override
    public void afterPropertiesSet() throws IOException, TemplateException {
        super.afterPropertiesSet();
        this.getConfiguration().setSharedVariable("shiro", new ShiroTags());
    }
}
