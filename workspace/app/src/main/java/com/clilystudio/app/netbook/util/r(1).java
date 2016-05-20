package com.clilystudio.app.netbook.util;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ChargeTypes;
import java.io.IOException;

final class r extends c<Void, ChargeTypes>
{
  public r(p paramp, Activity paramActivity)
  {
    super(paramActivity);
  }

  private static ChargeTypes a()
  {
    try
    {
      b.a();
      ChargeTypes localChargeTypes = b.b().c();
      return localChargeTypes;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.r
 * JD-Core Version:    0.6.2
 */