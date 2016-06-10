package com.clilystudio.netbook.hpay100.config;

import android.app.Activity;
import android.support.v7.app.f;
import com.clilystudio.netbook.hpay100.a_Pack.a;
import java.util.HashMap;

final class r
  implements Runnable
{
  r(Activity paramActivity, String paramString1, String paramString2, k paramk)
  {
  }

  public final void run()
  {
    l.s = "";
    try
    {
      String str = f.h(this.a.getApplicationContext()) + l.a(this.b, this.c);
      a.b("dalongTest", "data:" + str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("p", f.a(str, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"));
      l.s = a.b(this.a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/ver_confirm", localHashMap);
      this.a.runOnUiThread(new s(this, this.d));
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        l.s = "";
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.r
 * JD-Core Version:    0.6.0
 */