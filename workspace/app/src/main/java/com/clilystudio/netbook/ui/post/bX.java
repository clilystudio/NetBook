package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TweetsResult;

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
 * Qualified Name:     com.clilystudio.netbook.ui.post.bX
 * JD-Core Version:    0.6.0
 */