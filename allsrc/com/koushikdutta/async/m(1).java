package com.koushikdutta.async;

import com.arcsoft.hpay100.a.a;
import java.io.Closeable;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;

final class m
  implements r
{
  m(l paraml, ServerSocketChannel paramServerSocketChannel, W paramW, SelectionKey paramSelectionKey)
  {
  }

  public final void a()
  {
    Closeable[] arrayOfCloseable = new Closeable[1];
    arrayOfCloseable[0] = this.a;
    a.a(arrayOfCloseable);
    try
    {
      this.b.cancel();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.m
 * JD-Core Version:    0.6.0
 */