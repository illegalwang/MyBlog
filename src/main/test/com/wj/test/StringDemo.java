package com.wj.test;

import com.sun.org.apache.xpath.internal.SourceTree;

/**
 * Created by wisi on 2018/12/5.
 */
public class StringDemo {
    private static final String MESSAGE = "taobao";
    public static void main(String[] args) {
        String a = "taobao";
        String b = "tao";
        String c = "bao";
        System.out.println(a == MESSAGE);
        System.out.println((b+c) == MESSAGE);
    }
}
