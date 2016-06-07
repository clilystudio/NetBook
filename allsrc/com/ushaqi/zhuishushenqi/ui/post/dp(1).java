package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ReviewList;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dp
 * JD-Core Version:    0.6.0
 */