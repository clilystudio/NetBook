package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TweetsResult;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bW
 * JD-Core Version:    0.6.0
 */