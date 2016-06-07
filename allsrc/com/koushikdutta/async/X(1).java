package com.koushikdutta.async;

import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;

final class X extends x
{
  private SocketChannel a;

  X(SocketChannel paramSocketChannel)
  {
    super(paramSocketChannel);
    this.a = paramSocketChannel;
  }

  public final int a(ByteBuffer paramByteBuffer)
  {
    return this.a.write(paramByteBuffer);
  }

  public final int a(ByteBuffer[] paramArrayOfByteBuffer)
  {
    return (int)this.a.write(paramArrayOfByteBuffer);
  }

  public final void a()
  {
    try
    {
      this.a.socket().shutdownOutput();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean b()
  {
    return this.a.isConnected();
  }

  public final int read(ByteBuffer paramByteBuffer)
  {
    return this.a.read(paramByteBuffer);
  }

  public final long read(ByteBuffer[] paramArrayOfByteBuffer)
  {
    return this.a.read(paramArrayOfByteBuffer);
  }

  public final long read(ByteBuffer[] paramArrayOfByteBuffer, int paramInt1, int paramInt2)
  {
    return this.a.read(paramArrayOfByteBuffer, paramInt1, paramInt2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.X
 * JD-Core Version:    0.6.0
 */