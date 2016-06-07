package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.FollowersResult;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bU
 * JD-Core Version:    0.6.0
 */