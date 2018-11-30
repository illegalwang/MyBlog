package com.wj.crawler;

import org.apache.commons.io.FileUtils;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.util.FileCopyUtils;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

/**
 * 爬取中关村网站笔记本电脑报价信息
 * Created by wisi on 2018/11/29.
 */
public class ImgCrawler {
    private final String ZOL_URL = "http://detail.zol.com.cn/notebook_index/subcate16_0_list_{num}.html";
    public void start() throws IOException {
        String url = ZOL_URL.replace("{num}", "1");
        String html = this.doGet(url);
        // 解析页面
        Document document = Jsoup.parse(html);
        // 获取列表总页数
        Elements pageSpan = document.select("span.small-page-active");
        Long countPage = Long.valueOf(pageSpan.text().split("/")[1]);
        List<NoteBookBean> books = new LinkedList<>();
        for (int i = 1; i < countPage; i++) {
            String pageHtml = this.doGet(ZOL_URL.replace("{num}", String.valueOf(i)));
            Document doc = Jsoup.parse(pageHtml);
            // 找到所有电脑列表
            Elements elements = doc.select("#J_PicMode li");
            for (Element li : elements) {
                NoteBookBean book = new NoteBookBean();
                // img元素
                Elements img = li.select("img");
                book.setImgUrl(img.attr(".src"));
                book.setSeries(img.attr("alt"));
                // 详细信息网址 和 title信息
                Elements h3 = li.select("h3");
                Elements a = h3.select("a");
                book.setInfoUrl("http://detail.zol.com.cn" + a.attr("href"));
                book.setTitle(a.attr("title"));
                // 价格
                Elements b = li.select("b.price-type");
                book.setPrice(b.text());
                books.add(book);
            }
        }
        // 保存为文本文件
        FileUtils.writeStringToFile(new File("D:\\ZolCrawler.txt"), books.toString(), "UTF-8");
    }

    private String doGet(String url) {
        // 创建HttpClient对象
//        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建HttpGet请求
        HttpGet httpGet = new HttpGet(url);
        // 把这俩东西写在这个括号里会自己关闭流
        try(CloseableHttpClient httpClient = HttpClients.createDefault();
            CloseableHttpResponse response = httpClient.execute(httpGet)) { // 执行请求
            if (response.getStatusLine().getStatusCode() == 200) {
                // 获取页面内容源码
                String content = EntityUtils.toString(response.getEntity(), "UTF-8");
                return content;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
