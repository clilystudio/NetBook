package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.HotTweetResult;

final class dH extends e<String, Void, HotTweetResult>
{
  private dH(TweetHotFragment paramTweetHotFragment)
  {
  }

  private static HotTweetResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      HotTweetResult localHotTweetResult = b.b().j(paramArrayOfString[0]);
      return localHotTweetResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dH
 * JD-Core Version:    0.6.2
 */