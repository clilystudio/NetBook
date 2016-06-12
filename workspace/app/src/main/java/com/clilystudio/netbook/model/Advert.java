package com.clilystudio.netbook.model;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;
import java.util.Arrays;

public abstract class Advert implements Serializable {

    private static final long serialVersionUID = 5914392892334299329L;
    private AdvertData data;
    private String position;
    private boolean read;
    private String type;

    public boolean canShowAtPosition(String String1) {
        if (data == null || data.getShowAt() == null)
            return false;
        else
            return Arrays.asList(data.getShowAt()).contains(String1);
    }

    public boolean equals(Object Object1) {
        if (Object1 == null || !(Object1 instanceof Advert))
            return false;
        else {
            Advert Advert2 = (Advert) Object1;

            return TextUtils.equals((CharSequence) data.get_id(), (CharSequence) Advert2.get_id());
        }
    }

    public int getApkSize() {
        return data.getApkSize();
    }

    public String getDesc() {
        return data.getDesc();
    }

    public int getFlagType() {
        if (!isRead()) {
            if ("promotion".equals(getType()))
                return 1;
            else if ("notice".equals(getType()))
                return 2;
        }
        return 0;
    }

    public String getFullImg() {
        return new StringBuilder().append(ApiService.a).append(data.getImg()).toString();
    }

    public String getImg() {
        return data.getImg();
    }

    public String getInsideLink() {
        return data.getInsideLink();
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String String1) {
        position = String1;
    }

    public int getPriority() {
        return data.getPriority();
    }

    public String getTitle() {
        return data.getTitle();
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public String getUrl() {
        return data.getUrl();
    }

    public String get_id() {
        return data.get_id();
    }

    public int hashCode() {
        if (data.get_id() == null)
            return 0;
        else
            return data.get_id().hashCode();
    }

    public boolean isApk() {
        return data.isApk();
    }

    public boolean isRead() {
        return read;
    }

    public void setRead(boolean boolean1) {
        read = boolean1;
    }

    public abstract void processClick(View View1);

    public abstract void recordClick(View View1);

    public abstract void recordShow(Context Context1);

    public void setData(AdvertData AdvertData1) {
        data = AdvertData1;
    }
}
