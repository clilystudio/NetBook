package okio;

import java.io.IOException;
import java.io.InterruptedIOException;

public class a extends z
{
  private static a b;
  private boolean c;
  private a d;
  private long e;

  private static void a(a parama, long paramLong, boolean paramBoolean)
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (b != null)
          continue;
        b = new a();
        new d().start();
        long l1 = System.nanoTime();
        if ((paramLong == 0L) || (!paramBoolean))
          continue;
        parama.e = (l1 + Math.min(paramLong, parama.d() - l1));
        long l2 = parama.e - l1;
        locala = b;
        if ((locala.d != null) && (l2 >= locala.d.e - l1))
          break label185;
        parama.d = locala.d;
        locala.d = parama;
        if (locala != b)
          continue;
        a.class.notify();
        return;
        if (paramLong != 0L)
        {
          long l3 = l1 + paramLong;
          parama.e = l3;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      if (paramBoolean)
      {
        parama.e = parama.d();
        continue;
      }
      throw new AssertionError();
      label185: a locala = locala.d;
    }
  }

  private static boolean a(a parama)
  {
    monitorenter;
    try
    {
      a locala = b;
      if (locala != null)
        if (locala.d == parama)
        {
          locala.d = parama.d;
          parama.d = null;
        }
      for (int i = 0; ; i = 1)
      {
        return i;
        locala = locala.d;
        break;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static a h()
  {
    Object localObject1 = null;
    monitorenter;
    while (true)
    {
      a locala;
      try
      {
        locala = b.d;
        if (locala != null)
          continue;
        a.class.wait();
        return localObject1;
        long l1 = System.nanoTime();
        long l2 = locala.e - l1;
        if (l2 > 0L)
        {
          long l3 = l2 / 1000000L;
          a.class.wait(l3, (int)(l2 - 1000000L * l3));
          localObject1 = null;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      b.d = locala.d;
      locala.d = null;
      localObject1 = locala;
    }
  }

  final IOException a(IOException paramIOException)
  {
    if (!c_())
      return paramIOException;
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    localInterruptedIOException.initCause(paramIOException);
    return localInterruptedIOException;
  }

  protected void a()
  {
  }

  final void a(boolean paramBoolean)
  {
    if ((c_()) && (paramBoolean))
      throw new InterruptedIOException("timeout");
  }

  public final void c()
  {
    if (this.c)
      throw new IllegalStateException("Unbalanced enter/exit");
    long l = d_();
    boolean bool = e_();
    if ((l == 0L) && (!bool))
      return;
    this.c = true;
    a(this, l, bool);
  }

  public final boolean c_()
  {
    if (!this.c)
      return false;
    this.c = false;
    return a(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.a
 * JD-Core Version:    0.6.0
 */