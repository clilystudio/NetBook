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
        return apkSize;
    }

    public void setApkSize(int int1) {
        apkSize = int1;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String String1) {
        desc = String1;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String String1) {
        img = String1;
    }

    public String getInsideLink() {
        return insideLink;
    }

    public void setInsideLink(String String1) {
        insideLink = String1;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int int1) {
        priority = int1;
    }

    public String[] getShowAt() {
        return showAt;
    }

    public void setShowAt(String[] String_1darray1) {
        showAt = String_1darray1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String String1) {
        url = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }

    public boolean isApk() {
        return isApk;
    }

    public void setApk(boolean boolean1) {
        isApk = boolean1;
    }

    public void setIsApk(boolean boolean1) {
        isApk = boolean1;
    }
}
