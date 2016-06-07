package com.squareup.a;

import android.os.Looper;

final class o
  implements m
{
  public final void a(b paramb)
  {
    if (Looper.myLooper() != Looper.getMainLooper())
      throw new IllegalStateException("Event bus " + paramb + " accessed from non-main thread " + Looper.myLooper());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.a.o
 * JD-Core Version:    0.6.0
 */