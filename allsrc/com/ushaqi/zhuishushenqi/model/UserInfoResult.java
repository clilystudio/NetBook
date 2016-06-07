package com.ushaqi.zhuishushenqi.model;

public class UserInfoResult extends User
{
  private int followers;
  private int followings;

  public int getFollowers()
  {
    return this.followers;
  }

  public int getFollowings()
  {
    return this.followings;
  }

  public void setFollowers(int paramInt)
  {
    this.followers = paramInt;
  }

  public void setFollowings(int paramInt)
  {
    this.followings = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.UserInfoResult
 * JD-Core Version:    0.6.0
 */