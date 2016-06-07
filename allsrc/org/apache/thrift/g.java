package org.apache.thrift;

import java.io.ByteArrayOutputStream;
import org.apache.thrift.protocol.a.a;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.transport.a;

public final class g
{
  private final ByteArrayOutputStream a = new ByteArrayOutputStream();
  private final a b = new a(this.a);
  private f c;

  public g()
  {
    this(new a.a());
  }

  public g(h paramh)
  {
    this.c = paramh.a(this.b);
  }

  public final byte[] a(b paramb)
  {
    this.a.reset();
    paramb.b(this.c);
    return this.a.toByteArray();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.g
 * JD-Core Version:    0.6.0
 */