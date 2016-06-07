package com.ximalaya.ting.android.opensdk.model.banner;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;

public class Banner extends XimalayaResponse
{

  @SerializedName("album_id")
  private long albumId;

  @SerializedName("banner_content_type")
  private int bannerContentType;

  @SerializedName("id")
  private long bannerId;

  @SerializedName("banner_redirect_url")
  private String bannerRedirectUrl;

  @SerializedName("banner_short_title")
  private String bannerShortTitle;

  @SerializedName("banner_title")
  private String bannerTitle;

  @SerializedName("banner_uid")
  private int bannerUid;

  @SerializedName("banner_url")
  private String bannerUrl;

  @SerializedName("can_share")
  private boolean canShare;

  @SerializedName("column_content_type")
  private String columnContentType;

  @SerializedName("column_id")
  private int columnId;

  @SerializedName("is_external_url")
  private String isExternalUrl;

  @SerializedName("third_party_url")
  private String thirdPartyUrl;

  @SerializedName("track_id")
  private int trackId;

  public long getAlbumId()
  {
    return this.albumId;
  }

  public int getBannerContentType()
  {
    return this.bannerContentType;
  }

  public long getBannerId()
  {
    return this.bannerId;
  }

  public String getBannerRedirectUrl()
  {
    return this.bannerRedirectUrl;
  }

  public String getBannerShortTitle()
  {
    return this.bannerShortTitle;
  }

  public String getBannerTitle()
  {
    return this.bannerTitle;
  }

  public int getBannerUid()
  {
    return this.bannerUid;
  }

  public String getBannerUrl()
  {
    return this.bannerUrl;
  }

  public String getColumnContentType()
  {
    return this.columnContentType;
  }

  public int getColumnId()
  {
    return this.columnId;
  }

  public String getIsExternalUrl()
  {
    return this.isExternalUrl;
  }

  public String getThirdPartyUrl()
  {
    return this.thirdPartyUrl;
  }

  public int getTrackId()
  {
    return this.trackId;
  }

  public boolean isCanShare()
  {
    return this.canShare;
  }

  public void setAlbumId(long paramLong)
  {
    this.albumId = paramLong;
  }

  public void setBannerContentType(int paramInt)
  {
    this.bannerContentType = paramInt;
  }

  public void setBannerId(long paramLong)
  {
    this.bannerId = paramLong;
  }

  public void setBannerRedirectUrl(String paramString)
  {
    this.bannerRedirectUrl = paramString;
  }

  public void setBannerShortTitle(String paramString)
  {
    this.bannerShortTitle = paramString;
  }

  public void setBannerTitle(String paramString)
  {
    this.bannerTitle = paramString;
  }

  public void setBannerUid(int paramInt)
  {
    this.bannerUid = paramInt;
  }

  public void setBannerUrl(String paramString)
  {
    this.bannerUrl = paramString;
  }

  public void setCanShare(boolean paramBoolean)
  {
    this.canShare = paramBoolean;
  }

  public void setColumnContentType(String paramString)
  {
    this.columnContentType = paramString;
  }

  public void setColumnId(int paramInt)
  {
    this.columnId = paramInt;
  }

  public void setIsExternalUrl(String paramString)
  {
    this.isExternalUrl = paramString;
  }

  public void setThirdPartyUrl(String paramString)
  {
    this.thirdPartyUrl = paramString;
  }

  public void setTrackId(int paramInt)
  {
    this.trackId = paramInt;
  }

  public String toString()
  {
    return "RankBanners [bannerId=" + this.bannerId + ", bannerTitle=" + this.bannerTitle + ", bannerShortTitle=" + this.bannerShortTitle + ", bannerUrl=" + this.bannerUrl + ", bannerRedirectUrl=" + this.bannerRedirectUrl + ", canShare=" + this.canShare + ", bannerContentType=" + this.bannerContentType + ", bannerUid=" + this.bannerUid + ", trackId=" + this.trackId + ", columnId=" + this.columnId + ", columnContentType=" + this.columnContentType + ", albumId=" + this.albumId + ", thirdPartyUrl=" + this.thirdPartyUrl + ", isExternalUrl=" + this.isExternalUrl + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.banner.Banner
 * JD-Core Version:    0.6.0
 */