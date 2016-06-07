package com.ushaqi.zhuishushenqi.model;

public class RecommendUgcRoot
{
  private RecommendUgcRoot.RecommendUGC[] booklists;
  private boolean ok;

  public RecommendUgcRoot.RecommendUGC[] getBooklists()
  {
    return this.booklists;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBooklists(RecommendUgcRoot.RecommendUGC[] paramArrayOfRecommendUGC)
  {
    this.booklists = paramArrayOfRecommendUGC;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.RecommendUgcRoot
 * JD-Core Version:    0.6.0
 */