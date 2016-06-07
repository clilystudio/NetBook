package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.UserInfoResult;

final class bY extends e<String, Void, UserInfoResult>
{
  private Runnable a;

  public bY(MyTweetFragment paramMyTweetFragment, Runnable paramRunnable)
  {
    this.a = paramRunnable;
  }

  private static UserInfoResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      UserInfoResult localUserInfoResult = b.b().m(paramArrayOfString[0]);
      return localUserInfoResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bY
 * JD-Core Version:    0.6.0
 */