package com.arcsoft.hpay100.config;

import android.content.Context;
import android.support.v7.app.f;
import android.text.TextUtils;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import org.json.JSONObject;

final class m
  implements Runnable
{
  m(Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      long l = System.currentTimeMillis();
      l.a(this.a.getApplicationContext(), l);
      String str1 = f.h(this.a.getApplicationContext());
      com.arcsoft.hpay100.a.a.b("dalongTest", "data:" + str1);
      HashMap localHashMap = new HashMap();
      localHashMap.put("p", f.a(str1, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"));
      String str2 = com.arcsoft.hpay100.a.a.b(this.a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/init", localHashMap);
      if (!TextUtils.isEmpty(str2))
      {
        JSONObject localJSONObject = new JSONObject(str2);
        if (localJSONObject.optInt("status", -1) == 0)
        {
          String str3 = localJSONObject.optString("res", "");
          if (!TextUtils.isEmpty(str3))
          {
            String str4 = f.b(str3, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a");
            com.arcsoft.hpay100.a.a.b("dalongTest", "resdes:" + str4);
            a.a(this.a.getApplicationContext(), str4);
          }
        }
      }
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.m
 * JD-Core Version:    0.6.0
 */