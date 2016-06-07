package com.koushikdutta.async;

import com.koushikdutta.async.a.b;
import java.nio.ByteBuffer;

final class T extends U
{
  private byte b;
  private b c;

  public T(byte paramByte, b paramb)
  {
    super(1);
    this.b = paramByte;
    this.c = paramb;
  }

  public final U a(y paramy, v paramv)
  {
    v localv = new v();
    int i = 1;
    while (true)
    {
      ByteBuffer localByteBuffer;
      if (paramv.a.size() > 0)
      {
        localByteBuffer = paramv.k();
        localByteBuffer.mark();
        int j = 0;
        if (localByteBuffer.remaining() > 0)
        {
          if (localByteBuffer.get() == this.b);
          for (int k = 1; ; k = 0)
          {
            if (k != 0)
              break label80;
            j++;
            i = k;
            break;
          }
          label80: i = k;
        }
        localByteBuffer.reset();
        if (i != 0)
        {
          paramv.b(localByteBuffer);
          paramv.a(localv, j);
          paramv.h();
        }
      }
      else
      {
        this.c.a(paramy, localv);
        if (i != 0)
          this = null;
        return this;
      }
      localv.a(localByteBuffer);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.T
 * JD-Core Version:    0.6.0
 */