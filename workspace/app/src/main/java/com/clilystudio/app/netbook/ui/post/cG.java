package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TweetResult;

final class cG extends e<String, Void, TweetResult>
{
  private cG(ReviewActivity paramReviewActivity)
  {
  }

  private TweetResult a(String[] paramArrayOfString)
  {
    try
    {
      TweetResult localTweetResult = b.b().l(paramArrayOfString[0]);
      return localTweetResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cG
 * JD-Core Version:    0.6.2
 */