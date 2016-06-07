package com.ximalaya.ting.android.opensdk.model.album;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.util.XiMaDataSupport;

public class Announcer extends XiMaDataSupport
  implements Parcelable
{
  public static final Parcelable.Creator<Announcer> CREATOR = new Announcer.1();

  @SerializedName("id")
  private long announcerId;

  @SerializedName("avatar_url")
  private String avatarUrl;
  private String nickname;

  @SerializedName("is_verified")
  private boolean verified;

  public int describeContents()
  {
    return 0;
  }

  public long getAnnouncerId()
  {
    return this.announcerId;
  }

  public String getAvatarUrl()
  {
    return this.avatarUrl;
  }

  public String getNickname()
  {
    return this.nickname;
  }

  public boolean isVerified()
  {
    return this.verified;
  }

  public void readFromParcel(Parcel paramParcel)
  {
    this.announcerId = paramParcel.readLong();
    this.nickname = paramParcel.readString();
    this.avatarUrl = paramParcel.readString();
    boolean[] arrayOfBoolean = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean);
    this.verified = arrayOfBoolean[0];
  }

  public void setAnnouncerId(long paramLong)
  {
    this.announcerId = paramLong;
  }

  public void setAvatarUrl(String paramString)
  {
    this.avatarUrl = paramString;
  }

  public void setNickname(String paramString)
  {
    this.nickname = paramString;
  }

  public void setVerified(boolean paramBoolean)
  {
    this.verified = paramBoolean;
  }

  public String toString()
  {
    return "Announcer [id=" + this.announcerId + ", nickname=" + this.nickname + ", avatarUrl=" + this.avatarUrl + ", isVerified=" + this.verified + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.announcerId);
    paramParcel.writeString(this.nickname);
    paramParcel.writeString(this.avatarUrl);
    boolean[] arrayOfBoolean = new boolean[1];
    arrayOfBoolean[0] = this.verified;
    paramParcel.writeBooleanArray(arrayOfBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.Announcer
 * JD-Core Version:    0.6.0
 */