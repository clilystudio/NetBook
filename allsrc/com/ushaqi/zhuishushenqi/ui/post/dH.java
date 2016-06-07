package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.HotTweetResult;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dH
 * JD-Core Version:    0.6.0
 */