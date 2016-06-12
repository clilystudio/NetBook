package com.clilystudio.netbook.model;

import android.text.TextUtils;

import java.io.Serializable;

public class MenuAd implements Serializable {

    private static final long serialVersionUID = -4422341499140051024L;
    private String _id;
    private int downloadCount;
    private String download_link;
    private int exp;
    private String icon;
    private String insideLink;
    private String intro;
    private String name;
    private MenuAd$Settings settings;
    private long size;

    public boolean equals(Object Object1) {
        if (Object1 == null || !(Object1 instanceof MenuAd))
            return false;
        else {
            MenuAd MenuAd2 = (MenuAd) Object1;

            return TextUtils.equals((CharSequence) get_id(), (CharSequence) MenuAd2.get_id());
        }
    }

    public int getDownloadCount() {
        return downloadCount;
    }

    public void setDownloadCount(int int1) {
        downloadCount = int1;
    }

    public String getDownload_link() {
        return download_link;
    }

    public void setDownload_link(String String1) {
        download_link = String1;
    }

    public int getExp() {
        return exp;
    }

    public void setExp(int int1) {
        exp = int1;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String String1) {
        icon = String1;
    }

    public String getInsideLink() {
        return insideLink;
    }

    public void setInsideLink(String String1) {
        insideLink = String1;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String String1) {
        intro = String1;
    }

    public String getName() {
        return name;
    }

    public void setName(String String1) {
        name = String1;
    }

    public MenuAd$Settings getSettings() {
        return settings;
    }

    public void setSettings(MenuAd$Settings Settings1) {
        settings = Settings1;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long long1) {
        size = long1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }

    public int hashCode() {
        if (get_id() == null)
            return 0;
        else
            return get_id().hashCode();
    }
}
