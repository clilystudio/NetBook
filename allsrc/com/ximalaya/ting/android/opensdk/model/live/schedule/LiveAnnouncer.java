package com.ximalaya.ting.android.opensdk.model.live.schedule;

import com.google.gson.annotations.SerializedName;

public class LiveAnnouncer
{

  @SerializedName("avatar_url")
  private String avatarUrl;

  @SerializedName("id")
  private long liveAnnouncerId;

  @SerializedName("nickname")
  private String nickName;

  public String getAvatarUrl()
  {
    return this.avatarUrl;
  }

  public long getLiveAnnouncerId()
  {
    return this.liveAnnouncerId;
  }

  public String getNickName()
  {
    return this.nickName;
  }

  public void setAvatarUrl(String paramString)
  {
    this.avatarUrl = paramString;
  }

  public void setLiveAnnouncerId(long paramLong)
  {
    this.liveAnnouncerId = paramLong;
  }

  public void setNickName(String paramString)
  {
    this.nickName = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.schedule.LiveAnnouncer
 * JD-Core Version:    0.6.0
 */