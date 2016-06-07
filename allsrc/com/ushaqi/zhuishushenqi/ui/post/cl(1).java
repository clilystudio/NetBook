package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TweetsResult;

final class cl extends e<String, Void, TweetsResult>
{
  private cl(OtherUserActivity paramOtherUserActivity)
  {
  }

  private static TweetsResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      TweetsResult localTweetsResult = b.b().o(paramArrayOfString[0], paramArrayOfString[1]);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cl
 * JD-Core Version:    0.6.0
 */