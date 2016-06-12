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
        return androidLink;
    }

    public void setAndroidLink(String String1) {
        androidLink = String1;
    }

    public String getAndroidPackageName() {
        return androidPackageName;
    }

    public void setAndroidPackageName(String String1) {
        androidPackageName = String1;
    }

    public int getDownloadStatus() {
        return downloadStatus;
    }

    public void setDownloadStatus(int int1) {
        downloadStatus = int1;
    }

    public String getLocalFileUri() {
        return localFileUri;
    }

    public void setLocalFileUri(String String1) {
        localFileUri = String1;
    }

    public String getName() {
        return name;
    }

    public void setName(String String1) {
        name = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
