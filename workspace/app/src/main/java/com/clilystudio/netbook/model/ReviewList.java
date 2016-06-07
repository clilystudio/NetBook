package com.clilystudio.netbook.model;

public class ReviewList
{
  private boolean ok;
  private ReviewSummary[] reviews;

  public ReviewSummary[] getReviews()
  {
    return this.reviews;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setReviews(ReviewSummary[] paramArrayOfReviewSummary)
  {
    this.reviews = paramArrayOfReviewSummary;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.ReviewList
 * JD-Core Version:    0.6.0
 */