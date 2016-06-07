package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.FollowersResult;

final class bU extends e<String, Void, FollowersResult>
{
  private Runnable a;

  public bU(MyTweetFragment paramMyTweetFragment, Runnable paramRunnable)
  {
    this.a = paramRunnable;
  }

  private static FollowersResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      FollowersResult localFollowersResult = b.b().i(paramArrayOfString[0]);
      return localFollowersResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bU
 * JD-Core Version:    0.6.0
 */