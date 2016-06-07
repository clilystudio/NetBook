package com.arcsoft.hpay100;

import android.app.Activity;
import android.text.TextUtils;
import com.arcsoft.hpay100.config.g;
import com.arcsoft.hpay100.config.k;
import com.arcsoft.hpay100.config.l;
import org.json.JSONException;
import org.json.JSONObject;

final class f
  implements k
{
  private Activity a;
  private String b = "";
  private String c = "";
  private String d = "";
  private int e = 0;
  private int f = 0;
  private y g;

  public f(Activity paramActivity, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, y paramy)
  {
    this.a = paramActivity;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
    this.e = paramInt1;
    this.f = paramInt2;
    this.g = paramy;
  }

  public final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      a.a(this.a);
      com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, this.c, this.f, -1, "2", "2006", 0);
      com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, "", -1, this.c, "", "", this.f, "2", "4000", 0);
      z localz6 = com.arcsoft.hpay100.config.a.a(this.f, this.b, this.e, this.d, this.c, 6106, "系统繁忙");
      if (this.g != null)
        this.g.a(localz6);
    }
    JSONObject localJSONObject;
    int i;
    String str1;
    while (true)
    {
      return;
      try
      {
        localJSONObject = new JSONObject(paramString);
        if (localJSONObject == null)
        {
          a.a(this.a);
          com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, this.c, this.f, -1, "2", "2007", 0);
          com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, "", -1, this.c, "", "", this.f, "2", "4201", 0);
          z localz5 = com.arcsoft.hpay100.config.a.a(this.f, this.b, this.e, this.d, this.c, 6106, "系统繁忙");
          if (this.g == null)
            continue;
          this.g.a(localz5);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        while (true)
        {
          localJSONException.printStackTrace();
          localJSONObject = null;
        }
        i = localJSONObject.optInt("status", -1);
        str1 = localJSONObject.optString("msg", "");
        if (i == 0)
          break label442;
      }
    }
    a.a(this.a);
    com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, this.c, this.f, -1, "2", i, 0);
    com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, "", -1, this.c, "", "", this.f, "2", i, 0);
    if (TextUtils.isEmpty(str1));
    for (String str7 = "系统繁忙"; ; str7 = str1)
    {
      label442: int j;
      while (true)
      {
        z localz4 = com.arcsoft.hpay100.config.a.a(this.f, this.b, this.e, this.d, this.c, i, str7);
        if (this.g == null)
          break;
        this.g.a(localz4);
        return;
        String str2 = localJSONObject.optString("res", "");
        if (TextUtils.isEmpty(str2))
        {
          a.a(this.a);
          com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, this.c, this.f, -1, "2", "2008", 0);
          com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, "", -1, this.c, "", "", this.f, "2", "4202", 0);
          z localz3 = com.arcsoft.hpay100.config.a.a(this.f, this.b, this.e, this.d, this.c, 6106, "系统繁忙");
          if (this.g == null)
            break;
          this.g.a(localz3);
          return;
        }
        try
        {
          String str6 = android.support.v7.app.f.b(str2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a");
          str3 = str6;
          com.arcsoft.hpay100.a.a.b("dalongTest", "resdes:" + str3);
          if (TextUtils.isEmpty(str3))
          {
            a.a(this.a);
            com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, this.c, this.f, -1, "2", "2009", 0);
            com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, "", -1, this.c, "", "", this.f, "2", "4203", 0);
            z localz2 = com.arcsoft.hpay100.config.a.a(this.f, this.b, this.e, this.d, this.c, 6106, "系统繁忙");
            if (this.g == null)
              break;
            this.g.a(localz2);
            return;
          }
        }
        catch (Exception localException)
        {
          String str3;
          while (true)
          {
            localException.printStackTrace();
            str3 = "";
          }
          g localg = com.arcsoft.hpay100.config.a.b(this.a.getApplicationContext(), str3);
          if (localg == null)
          {
            a.a(this.a);
            com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, this.c, this.f, -1, "2", "2010", 0);
            com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, "", -1, this.c, "", "", this.f, "2", "4204", 0);
            z localz1 = com.arcsoft.hpay100.config.a.a(this.f, this.b, this.e, this.d, this.c, 6106, "系统繁忙");
            if (this.g == null)
              break;
            this.g.a(localz1);
            return;
          }
          j = localg.a;
          com.arcsoft.hpay100.a.a.b("dalongTest", "scheme--:" + j);
          com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, this.c, this.f, j, "1", "", 0);
          if (j == 3)
          {
            String str5 = l.e(this.a.getApplicationContext());
            l.a(this.a, this.b, j, this.c, this.f, this.d, str5, this.e, new e(this.a, this.e, this.b, this.c, this.f, this.d, j, this.g));
            com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, j, this.c, this.f, "1", "", 0);
            return;
          }
          if (j == 1)
          {
            a.a(this.a);
            HPaySdkActivity.a(this.a, this.b, j, this.c, this.f, this.d, this.e, this.g);
            return;
          }
        }
      }
      if (j != 2)
        break;
      String str4 = l.e(this.a.getApplicationContext());
      l.a(this.a, this.b, j, this.c, this.f, this.d, str4, this.e, new e(this.a, this.e, this.b, this.c, this.f, this.d, j, this.g));
      com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), this.b, j, this.c, this.f, "1", "", 0);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.f
 * JD-Core Version:    0.6.0
 */