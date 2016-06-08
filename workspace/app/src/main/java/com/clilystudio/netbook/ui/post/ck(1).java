package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.FollowingsResult;

final class ck extends e<String, Void, FollowingsResult>
{
  private Runnable a;

  public ck(OtherUserActivity paramOtherUserActivity, Runnable paramRunnable)
  {
    this.a = paramRunnable;
  }

  private static FollowingsResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      FollowingsResult localFollowingsResult = b.b().h(paramArrayOfString[0]);
      return localFollowingsResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.ck
 * JD-Core Version:    0.6.0
 */