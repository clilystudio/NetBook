package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotTweetResult;

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
 * Qualified Name:     com.clilystudio.netbook.ui.post.dH
 * JD-Core Version:    0.6.0
 */