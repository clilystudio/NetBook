package com.clilystudio.app.netbook.util;

import android.content.Context;
import com.arcsoft.hpay100.a.a;

public final class V
{
  private Context a;
  private int[][] b = { { 7, 30 }, { 14, 60 }, { 30, 120 }, { 45, 180 } };

  public V(Context paramContext)
  {
    this.a = paramContext;
  }

  public final long a()
  {
    return a.c(this.a, "key_last_share_time", 0L);
  }

  public final void a(long paramLong)
  {
    a.b(this.a, "key_last_share_time", paramLong);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.V
 * JD-Core Version:    0.6.2
 */