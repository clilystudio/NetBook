package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.IKanshuUrlResult;
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
 * Qualified Name:     com.clilystudio.netbook.ui.home.g
 * JD-Core Version:    0.6.0
 */