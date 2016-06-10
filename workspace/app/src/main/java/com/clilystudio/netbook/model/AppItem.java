package com.clilystudio.netbook.model;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.clilystudio.netbook.api.ApiService;

import java.util.Date;

public class AppItem {
    protected String _id;
    protected String activateRequire;
    protected Date created;
    protected int downloadCount;
    protected int downloadStatus;
    protected String download_link;
    protected String icon;
    protected String intro;
    protected String localFileUri;
    protected String name;
    protected String packageName;
    protected int size;

    public AppItem() {
    }

    public AppItem(Advert paramAdvert) {
        this._id = paramAdvert.get_id();
        this.download_link = paramAdvert.getUrl();
        this.size = paramAdvert.getApkSize();
        this.name = paramAdvert.getTitle();
    }

    public String getActivateRequire() {
        return this.activateRequire;
    }

    public void setActivateRequire(String paramString) {
        this.activateRequire = paramString;
    }

    public int getDownloadCount() {
        return this.downloadCount;
    }

    public void setDownloadCount(int paramInt) {
        this.downloadCount = paramInt;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public void setDownloadStatus(int paramInt) {
        this.downloadStatus = paramInt;
    }

    public String getDownload_link() {
        if (this.download_link != null)
            return this.download_link.trim();
        return null;
    }

    public void setDownload_link(String paramString) {
        this.download_link = paramString;
    }

    public String getFormatedSize() {
        return a.c(getSize());
    }

    public String getFullIcon() {
        return ApiService.a + this.icon;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String paramString) {
        this.icon = paramString;
    }

    public String getIntro() {
        return this.intro;
    }

    public void setIntro(String paramString) {
        this.intro = paramString;
    }

    public String getLocalFileUri() {
        return this.localFileUri;
    }

    public void setLocalFileUri(String paramString) {
        this.localFileUri = paramString;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String paramString) {
        this.packageName = paramString;
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int paramInt) {
        this.size = paramInt;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public String toString() {
        return getName();
    }
}

