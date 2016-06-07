package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;

public class Game
  implements Serializable
{
  private static final long serialVersionUID = -8334205226470939171L;
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
  private Game.MainPromoInfo mainPromoInfo;
  private String name;
  private String[] pictures;
  private boolean recommend;
  private String shortIntro;

  public String getAndroidLink()
  {
    return this.androidLink;
  }

  public String getAndroidPackageName()
  {
    return this.androidPackageName;
  }

  public int getAndroidSize()
  {
    return this.androidSize;
  }

  public String getBanner()
  {
    return this.banner;
  }

  public String getCat()
  {
    return this.cat;
  }

  public String getCover()
  {
    return this.cover;
  }

  public int getDownloadStatus()
  {
    return this.downloadStatus;
  }

  public int getFollowers()
  {
    return this.followers;
  }

  public String getIcon()
  {
    return this.icon;
  }

  public int getIconId()
  {
    return this.iconId;
  }

  public String getIntro()
  {
    return this.intro;
  }

  public String getLocalFileUri()
  {
    return this.localFileUri;
  }

  public Game.MainPromoInfo getMainPromoInfo()
  {
    return this.mainPromoInfo;
  }

  public String getName()
  {
    return this.name;
  }

  public String[] getPictures()
  {
    return this.pictures;
  }

  public String getShortIntro()
  {
    return this.shortIntro;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isActivityFlag()
  {
    return this.activityFlag;
  }

  public boolean isFirsthand()
  {
    return this.firsthand;
  }

  public boolean isGiftFlag()
  {
    return this.giftFlag;
  }

  public boolean isH5MainPromo()
  {
    return this.h5MainPromo;
  }

  public boolean isHotFlag()
  {
    return this.hotFlag;
  }

  public boolean isMainPromo()
  {
    return this.mainPromo;
  }

  public boolean isRecommend()
  {
    return this.recommend;
  }

  public void setActivityFlag(boolean paramBoolean)
  {
    this.activityFlag = paramBoolean;
  }

  public void setAndroidLink(String paramString)
  {
    this.androidLink = paramString;
  }

  public void setAndroidPackageName(String paramString)
  {
    this.androidPackageName = paramString;
  }

  public void setAndroidSize(int paramInt)
  {
    this.androidSize = paramInt;
  }

  public void setBanner(String paramString)
  {
    this.banner = paramString;
  }

  public void setCat(String paramString)
  {
    this.cat = paramString;
  }

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setDownloadStatus(int paramInt)
  {
    this.downloadStatus = paramInt;
  }

  public void setFirsthand(boolean paramBoolean)
  {
    this.firsthand = paramBoolean;
  }

  public void setFollowers(int paramInt)
  {
    this.followers = paramInt;
  }

  public void setGiftFlag(boolean paramBoolean)
  {
    this.giftFlag = paramBoolean;
  }

  public void setH5MainPromo(boolean paramBoolean)
  {
    this.h5MainPromo = paramBoolean;
  }

  public void setHotFlag(boolean paramBoolean)
  {
    this.hotFlag = paramBoolean;
  }

  public void setIcon(String paramString)
  {
    this.icon = paramString;
  }

  public void setIconId(int paramInt)
  {
    this.iconId = paramInt;
  }

  public void setIntro(String paramString)
  {
    this.intro = paramString;
  }

  public void setLocalFileUri(String paramString)
  {
    this.localFileUri = paramString;
  }

  public void setMainPromo(boolean paramBoolean)
  {
    this.mainPromo = paramBoolean;
  }

  public void setMainPromoInfo(Game.MainPromoInfo paramMainPromoInfo)
  {
    this.mainPromoInfo = paramMainPromoInfo;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setPictures(String[] paramArrayOfString)
  {
    this.pictures = paramArrayOfString;
  }

  public void setRecommend(boolean paramBoolean)
  {
    this.recommend = paramBoolean;
  }

  public void setShortIntro(String paramString)
  {
    this.shortIntro = paramString;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Game
 * JD-Core Version:    0.6.0
 */