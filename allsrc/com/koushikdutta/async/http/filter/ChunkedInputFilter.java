package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.C;
import com.koushikdutta.async.Y;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;

public class ChunkedInputFilter extends C
{
  private int a = 0;
  private int b = 0;
  private ChunkedInputFilter.State c = ChunkedInputFilter.State.CHUNK_LEN;

  static
  {
    if (!ChunkedInputFilter.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      d = bool;
      return;
    }
  }

  private boolean a(char paramChar1, char paramChar2)
  {
    if (paramChar1 != paramChar2)
    {
      a_(new ChunkedDataException(paramChar2 + " was expected, got " + paramChar1));
      return false;
    }
    return true;
  }

  public final void a(y paramy, v paramv)
  {
    while (true)
    {
      char c1;
      try
      {
        if (paramv.c() > 0)
          switch (a.a[this.c.ordinal()])
          {
          case 1:
            c1 = paramv.f();
            if (c1 == '\r')
            {
              this.c = ChunkedInputFilter.State.CHUNK_LEN_CR;
              this.b = this.a;
              continue;
            }
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          }
      }
      catch (Exception localException)
      {
        a_(localException);
      }
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              this.a <<= 4;
              if ((c1 >= 'a') && (c1 <= 'f'))
              {
                this.a += 10 + (c1 - 'a');
                break;
              }
              if ((c1 >= '0') && (c1 <= '9'))
              {
                this.a += c1 - '0';
                break;
              }
              if ((c1 >= 'A') && (c1 <= 'F'))
              {
                this.a += 10 + (c1 - 'A');
                break;
              }
              a_(new ChunkedDataException("invalid chunk length: " + c1));
              return;
            }
            while (!a(paramv.f(), '\n'));
            this.c = ChunkedInputFilter.State.CHUNK;
            break;
            int i = paramv.c();
            int j = Math.min(this.b, i);
            this.b -= j;
            if (this.b == 0)
              this.c = ChunkedInputFilter.State.CHUNK_CR;
            if (j == 0)
              break;
            v localv = paramv.a(j);
            int k = paramv.c();
            if ((!d) && (i != localv.c() + paramv.c()))
              throw new AssertionError();
            if ((!d) && (j != localv.c()))
              throw new AssertionError();
            Y.a(this, localv);
            if ((d) || (k == paramv.c()))
              break;
            throw new AssertionError();
          }
          while (!a(paramv.f(), '\r'));
          this.c = ChunkedInputFilter.State.CHUNK_CRLF;
          break;
        }
        while (!a(paramv.f(), '\n'));
        if (this.a > 0)
          this.c = ChunkedInputFilter.State.CHUNK_LEN;
        while (true)
        {
          this.a = 0;
          break;
          this.c = ChunkedInputFilter.State.COMPLETE;
          a_(null);
        }
      }
      while (d);
      throw new AssertionError();
    }
  }

  protected final void a_(Exception paramException)
  {
    if ((paramException == null) && (this.c != ChunkedInputFilter.State.COMPLETE))
      paramException = new ChunkedDataException("chunked input ended before final chunk");
    super.a_(paramException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.ChunkedInputFilter
 * JD-Core Version:    0.6.0
 */