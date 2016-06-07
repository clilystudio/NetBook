package com.ximalaya.ting.android.opensdk.model.banner;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;

public class VehicleBanners extends XimalayaResponse
{

  @SerializedName("id")
  private long bannerId;

  @SerializedName("banner_title")
  private String bannerTitle;

  @SerializedName("banner_url")
  private String bannerUrl;

  @SerializedName("track_id")
  private String trackId;

  public long getBannerId()
  {
    return this.bannerId;
  }

  public String getBannerTitle()
  {
    return this.bannerTitle;
  }

  public String getBannerUrl()
  {
    return this.bannerUrl;
  }

  public String getTrackId()
  {
    return this.trackId;
  }

  public void setBannerId(long paramLong)
  {
    this.bannerId = paramLong;
  }

  public void setBannerTitle(String paramString)
  {
    this.bannerTitle = paramString;
  }

  public void setBannerUrl(String paramString)
  {
    this.bannerUrl = paramString;
  }

  public void setTrackId(String paramString)
  {
    this.trackId = paramString;
  }

  public String toString()
  {
    return "VehicleBanners [bannerId=" + this.bannerId + ", bannerTitle=" + this.bannerTitle + ", bannerUrl=" + this.bannerUrl + ", trackId=" + this.trackId + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.banner.VehicleBanners
 * JD-Core Version:    0.6.0
 */