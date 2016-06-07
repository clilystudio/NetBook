package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.FollowResult;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.ci
 * JD-Core Version:    0.6.0
 */