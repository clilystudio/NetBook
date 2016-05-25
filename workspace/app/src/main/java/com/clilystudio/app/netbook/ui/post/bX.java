package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TweetsResult;

final class bX extends e<String, Void, TweetsResult>
{
  private bX(MyTweetFragment paramMyTweetFragment)
  {
  }

  private static TweetsResult a()
  {
    try
    {
      b.a();
      TweetsResult localTweetsResult = b.b().k(null);
      return localTweetsResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bX
 * JD-Core Version:    0.6.2
 */