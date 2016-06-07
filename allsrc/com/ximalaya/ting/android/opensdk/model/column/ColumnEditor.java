package com.ximalaya.ting.android.opensdk.model.column;

import com.google.gson.annotations.SerializedName;

public class ColumnEditor
{

  @SerializedName("avatar_url")
  private String avatarUrl;

  @SerializedName("nickname")
  private String nickName;

  @SerializedName("personal_signature")
  private String personalsignature;
  private long uid;

  public String getAvatarUrl()
  {
    return this.avatarUrl;
  }

  public String getNickName()
  {
    return this.nickName;
  }

  public String getPersonalsignature()
  {
    return this.personalsignature;
  }

  public long getUid()
  {
    return this.uid;
  }

  public void setAvatarUrl(String paramString)
  {
    this.avatarUrl = paramString;
  }

  public void setNickName(String paramString)
  {
    this.nickName = paramString;
  }

  public void setPersonalsignature(String paramString)
  {
    this.personalsignature = paramString;
  }

  public void setUid(long paramLong)
  {
    this.uid = paramLong;
  }

  public String toString()
  {
    return "ColumnEditor [uid=" + this.uid + ", nickName=" + this.nickName + ", avatarUrl=" + this.avatarUrl + ", personalsignature=" + this.personalsignature + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.column.ColumnEditor
 * JD-Core Version:    0.6.0
 */