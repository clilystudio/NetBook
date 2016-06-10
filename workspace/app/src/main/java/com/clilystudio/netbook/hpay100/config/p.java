package com.clilystudio.netbook.hpay100.config;

import android.app.Activity;
import android.support.v7.app.f;
import com.clilystudio.netbook.hpay100.a_Pack.a;
import java.util.HashMap;

final class p
  implements Runnable
{
  p(Activity paramActivity, String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, String paramString4, int paramInt3, k paramk)
  {
  }

  public final void run()
  {
    l.r = "";
    try
    {
      String str = f.h(this.a.getApplicationContext()) + l.a(this.b, this.c, this.d, this.e, this.f, this.g, this.h);
      a.b("dalongTest", "params:" + str);
      HashMap localHashMap = new HashMap();
      localHashMap.put("p", f.a(str, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"));
      l.r = a.b(this.a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/create_order", localHashMap);
      this.a.runOnUiThread(new q(this, this.i));
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        l.r = "";
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.p
 * JD-Core Version:    0.6.0
 */