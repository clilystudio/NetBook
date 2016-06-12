
package com.clilystudio.netbook.model;

public class GiftGame {

    private String _id;
    private String androidLink;
    private String androidPackageName;
    public int androidSize;
    private int downloadStatus;
    public int followers;
    public GiftGameGift[] gifts;
    public String icon;
    private String localFileUri;
    private String name;

    public String getAndroidLink()
    {
        return androidLink;
    }

    public String getAndroidPackageName()
    {
        return androidPackageName;
    }

    public int getDownloadStatus()
    {
        return downloadStatus;
    }

    public String getLocalFileUri()
    {
        return localFileUri;
    }

    public String getName()
    {
        return name;
    }

    public String get_id()
    {
        return _id;
    }

    public void setAndroidLink(String String1)
    {
        androidLink = String1;
    }

    public void setAndroidPackageName(String String1)
    {
        androidPackageName = String1;
    }

    public void setDownloadStatus(int int1)
    {
        downloadStatus = int1;
    }

    public void setLocalFileUri(String String1)
    {
        localFileUri = String1;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
