package com.koushikdutta.async;

import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.channels.spi.AbstractSelectableChannel;

abstract class x
  implements ReadableByteChannel, ScatteringByteChannel
{
  private AbstractSelectableChannel a;

  x(AbstractSelectableChannel paramAbstractSelectableChannel)
  {
    paramAbstractSelectableChannel.configureBlocking(false);
    this.a = paramAbstractSelectableChannel;
  }

  public abstract int a(ByteBuffer paramByteBuffer);

  public abstract int a(ByteBuffer[] paramArrayOfByteBuffer);

  public abstract void a();

  public abstract boolean b();

  public void close()
  {
    this.a.close();
  }

  public boolean isOpen()
  {
    return this.a.isOpen();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.x
 * JD-Core Version:    0.6.0
 */