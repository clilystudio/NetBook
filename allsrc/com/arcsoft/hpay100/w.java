package com.arcsoft.hpay100;

import android.support.v7.app.f;
import android.text.TextUtils;
import android.widget.TextView;
import com.arcsoft.hpay100.config.HPaySMS;
import com.arcsoft.hpay100.config.i;
import com.arcsoft.hpay100.config.k;
import org.json.JSONException;
import org.json.JSONObject;

final class w
  implements k
{
  private int a = 0;

  public w(HPaySdkActivity paramHPaySdkActivity, int paramInt)
  {
  }

  public final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      HPaySdkActivity.b(this.b);
      HPaySdkActivity.k(this.b).setText("验证码提交失败,请重新输入验证码");
      HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
      if (HPaySdkActivity.h(this.b) != null)
        com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "2", "5001", this.a);
    }
    int i;
    do
      while (true)
      {
        return;
        i locali = com.arcsoft.hpay100.config.a.b(paramString);
        if (locali == null)
        {
          HPaySdkActivity.b(this.b);
          HPaySdkActivity.k(this.b).setText("验证码提交失败，请重新输入验证码");
          HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
          if (HPaySdkActivity.h(this.b) == null)
            continue;
          com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "2", "5002", this.a);
          return;
        }
        if (locali.a != 0)
        {
          HPaySdkActivity.b(this.b);
          String str4 = locali.b;
          if (!TextUtils.isEmpty(str4))
            HPaySdkActivity.k(this.b).setText(str4);
          while (true)
          {
            HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
            if (HPaySdkActivity.h(this.b) == null)
              break;
            com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "2", locali.a, this.a);
            return;
            HPaySdkActivity.k(this.b).setText("获取验证码失败，请重试");
          }
        }
        if (TextUtils.isEmpty(locali.c))
        {
          HPaySdkActivity.b(this.b);
          HPaySdkActivity.k(this.b).setText("验证码提交失败,请重新输入验证码");
          HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
          if (HPaySdkActivity.h(this.b) == null)
            continue;
          com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "2", "5004", this.a);
          return;
        }
        try
        {
          String str3 = f.b(locali.c, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a");
          str1 = str3;
          com.arcsoft.hpay100.a.a.b("dalongTest", "resdes:" + str1);
          if (TextUtils.isEmpty(str1))
          {
            HPaySdkActivity.b(this.b);
            HPaySdkActivity.k(this.b).setText("验证码提交失败,请重新输入验证码");
            HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
            if (HPaySdkActivity.h(this.b) == null)
              continue;
            com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "2", "5005", this.a);
            return;
          }
        }
        catch (Exception localException)
        {
          String str1;
          while (true)
          {
            localException.printStackTrace();
            str1 = "";
          }
          try
          {
            JSONObject localJSONObject1 = new JSONObject(str1);
            localJSONObject2 = localJSONObject1;
            if (localJSONObject2 == null)
            {
              HPaySdkActivity.b(this.b);
              HPaySdkActivity.k(this.b).setText("验证码提交失败，请重新输入验证码");
              HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
              if (HPaySdkActivity.h(this.b) == null)
                continue;
              com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "2", "5006", this.a);
              return;
            }
          }
          catch (JSONException localJSONException)
          {
            JSONObject localJSONObject2;
            while (true)
            {
              localJSONException.printStackTrace();
              localJSONObject2 = null;
            }
            i = localJSONObject2.optInt("code", -1);
            String str2 = localJSONObject2.optString("msg", "");
            if ((i == 0) || (i == 200))
            {
              HPaySdkActivity.b(this.b);
              z localz = com.arcsoft.hpay100.config.a.a(HPaySdkActivity.h(this.b));
              if (HPaySdkActivity.a != null)
                HPaySdkActivity.a.a(localz);
              this.b.finish();
              if (HPaySdkActivity.h(this.b) == null)
                continue;
              com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "1", "", this.a);
              return;
            }
            HPaySdkActivity.b(this.b);
            HPaySdkActivity.k(this.b).setText(str2);
            HPaySdkActivity.a(this.b, HPaySdkActivity.l(this.b), false);
          }
        }
      }
    while (HPaySdkActivity.h(this.b) == null);
    com.arcsoft.hpay100.config.a.b(this.b.getApplicationContext(), HPaySdkActivity.h(this.b).mOrderidAPP, HPaySdkActivity.h(this.b).mOrderidHR, HPaySdkActivity.h(this.b).mScheme, HPaySdkActivity.h(this.b).mPayId, HPaySdkActivity.h(this.b).mChType, HPaySdkActivity.h(this.b).mChID, HPaySdkActivity.h(this.b).mAmount, "2", i, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.w
 * JD-Core Version:    0.6.0
 */