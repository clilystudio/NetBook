package com.clilystudio.netbook.ui.post;

final class do extends e<String, Void, ReviewList>
{
  private do(ReviewListActivity paramReviewListActivity)
  {
  }

  private ReviewList a(String[] paramArrayOfString)
  {
    if (!isCancelled())
      try
      {
        ReviewListActivity.w(this.a);
        ReviewList localReviewList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], ReviewListActivity.l(this.a).size(), 20, ReviewListActivity.p(this.a));
        return localReviewList;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.do
 * JD-Core Version:    0.6.0
 */