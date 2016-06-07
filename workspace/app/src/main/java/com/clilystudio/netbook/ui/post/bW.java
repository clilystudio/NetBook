package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetsResult;

final class bW extends e<String, Void, TweetsResult>
{
  private bW(MyTweetFragment paramMyTweetFragment)
  {
  }

  private static TweetsResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      TweetsResult localTweetsResult = b.b().k(paramArrayOfString[0]);
      return localTweetsResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bW
 * JD-Core Version:    0.6.0
 */