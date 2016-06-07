package com.koushikdutta.async.c;

import com.koushikdutta.async.b.g;
import com.koushikdutta.async.v;

final class d
  implements com.koushikdutta.async.a.a
{
  d(a parama, g paramg, v paramv)
  {
  }

  public final void a(Exception paramException)
  {
    if (paramException != null)
    {
      this.a.b(paramException, null);
      return;
    }
    try
    {
      this.a.b(null, this.b);
      return;
    }
    catch (Exception localException)
    {
      this.a.b(localException, null);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.c.d
 * JD-Core Version:    0.6.0
 */