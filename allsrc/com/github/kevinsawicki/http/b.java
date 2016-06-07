package com.github.kevinsawicki.http;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract class b<V> extends e<V>
{
  private final Closeable a;
  private final boolean b;

  protected b(Closeable paramCloseable, boolean paramBoolean)
  {
    this.a = paramCloseable;
    this.b = paramBoolean;
  }

  protected final void b()
  {
    if ((this.a instanceof Flushable))
      ((Flushable)this.a).flush();
    if (this.b);
    try
    {
      this.a.close();
      return;
      this.a.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.github.kevinsawicki.http.b
 * JD-Core Version:    0.6.0
 */