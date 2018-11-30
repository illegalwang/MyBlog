package com.wj.crawler;

import java.io.IOException;

/**
 * 爬虫入口
 * Created by wisi on 2018/11/29.
 */
public class Main {
    public static void main(String[] args) {
        try {
            new ImgCrawler().start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
