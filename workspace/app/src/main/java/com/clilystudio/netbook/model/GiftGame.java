package com.clilystudio.netbook.model;

public class GiftGame {
    public int androidSize;
    public int followers;
    public GiftGameGift[] gifts;
    public String icon;
    private String _id;
    private String androidLink;
    private String androidPackageName;
    private int downloadStatus;
    private String localFileUri;
    private String name;

    public String getAndroidLink() {
        return this.androidLink;
    }

    public void setAndroidLink(String string) {
        this.androidLink = string;
    }

    public String getAndroidPackageName() {
        return this.androidPackageName;
    }

    public void setAndroidPackageName(String string) {
        this.androidPackageName = string;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public void setDownloadStatus(int n) {
        this.downloadStatus = n;
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

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
