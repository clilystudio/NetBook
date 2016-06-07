package org.apache.thrift;

import org.apache.thrift.protocol.a.a;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;

public class d
{
  private final f a;
  private final org.apache.thrift.transport.b b = new org.apache.thrift.transport.b();

  public d()
  {
    this(new a.a());
  }

  public d(h paramh)
  {
    this.a = paramh.a(this.b);
  }

  public void a(b paramb, byte[] paramArrayOfByte)
  {
    try
    {
      this.b.c(paramArrayOfByte, 0, paramArrayOfByte.length);
      paramb.a(this.a);
      return;
    }
    finally
    {
      this.a.r();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.d
 * JD-Core Version:    0.6.0
 */