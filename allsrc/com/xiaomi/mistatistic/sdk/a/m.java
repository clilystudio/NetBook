package com.xiaomi.mistatistic.sdk.a;

import android.content.Context;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;

final class m
  implements j
{
  private Context a;

  public m(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a()
  {
    String str = a.f(this.a, "device_id", "");
    if (TextUtils.isEmpty(str))
    {
      l.a(l.a(this.a));
      a.g(this.a, "device_id", l.b());
      return;
    }
    l.a(str);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.m
 * JD-Core Version:    0.6.0
 */