package com.squareup.okhttp;

import android.support.design.widget.K;
import java.util.List;

final class g
  implements y
{
  private final int a;
  private final boolean b;

  g(f paramf, int paramInt, C paramC, boolean paramBoolean)
  {
    this.a = paramInt;
    this.b = paramBoolean;
  }

  public final I a(C paramC)
  {
    if (this.a < f.b(this.c).u().size())
    {
      new g(this.c, 1 + this.a, paramC, this.b);
      return ((K)f.b(this.c).u().get(this.a)).j();
    }
    return this.c.a(paramC, this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.g
 * JD-Core Version:    0.6.0
 */