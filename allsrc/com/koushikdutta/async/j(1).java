package com.koushikdutta.async;

import java.util.PriorityQueue;

final class j extends Thread
{
  j(AsyncServer paramAsyncServer, String paramString, V paramV, PriorityQueue paramPriorityQueue)
  {
    super(paramString);
  }

  public final void run()
  {
    AsyncServer.a(this.c, this.a, this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.j
 * JD-Core Version:    0.6.0
 */