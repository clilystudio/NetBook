package com.ushaqi.zhuishushenqi.model;

public class ReviewResult
{
  private boolean ok;
  private Review review;

  public Review getReview()
  {
    return this.review;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setReview(Review paramReview)
  {
    this.review = paramReview;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.ReviewResult
 * JD-Core Version:    0.6.0
 */