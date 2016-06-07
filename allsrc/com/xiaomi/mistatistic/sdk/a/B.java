package com.xiaomi.mistatistic.sdk.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;

final class B extends Handler
{
  B(A paramA, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 31415927:
    }
    String str;
    do
    {
      return;
      long l1 = a.e(r.b(), "session_begin", 0L);
      long l2 = a.e(r.b(), "last_deactivate", 0L);
      str = a.f(r.b(), "pv_path", "");
      if ((l1 <= 0L) || (l2 <= l1))
        continue;
      A.a(this.a, r.b(), l1, l2);
    }
    while (TextUtils.isEmpty(str));
    A.a(this.a, r.b(), str);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.B
 * JD-Core Version:    0.6.0
 */