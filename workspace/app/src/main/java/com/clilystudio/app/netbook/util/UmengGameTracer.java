package com.clilystudio.app.netbook.util;

import android.content.Context;
import com.umeng.a.b;

public final class UmengGameTracer
{
  private Context a;
  private UmengGameTracer.From b;

  public UmengGameTracer(Context paramContext, UmengGameTracer.From paramFrom)
  {
    this.a = paramContext;
    this.b = paramFrom;
  }

  public final void a(String paramString)
  {
    b.a(this.a, this.b.build(), paramString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.UmengGameTracer
 * JD-Core Version:    0.6.2
 */