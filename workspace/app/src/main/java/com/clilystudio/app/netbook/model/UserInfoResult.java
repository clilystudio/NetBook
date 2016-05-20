package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UserInfoResult
 * JD-Core Version:    0.6.2
 */