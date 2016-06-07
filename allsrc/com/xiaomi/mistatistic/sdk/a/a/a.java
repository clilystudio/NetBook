package com.xiaomi.mistatistic.sdk.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.xiaomi.mistatistic.sdk.a.j;
import com.xiaomi.mistatistic.sdk.a.l;
import com.xiaomi.mistatistic.sdk.a.r;
import com.xiaomi.mistatistic.sdk.a.w;
import com.xiaomi.mistatistic.sdk.b.d;
import com.xiaomi.mistatistic.sdk.b.f;
import java.util.Locale;

public final class a
  implements j
{
  public final void a()
  {
    Context localContext = r.b();
    int i;
    int j;
    if (!com.arcsoft.hpay100.a.a.x(localContext, "basic_info_reported"))
    {
      r.a(new d("mistat_basic", "new"));
      r.a(new f("mistat_basic", "model", Build.MODEL));
      r.a(new f("mistat_basic", "OS", "android" + Build.VERSION.SDK_INT));
      TelephonyManager localTelephonyManager = (TelephonyManager)localContext.getSystemService("phone");
      if (!TextUtils.isEmpty(localTelephonyManager.getNetworkOperatorName()))
        r.a(new f("mistat_basic", "operator", localTelephonyManager.getSimOperator()));
      String str3 = l.b(localContext);
      if (!TextUtils.isEmpty(str3))
        r.a(new f("mistat_basic", "IMEI", str3));
      DisplayMetrics localDisplayMetrics = localContext.getResources().getDisplayMetrics();
      if (localDisplayMetrics != null)
      {
        i = localDisplayMetrics.widthPixels;
        j = localDisplayMetrics.heightPixels;
        if (i >= j)
          break label312;
      }
    }
    label312: for (String str4 = i + "x" + j; ; str4 = j + "x" + i)
    {
      r.a(new f("mistat_basic", "resolution", str4));
      r.a(new f("mistat_basic", "locale", Locale.getDefault().toString()));
      com.arcsoft.hpay100.a.a.d(localContext, "basic_info_reported", 1);
      new w().a();
      String str1 = r.f();
      String str2 = com.arcsoft.hpay100.a.a.f(localContext, "basic_info_version", "");
      if ((!TextUtils.isEmpty(str2)) && (!str2.equals(str1)))
        r.a(new d("mistat_basic", "upgrade"));
      com.arcsoft.hpay100.a.a.g(localContext, "basic_info_version", str1);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.a.a
 * JD-Core Version:    0.6.0
 */