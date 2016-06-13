package com.clilystudio.netbook.model;

import android.text.TextUtils;

import java.io.Serializable;

public class MenuAd
        implements Serializable {
    private static final long serialVersionUID = -4422341499140051024L;
    private String _id;
    private int downloadCount;
    private String download_link;
    private int exp;
    private String icon;
    private String insideLink;
    private String intro;
    private String name;
    private Settings settings;
    private long size;

    public boolean equals(Object object) {
        if (object == null || !(object instanceof MenuAd)) {
            return false;
        }
        MenuAd menuAd = (MenuAd) object;
        return TextUtils.equals(this.get_id(), menuAd.get_id());
    }

    public int getDownloadCount() {
        return this.downloadCount;
    }

    public void setDownloadCount(int n) {
        this.downloadCount = n;
    }

    public String getDownload_link() {
        return this.download_link;
    }

    public void setDownload_link(String string) {
        this.download_link = string;
    }

    public int getExp() {
        return this.exp;
    }

    public void setExp(int n) {
        this.exp = n;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String string) {
        this.icon = string;
    }

    public String getInsideLink() {
        return this.insideLink;
    }

    public void setInsideLink(String string) {
        this.insideLink = string;
    }

    public String getIntro() {
        return this.intro;
    }

    public void setIntro(String string) {
        this.intro = string;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String string) {
        this.name = string;
    }

    public Settings getSettings() {
        return this.settings;
    }

    public void setSettings(Settings settings) {
        this.settings = settings;
    }

    public long getSize() {
        return this.size;
    }

    public void setSize(long l) {
        this.size = l;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public int hashCode() {
        if (this.get_id() == null) {
            return 0;
        }
        return this.get_id().hashCode();
    }
}
