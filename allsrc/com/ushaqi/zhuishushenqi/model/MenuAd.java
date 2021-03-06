package com.ushaqi.zhuishushenqi.model;

import android.text.TextUtils;
import java.io.Serializable;

public class MenuAd
  implements Serializable
{
  private static final long serialVersionUID = -4422341499140051024L;
  private String _id;
  private int downloadCount;
  private String download_link;
  private int exp;
  private String icon;
  private String insideLink;
  private String intro;
  private String name;
  private MenuAd.Settings settings;
  private long size;

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof MenuAd)))
      return false;
    MenuAd localMenuAd = (MenuAd)paramObject;
    return TextUtils.equals(get_id(), localMenuAd.get_id());
  }

  public int getDownloadCount()
  {
    return this.downloadCount;
  }

  public String getDownload_link()
  {
    return this.download_link;
  }

  public int getExp()
  {
    return this.exp;
  }

  public String getIcon()
  {
    return this.icon;
  }

  public String getInsideLink()
  {
    return this.insideLink;
  }

  public String getIntro()
  {
    return this.intro;
  }

  public String getName()
  {
    return this.name;
  }

  public MenuAd.Settings getSettings()
  {
    return this.settings;
  }

  public long getSize()
  {
    return this.size;
  }

  public String get_id()
  {
    return this._id;
  }

  public int hashCode()
  {
    if (get_id() == null)
      return 0;
    return get_id().hashCode();
  }

  public void setDownloadCount(int paramInt)
  {
    this.downloadCount = paramInt;
  }

  public void setDownload_link(String paramString)
  {
    this.download_link = paramString;
  }

  public void setExp(int paramInt)
  {
    this.exp = paramInt;
  }

  public void setIcon(String paramString)
  {
    this.icon = paramString;
  }

  public void setInsideLink(String paramString)
  {
    this.insideLink = paramString;
  }

  public void setIntro(String paramString)
  {
    this.intro = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setSettings(MenuAd.Settings paramSettings)
  {
    this.settings = paramSettings;
  }

  public void setSize(long paramLong)
  {
    this.size = paramLong;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.MenuAd
 * JD-Core Version:    0.6.0
 */