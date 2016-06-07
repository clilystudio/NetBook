package org.apache.thrift.protocol;

import org.apache.thrift.transport.c;

public class a$a
  implements h
{
  protected boolean a = false;
  protected boolean b = true;
  protected int c;

  public a$a()
  {
    this(false, true);
  }

  public a$a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramBoolean1, paramBoolean2, 0);
  }

  public a$a(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.c = paramInt;
  }

  public f a(c paramc)
  {
    a locala = new a(paramc, this.a, this.b);
    if (this.c != 0)
      locala.b(this.c);
    return locala;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.protocol.a.a
 * JD-Core Version:    0.6.0
 */