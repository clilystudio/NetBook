package com.clilystudio.netbook.model;

import java.io.Serializable;

public class AdvertData implements Serializable {
    private String _id;
    private int apkSize;
    private String desc;
    private String img;
    private String insideLink;
    private boolean isApk;
    private int priority;
    private String[] showAt;
    private String title;
    private String type;
    private String url;

    public int getApkSize() {
        return this.apkSize;
    }

    public void setApkSize(int n) {
        this.apkSize = n;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String string) {
        this.desc = string;
    }

    public String getImg() {
        return this.img;
    }

    public void setImg(String string) {
        this.img = string;
    }

    public String getInsideLink() {
        return this.insideLink;
    }

    public void setInsideLink(String string) {
        this.insideLink = string;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPriority(int n) {
        this.priority = n;
    }

    public String[] getShowAt() {
        return this.showAt;
    }

    public void setShowAt(String[] arrstring) {
        this.showAt = arrstring;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String string) {
        this.url = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public boolean isApk() {
        return this.isApk;
    }

    public void setApk(boolean bl) {
        this.isApk = bl;
    }

    public void setIsApk(boolean bl) {
        this.isApk = bl;
    }
}
