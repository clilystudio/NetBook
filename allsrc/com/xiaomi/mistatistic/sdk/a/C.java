package com.xiaomi.mistatistic.sdk.a;

import android.app.Activity;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;

final class C
  implements j
{
  C(A paramA, Activity paramActivity, String paramString)
  {
  }

  public final void a()
  {
    long l1 = System.currentTimeMillis();
    long l2 = a.e(this.a.getApplicationContext(), "session_begin", 0L);
    long l3 = a.e(this.a.getApplicationContext(), "last_deactivate", 0L);
    Object localObject1 = a.f(this.a.getApplicationContext(), "pv_path", "");
    if (l2 <= 0L)
    {
      a.f(this.a.getApplicationContext(), "session_begin", l1);
      if ((l3 > 0L) && (l1 - l3 > A.c()))
      {
        A.a(this.c, this.a, l2, l3);
        if (TextUtils.isEmpty((CharSequence)localObject1))
          break label289;
        A.a(this.c, this.a, (String)localObject1);
      }
    }
    label289: for (Object localObject2 = ""; ; localObject2 = localObject1)
    {
      a.f(this.a.getApplicationContext(), "session_begin", l1);
      localObject1 = localObject2;
      if (TextUtils.isEmpty(this.b));
      for (String str1 = this.a.getClass().getName(); ; str1 = this.b)
      {
        String str2 = this.a.getPackageName();
        if (str1.startsWith(str2))
          str1 = str1.replace(str2, "");
        if (!((String)localObject1).endsWith(str1))
        {
          String str3 = A.a(this.c, (String)localObject1, str1);
          a.g(this.a.getApplicationContext(), "pv_path", str3);
        }
        return;
        if (l3 > 0L)
          break;
        a.f(this.a.getApplicationContext(), "session_begin", l1);
        if (TextUtils.isEmpty((CharSequence)localObject1))
          break;
        A.a(this.c, this.a, (String)localObject1);
        localObject1 = "";
        break;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.C
 * JD-Core Version:    0.6.0
 */