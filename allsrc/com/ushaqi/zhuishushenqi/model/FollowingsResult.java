package com.ushaqi.zhuishushenqi.model;

public class FollowingsResult
{
  private String code;
  private Follower[] followings;
  private boolean ok;

  public String getCode()
  {
    return this.code;
  }

  public Follower[] getFollowings()
  {
    return this.followings;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setFollowings(Follower[] paramArrayOfFollower)
  {
    this.followings = paramArrayOfFollower;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.FollowingsResult
 * JD-Core Version:    0.6.0
 */