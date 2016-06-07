package com.ximalaya.ting.android.opensdk.model.tag;

import com.google.gson.annotations.SerializedName;

public class Tag
{

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_middle")
  private String coverUrlMiddle;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;
  private String kind;

  @SerializedName("tag_name")
  private String tagName;

  public String getCoverUrlLarge()
  {
    return this.coverUrlLarge;
  }

  public String getCoverUrlMiddle()
  {
    return this.coverUrlMiddle;
  }

  public String getCoverUrlSmall()
  {
    return this.coverUrlSmall;
  }

  public String getKind()
  {
    return this.kind;
  }

  public String getTagName()
  {
    return this.tagName;
  }

  public void setCoverUrlLarge(String paramString)
  {
    this.coverUrlLarge = paramString;
  }

  public void setCoverUrlMiddle(String paramString)
  {
    this.coverUrlMiddle = paramString;
  }

  public void setCoverUrlSmall(String paramString)
  {
    this.coverUrlSmall = paramString;
  }

  public void setKind(String paramString)
  {
    this.kind = paramString;
  }

  public void setTagName(String paramString)
  {
    this.tagName = paramString;
  }

  public String toString()
  {
    return "Tag [kind=" + this.kind + ", tagName=" + this.tagName + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlMiddle=" + this.coverUrlMiddle + ", coverUrlLarge=" + this.coverUrlLarge + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.tag.Tag
 * JD-Core Version:    0.6.0
 */