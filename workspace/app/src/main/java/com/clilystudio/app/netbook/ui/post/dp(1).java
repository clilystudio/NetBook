package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ReviewList;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dp
 * JD-Core Version:    0.6.2
 */