package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.IKanshuUrlResult;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.g
 * JD-Core Version:    0.6.2
 */