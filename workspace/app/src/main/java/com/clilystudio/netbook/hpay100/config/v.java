package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.clilystudio.netbook.hpay100.c.b;

final class v
  implements Runnable
{
  v(Context paramContext, k paramk)
  {
  }

  public final void run()
  {
    try
    {
      String str2 = a.a(this.a.getApplicationContext(), "http://m.139site.com/msisdn.jsp", null, false, 30000, 40000, true);
      a.b("dalongTest", "phoneNumberCM02:" + str2);
      str1 = b.b(str2);
      if (b.a(str1))
        l.j = str1;
    }
    catch (Exception localException1)
    {
      while (true)
      {
        try
        {
          a.b("dalongTest", "HPayConfig.mPhone white:" + l.j);
          if (this.b == null)
            continue;
          this.b.a(str1);
          return;
          localException1 = localException1;
          Exception localException2 = localException1;
          str1 = "";
          localException2.printStackTrace();
          continue;
        }
        catch (Exception localException3)
        {
          continue;
        }
        String str1 = "";
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.v
 * JD-Core Version:    0.6.0
 */