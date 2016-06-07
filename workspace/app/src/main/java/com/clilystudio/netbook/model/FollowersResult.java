package com.clilystudio.netbook.model;

public class FollowersResult
{
  private Follower[] followers;
  private boolean ok;

  public Follower[] getFollowers()
  {
    return this.followers;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setFollowers(Follower[] paramArrayOfFollower)
  {
    this.followers = paramArrayOfFollower;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.FollowersResult
 * JD-Core Version:    0.6.0
 */