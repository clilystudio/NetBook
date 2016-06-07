package com.ushaqi.zhuishushenqi.util;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ChargeTypes;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.r
 * JD-Core Version:    0.6.0
 */