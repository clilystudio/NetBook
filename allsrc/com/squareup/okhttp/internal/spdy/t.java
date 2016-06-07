package com.squareup.okhttp.internal.spdy;

import java.util.concurrent.CountDownLatch;

public final class t
{
  private final CountDownLatch a;
  private long b;
  private long c;

  final void a()
  {
    if (this.b != -1L)
      throw new IllegalStateException();
    this.b = System.nanoTime();
  }

  final void b()
  {
    if ((this.c != -1L) || (this.b == -1L))
      throw new IllegalStateException();
    this.c = System.nanoTime();
    this.a.countDown();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.t
 * JD-Core Version:    0.6.0
 */