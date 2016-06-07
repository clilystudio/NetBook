package com.ximalaya.ting.android.opensdk.model.app;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;

public class AppModel extends XimalayaResponse
{

  @SerializedName("created_at")
  private long createdAt;

  @SerializedName("id")
  private long dataId;

  @SerializedName("download_url")
  private String downloadUrl;

  @SerializedName("file_name")
  private String filename;

  @SerializedName("sdk_or_app_name")
  private String name;

  @SerializedName("client_os_type")
  private int osType;

  @SerializedName("pack_id")
  private String packId;

  @SerializedName("release_info")
  private String releaseInfo;

  @SerializedName("release_type")
  private int releaseType;

  @SerializedName("updated_at")
  private long updatedAt;

  @SerializedName("version_code")
  private int versionCode;

  @SerializedName("version_name")
  private String versionName;

  public long getCreatedAt()
  {
    return this.createdAt;
  }

  public long getDataId()
  {
    return this.dataId;
  }

  public String getDownloadUrl()
  {
    return this.downloadUrl;
  }

  public String getFilename()
  {
    return this.filename;
  }

  public String getName()
  {
    return this.name;
  }

  public int getOsType()
  {
    return this.osType;
  }

  public String getPackId()
  {
    return this.packId;
  }

  public String getReleaseInfo()
  {
    return this.releaseInfo;
  }

  public int getReleaseType()
  {
    return this.releaseType;
  }

  public long getUpdatedAt()
  {
    return this.updatedAt;
  }

  public int getVersionCode()
  {
    return this.versionCode;
  }

  public String getVersionName()
  {
    return this.versionName;
  }

  public void setCreatedAt(long paramLong)
  {
    this.createdAt = paramLong;
  }

  public void setDataId(long paramLong)
  {
    this.dataId = paramLong;
  }

  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }

  public void setFilename(String paramString)
  {
    this.filename = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setOsType(int paramInt)
  {
    this.osType = paramInt;
  }

  public void setPackId(String paramString)
  {
    this.packId = paramString;
  }

  public void setReleaseInfo(String paramString)
  {
    this.releaseInfo = paramString;
  }

  public void setReleaseType(int paramInt)
  {
    this.releaseType = paramInt;
  }

  public void setUpdatedAt(long paramLong)
  {
    this.updatedAt = paramLong;
  }

  public void setVersionCode(int paramInt)
  {
    this.versionCode = paramInt;
  }

  public void setVersionName(String paramString)
  {
    this.versionName = paramString;
  }

  public String toString()
  {
    return "AppModel [dataId=" + this.dataId + ", releaseType=" + this.releaseType + ", name=" + this.name + ", packId=" + this.packId + ", osType=" + this.osType + ", versionCode=" + this.versionCode + ", versionName=" + this.versionName + ", releaseInfo=" + this.releaseInfo + ", downloadUrl=" + this.downloadUrl + ", updatedAt=" + this.updatedAt + ", createdAt=" + this.createdAt + ", filename=" + this.filename + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.app.AppModel
 * JD-Core Version:    0.6.0
 */