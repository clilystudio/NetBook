package com.arcsoft.hpay100.config;

import android.content.Context;
import android.support.v7.app.f;
import java.util.HashMap;

final class h
  implements Runnable
{
  h(Context paramContext, HashMap paramHashMap)
  {
  }

  public final void run()
  {
    try
    {
      String str = f.h(this.a.getApplicationContext()) + a.a(this.b);
      com.arcsoft.hpay100.a.a.b("dalongTest", "data:" + str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("p", f.a(str, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"));
      com.arcsoft.hpay100.a.a.b(this.a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/dot_upload", localHashMap);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.h
 * JD-Core Version:    0.6.0
 */