package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TweetResult;

final class dz extends e<String, Void, TweetResult>
{
  private dz(TweetDetailActivity paramTweetDetailActivity)
  {
  }

  private TweetResult a()
  {
    try
    {
      TweetResult localTweetResult = b.b().l(this.a.a);
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dz
 * JD-Core Version:    0.6.2
 */