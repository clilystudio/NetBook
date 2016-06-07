package com.koushikdutta.async;

import android.util.Log;
import com.koushikdutta.async.a.b;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;

public class d
  implements s
{
  com.koushikdutta.async.a.d a;
  private x b;
  private SelectionKey c;
  private AsyncServer d;
  private v e = new v();
  private com.koushikdutta.async.d.a f;
  private boolean g;
  private b h;
  private com.koushikdutta.async.a.a i;
  private boolean j;
  private Exception k;
  private com.koushikdutta.async.a.a l;
  private boolean m = false;

  static
  {
    if (!d.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      n = bool;
      return;
    }
  }

  private void a(int paramInt)
  {
    if (paramInt > 0)
    {
      this.c.interestOps(5);
      return;
    }
    this.c.interestOps(1);
  }

  private void a(Exception paramException)
  {
    if (this.g);
    do
    {
      return;
      this.g = true;
    }
    while (this.i == null);
    this.i.a(paramException);
    this.i = null;
  }

  private void b(Exception paramException)
  {
    if (this.e.d())
      this.k = paramException;
    do
    {
      do
        return;
      while (this.j);
      this.j = true;
      if (this.l == null)
        continue;
      this.l.a(paramException);
      return;
    }
    while (paramException == null);
    Log.e("NIO", "Unhandled exception", paramException);
  }

  private void k()
  {
    this.c.cancel();
    try
    {
      this.b.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private void l()
  {
    if (this.e.d())
      Y.a(this, this.e);
  }

  public final void a()
  {
    this.b.a();
  }

  final void a(AsyncServer paramAsyncServer, SelectionKey paramSelectionKey)
  {
    this.d = paramAsyncServer;
    this.c = paramSelectionKey;
  }

  public final void a(com.koushikdutta.async.a.a parama)
  {
    this.i = parama;
  }

  public final void a(b paramb)
  {
    this.h = paramb;
  }

  public final void a(com.koushikdutta.async.a.d paramd)
  {
    this.a = paramd;
  }

  public final void a(v paramv)
  {
    if (this.d.a != Thread.currentThread())
      this.d.a(new e(this, paramv));
    do
      return;
    while (!this.b.b());
    try
    {
      paramv.c();
      ByteBuffer[] arrayOfByteBuffer = paramv.a();
      this.b.a(arrayOfByteBuffer);
      int i1 = arrayOfByteBuffer.length;
      for (int i2 = 0; i2 < i1; i2++)
        paramv.a(arrayOfByteBuffer[i2]);
      a(paramv.c());
      paramv.c();
      AsyncServer.b();
      return;
    }
    catch (IOException localIOException)
    {
      k();
      b(localIOException);
      a(localIOException);
    }
  }

  public final void a(ByteBuffer paramByteBuffer)
  {
    if (this.d.a != Thread.currentThread())
      this.d.a(new f(this, paramByteBuffer));
    while (true)
    {
      return;
      try
      {
        if (!this.b.b())
          continue;
        paramByteBuffer.remaining();
        this.b.a(paramByteBuffer);
        a(paramByteBuffer.remaining());
        paramByteBuffer.remaining();
        AsyncServer.b();
        return;
      }
      catch (IOException localIOException)
      {
        k();
        b(localIOException);
        a(localIOException);
      }
    }
  }

  final void a(SocketChannel paramSocketChannel, InetSocketAddress paramInetSocketAddress)
  {
    this.f = new com.koushikdutta.async.d.a();
    this.b = new X(paramSocketChannel);
  }

  final int b()
  {
    l();
    boolean bool1 = this.m;
    int i1 = 0;
    if (bool1)
      return i1;
    while (true)
    {
      ByteBuffer localByteBuffer;
      long l1;
      try
      {
        localByteBuffer = this.f.a();
        l1 = this.b.read(localByteBuffer);
        boolean bool2 = l1 < 0L;
        i1 = 0;
        if (bool2)
        {
          k();
          i2 = 1;
          if (l1 <= 0L)
            break label143;
          this.f.a(l1);
          localByteBuffer.flip();
          this.e.a(localByteBuffer);
          Y.a(this, this.e);
          if (i2 == 0)
            break;
          b(null);
          a(null);
          return i1;
        }
      }
      catch (Exception localException)
      {
        k();
        b(localException);
        a(localException);
        return i1;
      }
      i1 = (int)(l1 + 0L);
      int i2 = 0;
      continue;
      label143: v.c(localByteBuffer);
    }
  }

  public final void b(com.koushikdutta.async.a.a parama)
  {
    this.l = parama;
  }

  public final void c()
  {
    k();
    a(null);
  }

  public final b d()
  {
    return this.h;
  }

  public final com.koushikdutta.async.a.d e()
  {
    return this.a;
  }

  public final void f()
  {
    if (this.d.a != Thread.currentThread())
      this.d.a(new g(this));
    do
      return;
    while (this.m);
    this.m = true;
    try
    {
      this.c.interestOps(0xFFFFFFFE & this.c.interestOps());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void g()
  {
    if (this.d.a != Thread.currentThread())
      this.d.a(new h(this));
    while (true)
    {
      return;
      if (!this.m)
        continue;
      this.m = false;
      try
      {
        this.c.interestOps(0x1 | this.c.interestOps());
        label58: l();
        boolean bool1 = this.b.b();
        int i1 = 0;
        if (bool1)
        {
          boolean bool2 = this.c.isValid();
          i1 = 0;
          if (bool2)
            i1 = 1;
        }
        if (i1 != 0)
          continue;
        b(this.k);
        return;
      }
      catch (Exception localException)
      {
        break label58;
      }
    }
  }

  public final boolean h()
  {
    return this.m;
  }

  public final AsyncServer i()
  {
    return this.d;
  }

  public final String j()
  {
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.d
 * JD-Core Version:    0.6.0
 */