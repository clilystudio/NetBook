package com.ushaqi.zhuishushenqi.ui.home;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.IKanshuUrlResult;
import java.io.IOException;

final class g extends e<Void, Void, IKanshuUrlResult>
{
  private g(HomeActivity paramHomeActivity)
  {
  }

  private static IKanshuUrlResult a()
  {
    try
    {
      b.a();
      IKanshuUrlResult localIKanshuUrlResult = b.b().t();
      return localIKanshuUrlResult;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.g
 * JD-Core Version:    0.6.0
 */