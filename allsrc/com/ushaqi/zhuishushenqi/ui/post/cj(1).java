package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.FollowersResult;

final class cj extends e<String, Void, FollowersResult>
{
  private Runnable a;

  public cj(OtherUserActivity paramOtherUserActivity, Runnable paramRunnable)
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cj
 * JD-Core Version:    0.6.0
 */