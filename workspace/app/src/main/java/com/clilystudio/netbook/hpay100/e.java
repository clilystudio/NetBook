package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.support.v7.app.f;
import android.text.TextUtils;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.config.k;
import com.clilystudio.netbook.hpay100.config.l;
import com.clilystudio.netbook.hpay100.web.HPayWebActivity;
import org.json.JSONException;
import org.json.JSONObject;

final class e
  implements k
{
  private Activity a = null;
  private int b = 0;
  private String c = "";
  private String d = "";
  private int e = 0;
  private String f = "";
  private int g = 0;
  private y h = null;

  public e(Activity paramActivity, int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, int paramInt3, y paramy)
  {
    this.a = paramActivity;
    this.b = paramInt1;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramInt2;
    this.f = paramString3;
    this.g = paramInt3;
    this.h = paramy;
  }

  public final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      a.a(this.a);
      com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), this.c, "", this.g, this.d, "", "", this.e, "2", "4001", 0);
      z localz8 = com.clilystudio.netbook.hpay100.config.a.a(this.e, this.c, this.b, this.f, this.d, 6106, "系统繁忙");
      if (this.h != null)
        this.h.a(localz8);
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
          com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), this.c, "", this.g, this.d, "", "", this.e, "2", "4002", 0);
          z localz7 = com.clilystudio.netbook.hpay100.config.a.a(this.e, this.c, this.b, this.f, this.d, 6106, "系统繁忙");
          if (this.h == null)
            continue;
          this.h.a(localz7);
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
          break label355;
      }
    }
    a.a(this.a);
    com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), this.c, "", this.g, this.d, "", "", this.e, "2", i, 0);
    if (TextUtils.isEmpty(str1));
    for (String str5 = "系统繁忙"; ; str5 = str1)
      while (true)
      {
        z localz6 = com.clilystudio.netbook.hpay100.config.a.a(this.e, this.c, this.b, this.f, this.d, i, str5);
        if (this.h == null)
          break;
        this.h.a(localz6);
        return;
        label355: String str2 = localJSONObject.optString("res", "");
        if (TextUtils.isEmpty(str2))
        {
          a.a(this.a);
          com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), this.c, "", this.g, this.d, "", "", this.e, "2", "4003", 0);
          z localz5 = com.clilystudio.netbook.hpay100.config.a.a(this.e, this.c, this.b, this.f, this.d, 6106, "系统繁忙");
          if (this.h == null)
            break;
          this.h.a(localz5);
          return;
        }
        try
        {
          String str4 = f.b(str2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a");
          str3 = str4;
          com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "resdes:" + str3);
          if (TextUtils.isEmpty(str3))
          {
            a.a(this.a);
            com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), this.c, "", this.g, this.d, "", "", this.e, "2", "4004", 0);
            z localz4 = com.clilystudio.netbook.hpay100.config.a.a(this.e, this.c, this.b, this.f, this.d, 6106, "系统繁忙");
            if (this.h == null)
              break;
            this.h.a(localz4);
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
          HPaySMS localHPaySMS = com.clilystudio.netbook.hpay100.config.a.a(str3);
          if (localHPaySMS == null)
          {
            a.a(this.a);
            com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), this.c, "", this.g, this.d, "", "", this.e, "2", "4005", 0);
            z localz3 = com.clilystudio.netbook.hpay100.config.a.a(this.e, this.c, this.b, this.f, this.d, 6106, "系统繁忙");
            if (this.h == null)
              break;
            this.h.a(localz3);
            return;
          }
          localHPaySMS.mOrderidAPP = this.c;
          localHPaySMS.mPayName = this.f;
          localHPaySMS.mPayId = this.d;
          com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), localHPaySMS.mOrderidAPP, localHPaySMS.mOrderidHR, localHPaySMS.mScheme, localHPaySMS.mPayId, localHPaySMS.mChType, localHPaySMS.mChID, localHPaySMS.mAmount, "1", "", 0);
          if (this.g == 2)
          {
            a.a(this.a);
            if (localHPaySMS.mSdkFeeType == 16)
            {
              if (TextUtils.isEmpty(localHPaySMS.mOpenUrl))
              {
                com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), localHPaySMS.mOrderidAPP, localHPaySMS.mOrderidHR, localHPaySMS.mScheme, localHPaySMS.mPayId, localHPaySMS.mChType, localHPaySMS.mChID, localHPaySMS.mAmount, "2", "4006", 0);
                z localz2 = com.clilystudio.netbook.hpay100.config.a.a(localHPaySMS, 6106, "系统繁忙");
                if (this.h == null)
                  break;
                this.h.a(localz2);
                return;
              }
              HPayWebActivity.a(this.a, localHPaySMS, str3, this.h);
              return;
            }
            if (TextUtils.isEmpty(localHPaySMS.mFeeUrl))
            {
              com.clilystudio.netbook.hpay100.config.a.a(this.a.getApplicationContext(), localHPaySMS.mOrderidAPP, localHPaySMS.mOrderidHR, localHPaySMS.mScheme, localHPaySMS.mPayId, localHPaySMS.mChType, localHPaySMS.mChID, localHPaySMS.mAmount, "2", "4006", 0);
              z localz1 = com.clilystudio.netbook.hpay100.config.a.a(localHPaySMS, 6106, "系统繁忙");
              if (this.h == null)
                break;
              this.h.a(localz1);
              return;
            }
            HPayWebActivity.a(this.a, localHPaySMS, str3, this.h);
            return;
          }
          if (localHPaySMS.mSdkFeeType == 8)
          {
            a.a(this.a);
            com.clilystudio.netbook.hpay100.a_Pack.a.a(this.a, localHPaySMS, this.h);
            return;
          }
          if (l.h == 0)
          {
            a.a(this.a);
            HPaySdkActivity.a(this.a, this.g, localHPaySMS, this.h);
            return;
          }
          a.a(this.a, localHPaySMS, this.h, 0);
          return;
        }
      }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.e
 * JD-Core Version:    0.6.0
 */