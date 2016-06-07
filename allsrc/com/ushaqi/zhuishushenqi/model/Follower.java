package com.ushaqi.zhuishushenqi.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.ushaqi.zhuishushenqi.api.ApiService;

public class Follower
  implements Parcelable
{
  public static final Parcelable.Creator<Follower> CREATOR = new Follower.1();
  private String _id;
  private String avatar;
  private int followers;
  private int followings;
  private String nickname;
  private int tweets;

  public Follower()
  {
  }

  public Follower(Parcel paramParcel)
  {
    this._id = paramParcel.readString();
    this.avatar = paramParcel.readString();
    this.nickname = paramParcel.readString();
    this.followers = paramParcel.readInt();
    this.followings = paramParcel.readInt();
    this.tweets = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public String getAvatar()
  {
    return this.avatar;
  }

  public int getFollowers()
  {
    return this.followers;
  }

  public int getFollowings()
  {
    return this.followings;
  }

  public String getFullAvatar()
  {
    return ApiService.a + getAvatar();
  }

  public String getNickname()
  {
    return this.nickname;
  }

  public int getTweets()
  {
    return this.tweets;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setAvatar(String paramString)
  {
    this.avatar = paramString;
  }

  public void setFollowers(int paramInt)
  {
    this.followers = paramInt;
  }

  public void setFollowings(int paramInt)
  {
    this.followings = paramInt;
  }

  public void setNickname(String paramString)
  {
    this.nickname = paramString;
  }

  public void setTweets(int paramInt)
  {
    this.tweets = paramInt;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this._id);
    paramParcel.writeString(this.avatar);
    paramParcel.writeString(this.nickname);
    paramParcel.writeInt(this.followers);
    paramParcel.writeInt(this.followings);
    paramParcel.writeInt(this.tweets);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Follower
 * JD-Core Version:    0.6.0
 */