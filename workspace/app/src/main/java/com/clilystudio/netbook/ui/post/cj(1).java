package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.FollowersResult;

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
 * Qualified Name:     com.clilystudio.netbook.ui.post.cj
 * JD-Core Version:    0.6.0
 */