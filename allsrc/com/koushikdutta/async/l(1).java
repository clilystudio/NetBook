package com.koushikdutta.async;

import com.arcsoft.hpay100.a.a;
import com.koushikdutta.async.a.c;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;

final class l
  implements Runnable
{
  l(AsyncServer paramAsyncServer, InetAddress paramInetAddress, int paramInt, c paramc, o paramo)
  {
  }

  public final void run()
  {
    try
    {
      localServerSocketChannel2 = ServerSocketChannel.open();
    }
    catch (IOException localIOException3)
    {
      try
      {
        localW = new W(localServerSocketChannel2);
        try
        {
          if (this.a == null);
          for (InetSocketAddress localInetSocketAddress = new InetSocketAddress(this.b); ; localInetSocketAddress = new InetSocketAddress(this.a, this.b))
          {
            localServerSocketChannel2.socket().bind(localInetSocketAddress);
            Selector localSelector = AsyncServer.a(this.e).a();
            SelectionKey localSelectionKey = localW.a.register(localSelector, 16);
            localSelectionKey.attach(this.c);
            c localc = this.c;
            o localo = this.d;
            m localm = new m(this, localServerSocketChannel2, localW, localSelectionKey);
            localo.a = localm;
            localc.a(localm);
            return;
          }
        }
        catch (IOException localIOException1)
        {
          localServerSocketChannel1 = localServerSocketChannel2;
        }
        while (true)
        {
          a.a(new Closeable[] { localW, localServerSocketChannel1 });
          this.c.a(localIOException1);
          return;
          localIOException2 = localIOException2;
          localW = null;
          localServerSocketChannel1 = null;
        }
      }
      catch (IOException localIOException3)
      {
        while (true)
        {
          ServerSocketChannel localServerSocketChannel2;
          ServerSocketChannel localServerSocketChannel1 = localServerSocketChannel2;
          W localW = null;
        }
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.l
 * JD-Core Version:    0.6.0
 */