package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotTweetResult;

final class dI extends e<String, Void, HotTweetResult>
{
  private dI(TweetHotFragment paramTweetHotFragment)
  {
  }

  private static HotTweetResult a()
  {
    try
    {
      b.a();
      HotTweetResult localHotTweetResult = b.b().j(null);
      return localHotTweetResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dI
 * JD-Core Version:    0.6.0
 */