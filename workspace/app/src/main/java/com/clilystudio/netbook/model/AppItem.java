package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.hpay100.a.a;

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

    public AppItem(Advert advert) {
        this._id = advert.get_id();
        this.download_link = advert.getUrl();
        this.size = advert.getApkSize();
        this.name = advert.getTitle();
    }

    public String getActivateRequire() {
        return this.activateRequire;
    }

    public void setActivateRequire(String string) {
        this.activateRequire = string;
    }

    public int getDownloadCount() {
        return this.downloadCount;
    }

    public void setDownloadCount(int n) {
        this.downloadCount = n;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public void setDownloadStatus(int n) {
        this.downloadStatus = n;
    }

    public String getDownload_link() {
        if (this.download_link != null) {
            return this.download_link.trim();
        }
        return null;
    }

    public void setDownload_link(String string) {
        this.download_link = string;
    }

    public String getFormatedSize() {
        return a.c(this.getSize());
    }

    public String getFullIcon() {
        return ApiService.a + this.icon;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String string) {
        this.icon = string;
    }

    public String getIntro() {
        return this.intro;
    }

    public void setIntro(String string) {
        this.intro = string;
    }

    public String getLocalFileUri() {
        return this.localFileUri;
    }

    public void setLocalFileUri(String string) {
        this.localFileUri = string;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String string) {
        this.name = string;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String string) {
        this.packageName = string;
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int n) {
        this.size = n;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public String toString() {
        return this.getName();
    }
}
