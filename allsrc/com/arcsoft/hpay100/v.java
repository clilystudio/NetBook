package com.arcsoft.hpay100;

import android.support.v7.app.f;
import android.text.TextUtils;
import android.widget.TextView;
import com.arcsoft.hpay100.config.HPaySMS;
import com.arcsoft.hpay100.config.b;
import com.arcsoft.hpay100.config.k;
import org.json.JSONException;
import org.json.JSONObject;

final class v
  implements k
{
  private int a = 0;

  public v(HPaySdkActivity paramHPaySdkActivity, int paramInt)
  {
  }

  public final void a(String paramString)
  {
    HPaySdkActivity.b(this.b);
    if (TextUtils.isEmpty(paramString))
    {
      HPaySdkActivity.k(this.b).setText("获取验证码失败，请重试");
      HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
      com.arcsoft.hpay100.config.a.a(this.b.getApplicationContext(), HPaySdkActivity.e(this.b), "", HPaySdkActivity.a(), HPaySdkActivity.f(this.b), "", "", HPaySdkActivity.g(this.b), "2", "4001", this.a);
      return;
    }
    try
    {
      localJSONObject = new JSONObject(paramString);
      if (localJSONObject == null)
      {
        HPaySdkActivity.k(this.b).setText("获取验证码失败，请重试");
        HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
        com.arcsoft.hpay100.config.a.a(this.b.getApplicationContext(), HPaySdkActivity.e(this.b), "", HPaySdkActivity.a(), HPaySdkActivity.f(this.b), "", "", HPaySdkActivity.g(this.b), "2", "4002", this.a);
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      JSONObject localJSONObject;
      while (true)
      {
        localJSONException.printStackTrace();
        localJSONObject = null;
      }
      int i = localJSONObject.optInt("status", -1);
      String str1 = localJSONObject.optString("msg", "");
      if (i != 0)
      {
        if (!TextUtils.isEmpty(str1))
          HPaySdkActivity.k(this.b).setText(str1);
        while (true)
        {
          HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
          com.arcsoft.hpay100.config.a.a(this.b.getApplicationContext(), HPaySdkActivity.e(this.b), "", HPaySdkActivity.a(), HPaySdkActivity.f(this.b), "", "", HPaySdkActivity.g(this.b), "2", i, this.a);
          return;
          HPaySdkActivity.k(this.b).setText("获取验证码失败，请重试");
        }
      }
      String str2 = localJSONObject.optString("res", "");
      if (TextUtils.isEmpty(str2))
      {
        HPaySdkActivity.k(this.b).setText("获取验证码失败，请重试");
        HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
        com.arcsoft.hpay100.config.a.a(this.b.getApplicationContext(), HPaySdkActivity.e(this.b), "", HPaySdkActivity.a(), HPaySdkActivity.f(this.b), "", "", HPaySdkActivity.g(this.b), "2", "4003", this.a);
        return;
      }
      try
      {
        String str4 = f.b(str2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a");
        str3 = str4;
        com.arcsoft.hpay100.a.a.b("dalongTest", "resdes:" + str3);
        if (TextUtils.isEmpty(str3))
        {
          HPaySdkActivity.k(this.b).setText("获取验证码失败，请重试");
          HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
          com.arcsoft.hpay100.config.a.a(this.b.getApplicationContext(), HPaySdkActivity.e(this.b), "", HPaySdkActivity.a(), HPaySdkActivity.f(this.b), "", "", HPaySdkActivity.g(this.b), "2", "4004", this.a);
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
        HPaySdkActivity.a(this.b, com.arcsoft.hpay100.config.a.a(str3));
        if (HPaySdkActivity.h(this.b) == null)
        {
          HPaySdkActivity.k(this.b).setText("获取验证码失败，请重试");
          HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
          com.arcsoft.hpay100.config.a.a(this.b.getApplicationContext(), HPaySdkActivity.e(this.b), "", HPaySdkActivity.a(), HPaySdkActivity.f(this.b), "", "", HPaySdkActivity.g(this.b), "2", "4005", this.a);
          return;
        }
        HPaySdkActivity.h(this.b).mOrderidAPP = HPaySdkActivity.e(this.b);
        HPaySdkActivity.h(this.b).mPayName = HPaySdkActivity.i(this.b);
        HPaySdkActivity.h(this.b).mPayId = HPaySdkActivity.f(this.b);
        b.a(new t(this.b, 0));
        HPaySdkActivity.a(this.b, false);
        HPaySdkActivity.j(this.b);
        com.arcsoft.hpay100.config.a.a(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "1", "", this.a);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.v
 * JD-Core Version:    0.6.0
 */