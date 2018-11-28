package com.wj.util;

import java.util.UUID;

/**
 * 获取UUID
 * Created by wj on 2018/11/5.
 */
public class UuidUtil {

    public static String get32UUID() {
        String uuid = UUID.randomUUID().toString().trim().replaceAll("-", "");
        return uuid;
    }

    public static void main(String[] args) {
        System.out.println(get32UUID());
    }
}
