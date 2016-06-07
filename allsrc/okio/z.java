package okio;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class z
{
  public static final z a = new A();
  private boolean b;
  private long c;
  private long d;

  public z a(long paramLong)
  {
    this.b = true;
    this.c = paramLong;
    return this;
  }

  public z a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("timeout < 0: " + paramLong);
    if (paramTimeUnit == null)
      throw new IllegalArgumentException("unit == null");
    this.d = paramTimeUnit.toNanos(paramLong);
    return this;
  }

  public long d()
  {
    if (!this.b)
      throw new IllegalStateException("No deadline");
    return this.c;
  }

  public long d_()
  {
    return this.d;
  }

  public boolean e_()
  {
    return this.b;
  }

  public z f()
  {
    this.b = false;
    return this;
  }

  public z f_()
  {
    this.d = 0L;
    return this;
  }

  public void g()
  {
    if (Thread.interrupted())
      throw new InterruptedIOException("thread interrupted");
    if ((this.b) && (this.c - System.nanoTime() <= 0L))
      throw new InterruptedIOException("deadline reached");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.z
 * JD-Core Version:    0.6.0
 */