package com.clilystudio.netbook.model;

public class DiscussSummaryList
{
  private boolean ok;
  private DiscussSummary[] posts;

  public DiscussSummary[] getPosts()
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

  public void setPosts(DiscussSummary[] paramArrayOfDiscussSummary)
  {
    this.posts = paramArrayOfDiscussSummary;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.DiscussSummaryList
 * JD-Core Version:    0.6.0
 */