package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TweetsResult;

final class cm extends e<String, Void, TweetsResult>
{
  private cm(OtherUserActivity paramOtherUserActivity)
  {
  }

  private static TweetsResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      TweetsResult localTweetsResult = b.b().o(paramArrayOfString[0], null);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cm
 * JD-Core Version:    0.6.0
 */