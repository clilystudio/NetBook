package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.C;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;

public class c extends C
{
  private long a;
  private long b;
  private v c = new v();

  static
  {
    if (!c.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      d = bool;
      return;
    }
  }

  public c(long paramLong)
  {
    this.a = paramLong;
  }

  public final void a(y paramy, v paramv)
  {
    if ((!d) && (this.b >= this.a))
      throw new AssertionError();
    int i = paramv.c();
    long l = Math.min(this.a - this.b, i);
    paramv.a(this.c, (int)l);
    int j = this.c.c();
    super.a(paramy, this.c);
    this.b += j - this.c.c();
    this.c.a(paramv);
    if (this.b == this.a)
      a_(null);
  }

  protected final void a_(Exception paramException)
  {
    if ((paramException == null) && (this.b != this.a))
      paramException = new PrematureDataEndException("End of data reached before content length was read");
    super.a_(paramException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.c
 * JD-Core Version:    0.6.0
 */