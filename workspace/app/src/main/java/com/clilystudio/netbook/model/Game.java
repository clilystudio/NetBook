
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Game implements Serializable {

    private String _id;
    private boolean activityFlag;
    private String androidLink;
    private String androidPackageName;
    private int androidSize;
    private String banner;
    private String cat;
    private String cover;
    private int downloadStatus;
    private boolean firsthand;
    private int followers;
    private boolean giftFlag;
    private boolean h5MainPromo;
    private boolean hotFlag;
    private String icon;
    private int iconId;
    private String intro;
    private String localFileUri;
    private boolean mainPromo;
    private Game$MainPromoInfo mainPromoInfo;
    private String name;
    private String[] pictures;
    private boolean recommend;
    private String shortIntro;
    private static final long serialVersionUID = -8334205226470939171L;

    public String getAndroidLink()
    {
        return androidLink;
    }

    public String getAndroidPackageName()
    {
        return androidPackageName;
    }

    public int getAndroidSize()
    {
        return androidSize;
    }

    public String getBanner()
    {
        return banner;
    }

    public String getCat()
    {
        return cat;
    }

    public String getCover()
    {
        return cover;
    }

    public int getDownloadStatus()
    {
        return downloadStatus;
    }

    public int getFollowers()
    {
        return followers;
    }

    public String getIcon()
    {
        return icon;
    }

    public int getIconId()
    {
        return iconId;
    }

    public String getIntro()
    {
        return intro;
    }

    public String getLocalFileUri()
    {
        return localFileUri;
    }

    public Game$MainPromoInfo getMainPromoInfo()
    {
        return mainPromoInfo;
    }

    public String getName()
    {
        return name;
    }

    public String[] getPictures()
    {
        return pictures;
    }

    public String getShortIntro()
    {
        return shortIntro;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isActivityFlag()
    {
        return activityFlag;
    }

    public boolean isFirsthand()
    {
        return firsthand;
    }

    public boolean isGiftFlag()
    {
        return giftFlag;
    }

    public boolean isH5MainPromo()
    {
        return h5MainPromo;
    }

    public boolean isHotFlag()
    {
        return hotFlag;
    }

    public boolean isMainPromo()
    {
        return mainPromo;
    }

    public boolean isRecommend()
    {
        return recommend;
    }

    public void setActivityFlag(boolean boolean1)
    {
        activityFlag = boolean1;
    }

    public void setAndroidLink(String String1)
    {
        androidLink = String1;
    }

    public void setAndroidPackageName(String String1)
    {
        androidPackageName = String1;
    }

    public void setAndroidSize(int int1)
    {
        androidSize = int1;
    }

    public void setBanner(String String1)
    {
        banner = String1;
    }

    public void setCat(String String1)
    {
        cat = String1;
    }

    public void setCover(String String1)
    {
        cover = String1;
    }

    public void setDownloadStatus(int int1)
    {
        downloadStatus = int1;
    }

    public void setFirsthand(boolean boolean1)
    {
        firsthand = boolean1;
    }

    public void setFollowers(int int1)
    {
        followers = int1;
    }

    public void setGiftFlag(boolean boolean1)
    {
        giftFlag = boolean1;
    }

    public void setH5MainPromo(boolean boolean1)
    {
        h5MainPromo = boolean1;
    }

    public void setHotFlag(boolean boolean1)
    {
        hotFlag = boolean1;
    }

    public void setIcon(String String1)
    {
        icon = String1;
    }

    public void setIconId(int int1)
    {
        iconId = int1;
    }

    public void setIntro(String String1)
    {
        intro = String1;
    }

    public void setLocalFileUri(String String1)
    {
        localFileUri = String1;
    }

    public void setMainPromo(boolean boolean1)
    {
        mainPromo = boolean1;
    }

    public void setMainPromoInfo(Game$MainPromoInfo MainPromoInfo1)
    {
        mainPromoInfo = MainPromoInfo1;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void setPictures(String[] String_1darray1)
    {
        pictures = String_1darray1;
    }

    public void setRecommend(boolean boolean1)
    {
        recommend = boolean1;
    }

    public void setShortIntro(String String1)
    {
        shortIntro = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
