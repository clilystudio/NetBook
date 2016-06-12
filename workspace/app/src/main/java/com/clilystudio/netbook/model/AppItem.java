
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;
import java.util.Date;

public class AppItem {

    public AppItem(Advert Advert1)
    {
        _id = Advert1.get_id();
        download_link = Advert1.getUrl();
        size = Advert1.getApkSize();
        name = Advert1.getTitle();
    }

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

    public AppItem()
    {
    }

    public String getActivateRequire()
    {
        return activateRequire;
    }

    public int getDownloadCount()
    {
        return downloadCount;
    }

    public int getDownloadStatus()
    {
        return downloadStatus;
    }

    public String getDownload_link()
    {
        if( download_link != null )
            return download_link.trim();
        else
            return null;
    }

    public String getFormatedSize()
    {
        return com.clilystudio.netbook.hpay100.a.a.c( getSize() );
    }

    public String getFullIcon()
    {
        return new StringBuilder().append( ApiService.a ).append( icon ).toString();
    }

    public String getIcon()
    {
        return icon;
    }

    public String getIntro()
    {
        return intro;
    }

    public String getLocalFileUri()
    {
        return localFileUri;
    }

    public String getName()
    {
        return name;
    }

    public String getPackageName()
    {
        return packageName;
    }

    public int getSize()
    {
        return size;
    }

    public String get_id()
    {
        return _id;
    }

    public void setActivateRequire(String String1)
    {
        activateRequire = String1;
    }

    public void setDownloadCount(int int1)
    {
        downloadCount = int1;
    }

    public void setDownloadStatus(int int1)
    {
        downloadStatus = int1;
    }

    public void setDownload_link(String String1)
    {
        download_link = String1;
    }

    public void setIcon(String String1)
    {
        icon = String1;
    }

    public void setIntro(String String1)
    {
        intro = String1;
    }

    public void setLocalFileUri(String String1)
    {
        localFileUri = String1;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void setPackageName(String String1)
    {
        packageName = String1;
    }

    public void setSize(int int1)
    {
        size = int1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }

    public String toString()
    {
        return getName();
    }
}
