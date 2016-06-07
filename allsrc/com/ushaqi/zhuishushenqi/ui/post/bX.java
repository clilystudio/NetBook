package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TweetsResult;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bX
 * JD-Core Version:    0.6.0
 */