package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.FollowResult;

final class ci extends e<String, Void, FollowResult>
{
  private ci(OtherUserActivity paramOtherUserActivity)
  {
  }

  private static FollowResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      FollowResult localFollowResult = b.b().n(paramArrayOfString[0], paramArrayOfString[1]);
      return localFollowResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ci
 * JD-Core Version:    0.6.2
 */