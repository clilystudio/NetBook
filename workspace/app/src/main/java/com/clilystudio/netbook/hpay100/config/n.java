package com.clilystudio.netbook.hpay100.config;

import android.app.Activity;
import android.support.v7.app.f;
import com.clilystudio.netbook.hpay100.a_Pack.a;
import java.util.HashMap;

final class n
  implements Runnable
{
  n(Activity paramActivity, String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, int paramInt2, k paramk)
  {
  }

  public final void run()
  {
    try
    {
      l.q = "";
      String str = f.h(this.a.getApplicationContext()) + l.a(this.b, this.c, this.d, this.e, this.f, this.g);
      a.b("dalongTest", "data:" + str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("p", f.a(str, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"));
      l.q = a.b(this.a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/before_create_order", localHashMap);
      this.a.runOnUiThread(new o(this, this.h));
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        l.q = "";
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.n
 * JD-Core Version:    0.6.0
 */