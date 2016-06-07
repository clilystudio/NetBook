package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.HotTweetResult;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dI
 * JD-Core Version:    0.6.0
 */