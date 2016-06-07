package com.koushikdutta.async;

import java.nio.ByteBuffer;

public class E extends t
{
  static
  {
    if (!E.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public E(A paramA)
  {
    super(paramA);
    a(0);
  }

  public final void a(v paramv)
  {
    if ((this.a.d()) && (this.b != 2147483647));
    do
    {
      return;
      v localv = b(paramv);
      if ((!c) && (paramv != null) && (localv != paramv) && (!paramv.b()))
        throw new AssertionError();
      super.a(localv, true);
    }
    while (paramv == null);
    paramv.j();
  }

  public final void a(ByteBuffer paramByteBuffer)
  {
    if ((this.a.d()) && (this.b != 2147483647))
      return;
    v localv = new v();
    byte[] arrayOfByte = new byte[paramByteBuffer.remaining()];
    paramByteBuffer.get(arrayOfByte);
    if ((!c) && (paramByteBuffer.remaining() != 0))
      throw new AssertionError();
    localv.a(ByteBuffer.wrap(arrayOfByte));
    super.a(b(localv), true);
  }

  public v b(v paramv)
  {
    return paramv;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.E
 * JD-Core Version:    0.6.0
 */