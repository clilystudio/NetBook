package com.ximalaya.ting.android.opensdk.model.ranks;

import com.google.gson.annotations.SerializedName;

public class RankItem
{

  @SerializedName("content_type")
  private String contentType;

  @SerializedName("id")
  private long dataId;
  private String title;

  public String getContentType()
  {
    return this.contentType;
  }

  public long getDataId()
  {
    return this.dataId;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setContentType(String paramString)
  {
    this.contentType = paramString;
  }

  public void setDataId(long paramLong)
  {
    this.dataId = paramLong;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public String toString()
  {
    return "RankItem [dataId=" + this.dataId + ", title=" + this.title + ", contentType=" + this.contentType + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.ranks.RankItem
 * JD-Core Version:    0.6.0
 */