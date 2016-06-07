package com.ximalaya.ting.android.opensdk.model.advertis;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class Advertis
  implements Parcelable
{
  public static final Parcelable.Creator<Advertis> CREATOR = new Advertis.1();
  private int adid;
  private int clickType;

  @SerializedName("image")
  private String imageUrl;
  private boolean isAutoNotifyInstall = true;

  @SerializedName("link")
  private String linkUrl;

  @SerializedName("logo")
  private String logoUrl;
  private String name;
  private String soundUrl;
  private String thirdStatUrl;

  public int describeContents()
  {
    return 0;
  }

  public int getAdid()
  {
    return this.adid;
  }

  public int getClickType()
  {
    return this.clickType;
  }

  public String getImageUrl()
  {
    return this.imageUrl;
  }

  public boolean getIsAutoNotifyInstall()
  {
    return this.isAutoNotifyInstall;
  }

  public String getLinkUrl()
  {
    return this.linkUrl;
  }

  public String getLogoUrl()
  {
    return this.logoUrl;
  }

  public String getName()
  {
    return this.name;
  }

  public String getSoundUrl()
  {
    return this.soundUrl;
  }

  public String getThirdStatUrl()
  {
    return this.thirdStatUrl;
  }

  public void readFromParcel(Parcel paramParcel)
  {
    setAdid(paramParcel.readInt());
    setName(paramParcel.readString());
    setClickType(paramParcel.readInt());
    setLinkUrl(paramParcel.readString());
    setImageUrl(paramParcel.readString());
    setLogoUrl(paramParcel.readString());
    setSoundUrl(paramParcel.readString());
    setThirdStatUrl(paramParcel.readString());
  }

  public void setAdid(int paramInt)
  {
    this.adid = paramInt;
  }

  public void setClickType(int paramInt)
  {
    this.clickType = paramInt;
  }

  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }

  public void setIsAutoNotifyInstall(boolean paramBoolean)
  {
    this.isAutoNotifyInstall = paramBoolean;
  }

  public void setLinkUrl(String paramString)
  {
    this.linkUrl = paramString;
  }

  public void setLogoUrl(String paramString)
  {
    this.logoUrl = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setSoundUrl(String paramString)
  {
    this.soundUrl = paramString;
  }

  public void setThirdStatUrl(String paramString)
  {
    this.thirdStatUrl = paramString;
  }

  public String toString()
  {
    return "Advertis [adid=" + this.adid + ", name=" + this.name + ", clickType=" + this.clickType + ", linkUrl=" + this.linkUrl + ", imageUrl=" + this.imageUrl + ", logoUrl=" + this.logoUrl + ", soundUrl=" + this.soundUrl + ", thirdStatUrl=" + this.thirdStatUrl + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.adid);
    paramParcel.writeString(this.name);
    paramParcel.writeInt(this.clickType);
    paramParcel.writeString(this.linkUrl);
    paramParcel.writeString(this.imageUrl);
    paramParcel.writeString(this.logoUrl);
    paramParcel.writeString(this.soundUrl);
    paramParcel.writeString(this.thirdStatUrl);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.advertis.Advertis
 * JD-Core Version:    0.6.0
 */