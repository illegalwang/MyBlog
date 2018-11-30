package com.wj.crawler;

/**
 * Created by wisi on 2018/11/29.
 */
public class NoteBookBean {
    // 系列
    private String series;
    // 标题
    private String title;
    // 详细信息链接
    private String infoUrl;
    // 图片地址
    private String imgUrl;
    // 参考价
    private String price;

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getInfoUrl() {
        return infoUrl;
    }

    public void setInfoUrl(String infoUrl) {
        this.infoUrl = infoUrl;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "{" +
                "series:'" + series + '\'' +
                ", title:'" + title + '\'' +
                ", infoUrl:'" + infoUrl + '\'' +
                ", imgUrl:'" + imgUrl + '\'' +
                ", price:'" + price + '\'' +
                '}' + "\n";
    }
}
