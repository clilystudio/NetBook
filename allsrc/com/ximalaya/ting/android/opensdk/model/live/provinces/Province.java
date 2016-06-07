package com.ximalaya.ting.android.opensdk.model.live.provinces;

import com.google.gson.annotations.SerializedName;

public class Province
{

  @SerializedName("created_at")
  private int createdAt;

  @SerializedName("province_code")
  private String provinceCode;

  @SerializedName("id")
  private long provinceId;

  @SerializedName("province_name")
  private String provinceName;

  public int getCreatedAt()
  {
    return this.createdAt;
  }

  public String getProvinceCode()
  {
    return this.provinceCode;
  }

  public long getProvinceId()
  {
    return this.provinceId;
  }

  public String getProvinceName()
  {
    return this.provinceName;
  }

  public void setCreatedAt(int paramInt)
  {
    this.createdAt = paramInt;
  }

  public void setProvinceCode(String paramString)
  {
    this.provinceCode = paramString;
  }

  public void setProvinceId(long paramLong)
  {
    this.provinceId = paramLong;
  }

  public void setProvinceName(String paramString)
  {
    this.provinceName = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.provinces.Province
 * JD-Core Version:    0.6.0
 */