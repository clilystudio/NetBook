package com.koushikdutta.async;

import com.koushikdutta.async.a.b;

public class F
  implements b
{
  private StringBuilder a = new StringBuilder();
  private G b;

  static
  {
    if (!F.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public final void a(G paramG)
  {
    this.b = paramG;
  }

  public final void a(y paramy, v paramv)
  {
    while (true)
    {
      int i;
      if (paramv.c() > 0)
      {
        i = paramv.h();
        if (i == 10)
        {
          if ((!c) && (this.b == null))
            throw new AssertionError();
          this.b.a(this.a.toString());
          this.a = new StringBuilder();
        }
      }
      else
      {
        return;
      }
      this.a.append((char)i);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.F
 * JD-Core Version:    0.6.0
 */