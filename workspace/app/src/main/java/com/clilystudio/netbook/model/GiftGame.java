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

    public void setAndroidLink(String paramString) {
        this.androidLink = paramString;
    }

    public String getAndroidPackageName() {
        return this.androidPackageName;
    }

    public void setAndroidPackageName(String paramString) {
        this.androidPackageName = paramString;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public void setDownloadStatus(int paramInt) {
        this.downloadStatus = paramInt;
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

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

