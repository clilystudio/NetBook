package com.clilystudio.netbook.model;

import java.io.Serializable;

public class AdvertData
        implements Serializable {
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

    public void setApkSize(int paramInt) {
        this.apkSize = paramInt;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String paramString) {
        this.desc = paramString;
    }

    public String getImg() {
        return this.img;
    }

    public void setImg(String paramString) {
        this.img = paramString;
    }

    public String getInsideLink() {
        return this.insideLink;
    }

    public void setInsideLink(String paramString) {
        this.insideLink = paramString;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPriority(int paramInt) {
        this.priority = paramInt;
    }

    public String[] getShowAt() {
        return this.showAt;
    }

    public void setShowAt(String[] paramArrayOfString) {
        this.showAt = paramArrayOfString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String paramString) {
        this.url = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isApk() {
        return this.isApk;
    }

    public void setApk(boolean paramBoolean) {
        this.isApk = paramBoolean;
    }

    public void setIsApk(boolean paramBoolean) {
        this.isApk = paramBoolean;
    }
}

