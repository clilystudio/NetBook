package com.clilystudio.app.netbook.model;

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

    public String getDesc() {
        return this.desc;
    }

    public String getImg() {
        return this.img;
    }

    public String getInsideLink() {
        return this.insideLink;
    }

    public int getPriority() {
        return this.priority;
    }

    public String[] getShowAt() {
        return this.showAt;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public String get_id() {
        return this._id;
    }

    public boolean isApk() {
        return this.isApk;
    }

    public void setApk(boolean paramBoolean) {
        this.isApk = paramBoolean;
    }

    public void setApkSize(int paramInt) {
        this.apkSize = paramInt;
    }

    public void setDesc(String paramString) {
        this.desc = paramString;
    }

    public void setImg(String paramString) {
        this.img = paramString;
    }

    public void setInsideLink(String paramString) {
        this.insideLink = paramString;
    }

    public void setIsApk(boolean paramBoolean) {
        this.isApk = paramBoolean;
    }

    public void setPriority(int paramInt) {
        this.priority = paramInt;
    }

    public void setShowAt(String[] paramArrayOfString) {
        this.showAt = paramArrayOfString;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public void setUrl(String paramString) {
        this.url = paramString;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.AdvertData
 * JD-Core Version:    0.6.2
 */