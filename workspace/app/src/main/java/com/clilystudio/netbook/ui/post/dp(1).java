package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ReviewList;

final class dp extends e<String, Void, ReviewList>
{
  private dp(ReviewListActivity paramReviewListActivity)
  {
  }

  private ReviewList a(String[] paramArrayOfString)
  {
    try
    {
      ReviewListActivity.q(this.a);
      ReviewList localReviewList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], 0, 20, ReviewListActivity.p(this.a));
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
 * Qualified Name:     com.clilystudio.netbook.ui.post.dp
 * JD-Core Version:    0.6.0
 */