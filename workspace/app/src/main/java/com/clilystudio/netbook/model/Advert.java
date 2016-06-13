package com.clilystudio.netbook.model;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;
import java.util.Arrays;

public abstract class Advert
        implements Serializable {
    private static final long serialVersionUID = 5914392892334299329L;
    private AdvertData data;
    private String position;
    private boolean read;
    private String type;

    public boolean canShowAtPosition(String string) {
        if (this.data == null || this.data.getShowAt() == null) {
            return false;
        }
        return Arrays.asList(this.data.getShowAt()).contains(string);
    }

    public boolean equals(Object object) {
        if (object == null || !(object instanceof Advert)) {
            return false;
        }
        Advert advert = (Advert) object;
        return TextUtils.equals(this.data.get_id(), advert.get_id());
    }

    public int getApkSize() {
        return this.data.getApkSize();
    }

    public String getDesc() {
        return this.data.getDesc();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public int getFlagType() {
        if (this.isRead()) {
            return 0;
        }
        if ("promotion".equals(this.getType())) {
            return 1;
        }
        if (!"notice".equals(this.getType())) return 0;
        return 2;
    }

    public String getFullImg() {
        return ApiService.a + this.data.getImg();
    }

    public String getImg() {
        return this.data.getImg();
    }

    public String getInsideLink() {
        return this.data.getInsideLink();
    }

    public String getPosition() {
        return this.position;
    }

    public void setPosition(String string) {
        this.position = string;
    }

    public int getPriority() {
        return this.data.getPriority();
    }

    public String getTitle() {
        return this.data.getTitle();
    }

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }

    public String getUrl() {
        return this.data.getUrl();
    }

    public String get_id() {
        return this.data.get_id();
    }

    public int hashCode() {
        if (this.data.get_id() == null) {
            return 0;
        }
        return this.data.get_id().hashCode();
    }

    public boolean isApk() {
        return this.data.isApk();
    }

    public boolean isRead() {
        return this.read;
    }

    public void setRead(boolean bl) {
        this.read = bl;
    }

    public abstract void processClick(View var1);

    public abstract void recordClick(View var1);

    public abstract void recordShow(Context var1);

    public void setData(AdvertData advertData) {
        this.data = advertData;
    }
}
