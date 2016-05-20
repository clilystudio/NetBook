package com.clilystudio.app.netbook.model;

public class GiftGame
{
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
    return this.androidLink;
  }

  public String getAndroidPackageName()
  {
    return this.androidPackageName;
  }

  public int getDownloadStatus()
  {
    return this.downloadStatus;
  }

  public String getLocalFileUri()
  {
    return this.localFileUri;
  }

  public String getName()
  {
    return this.name;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setAndroidLink(String paramString)
  {
    this.androidLink = paramString;
  }

  public void setAndroidPackageName(String paramString)
  {
    this.androidPackageName = paramString;
  }

  public void setDownloadStatus(int paramInt)
  {
    this.downloadStatus = paramInt;
  }

  public void setLocalFileUri(String paramString)
  {
    this.localFileUri = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GiftGame
 * JD-Core Version:    0.6.2
 */