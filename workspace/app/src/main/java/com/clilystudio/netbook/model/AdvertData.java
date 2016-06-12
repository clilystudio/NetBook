
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class AdvertData implements Serializable {

    private String _id;
    private int apkSize;
    private String desc;
    private String img;
    private String insideLink;
    private boolean isApk;
    private int priority;
    private String[] showAt;
    private String title;
    private String type;
    private String url;

    public int getApkSize()
    {
        return apkSize;
    }

    public String getDesc()
    {
        return desc;
    }

    public String getImg()
    {
        return img;
    }

    public String getInsideLink()
    {
        return insideLink;
    }

    public int getPriority()
    {
        return priority;
    }

    public String[] getShowAt()
    {
        return showAt;
    }

    public String getTitle()
    {
        return title;
    }

    public String getType()
    {
        return type;
    }

    public String getUrl()
    {
        return url;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isApk()
    {
        return isApk;
    }

    public void setApk(boolean boolean1)
    {
        isApk = boolean1;
    }

    public void setApkSize(int int1)
    {
        apkSize = int1;
    }

    public void setDesc(String String1)
    {
        desc = String1;
    }

    public void setImg(String String1)
    {
        img = String1;
    }

    public void setInsideLink(String String1)
    {
        insideLink = String1;
    }

    public void setIsApk(boolean boolean1)
    {
        isApk = boolean1;
    }

    public void setPriority(int int1)
    {
        priority = int1;
    }

    public void setShowAt(String[] String_1darray1)
    {
        showAt = String_1darray1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void setType(String String1)
    {
        type = String1;
    }

    public void setUrl(String String1)
    {
        url = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
