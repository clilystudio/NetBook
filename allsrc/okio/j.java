package okio;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class j
  implements x
{
  private final h a;
  private final Deflater b;
  private boolean c;

  private j(h paramh, Deflater paramDeflater)
  {
    if (paramh == null)
      throw new IllegalArgumentException("source == null");
    if (paramDeflater == null)
      throw new IllegalArgumentException("inflater == null");
    this.a = paramh;
    this.b = paramDeflater;
  }

  public j(x paramx, Deflater paramDeflater)
  {
    this(o.a(paramx), paramDeflater);
  }

  @IgnoreJRERequirement
  private void a(boolean paramBoolean)
  {
    f localf = this.a.c();
    v localv;
    label115: 
    do
    {
      localv = localf.e(1);
      if (paramBoolean);
      for (int i = this.b.deflate(localv.a, localv.c, 2048 - localv.c, 2); ; i = this.b.deflate(localv.a, localv.c, 2048 - localv.c))
      {
        if (i <= 0)
          break label115;
        localv.c = (i + localv.c);
        localf.b += i;
        this.a.r();
        break;
      }
    }
    while (!this.b.needsInput());
    if (localv.b == localv.c)
    {
      localf.a = localv.a();
      w.a(localv);
    }
  }

  public final z a()
  {
    return this.a.a();
  }

  public final void a_(f paramf, long paramLong)
  {
    B.a(paramf.b, 0L, paramLong);
    while (paramLong > 0L)
    {
      v localv = paramf.a;
      int i = (int)Math.min(paramLong, localv.c - localv.b);
      this.b.setInput(localv.a, localv.b, i);
      a(false);
      paramf.b -= i;
      localv.b = (i + localv.b);
      if (localv.b == localv.c)
      {
        paramf.a = localv.a();
        w.a(localv);
      }
      paramLong -= i;
    }
  }

  public final void close()
  {
    if (this.c);
    while (true)
    {
      return;
      Object localObject1 = null;
      try
      {
        this.b.finish();
        a(false);
      }
      catch (Throwable localObject3)
      {
        try
        {
          this.b.end();
          localObject2 = localObject1;
        }
        catch (Throwable localObject3)
        {
          try
          {
            while (true)
            {
              Object localObject2;
              this.a.close();
              this.c = true;
              if (localObject2 == null)
                break;
              B.a(localObject2);
              return;
              localThrowable1 = localThrowable1;
              localObject1 = localThrowable1;
              continue;
              localThrowable2 = localThrowable2;
              if (localObject1 == null)
                continue;
              localObject3 = localObject1;
            }
          }
          catch (Throwable localThrowable3)
          {
            while (true)
            {
              if (localObject3 != null)
                continue;
              Object localObject3 = localThrowable3;
            }
          }
        }
      }
    }
  }

  public final void flush()
  {
    a(true);
    this.a.flush();
  }

  public final String toString()
  {
    return "DeflaterSink(" + this.a + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.j
 * JD-Core Version:    0.6.0
 */