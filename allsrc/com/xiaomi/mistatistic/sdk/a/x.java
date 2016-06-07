package com.xiaomi.mistatistic.sdk.a;

import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.a.a.c;

final class x
  implements c
{
  x(w paramw)
  {
  }

  public final void a(String paramString, long paramLong)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      w.a(this.a, paramLong);
      w.a(this.a, paramString);
      return;
    }
    w.a(false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.x
 * JD-Core Version:    0.6.0
 */