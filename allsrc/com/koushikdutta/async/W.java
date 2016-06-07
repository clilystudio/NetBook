package com.koushikdutta.async;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ServerSocketChannel;

class W extends x
{
  ServerSocketChannel a;

  static
  {
    if (!W.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      return;
    }
  }

  W(ServerSocketChannel paramServerSocketChannel)
  {
    super(paramServerSocketChannel);
    this.a = paramServerSocketChannel;
  }

  public final int a(ByteBuffer paramByteBuffer)
  {
    if (!b)
      throw new AssertionError();
    throw new IOException("Can't write ServerSocketChannel");
  }

  public final int a(ByteBuffer[] paramArrayOfByteBuffer)
  {
    if (!b)
      throw new AssertionError();
    throw new IOException("Can't write ServerSocketChannel");
  }

  public final void a()
  {
  }

  public final boolean b()
  {
    if (!b)
      throw new AssertionError();
    return false;
  }

  public int read(ByteBuffer paramByteBuffer)
  {
    if (!b)
      throw new AssertionError();
    throw new IOException("Can't read ServerSocketChannel");
  }

  public long read(ByteBuffer[] paramArrayOfByteBuffer)
  {
    if (!b)
      throw new AssertionError();
    throw new IOException("Can't read ServerSocketChannel");
  }

  public long read(ByteBuffer[] paramArrayOfByteBuffer, int paramInt1, int paramInt2)
  {
    if (!b)
      throw new AssertionError();
    throw new IOException("Can't read ServerSocketChannel");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.W
 * JD-Core Version:    0.6.0
 */