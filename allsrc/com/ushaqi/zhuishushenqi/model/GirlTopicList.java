package com.ushaqi.zhuishushenqi.model;

public class GirlTopicList
{
  private boolean ok;
  private GirlTopicSummary[] posts;

  public GirlTopicSummary[] getPosts()
  {
    return this.posts;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setPosts(GirlTopicSummary[] paramArrayOfGirlTopicSummary)
  {
    this.posts = paramArrayOfGirlTopicSummary;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.GirlTopicList
 * JD-Core Version:    0.6.0
 */