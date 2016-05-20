package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.FollowersResult;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cj
 * JD-Core Version:    0.6.2
 */