package org.apache.thrift.protocol;

public final class c
{
  public final byte a;
  public final short b;
  private String c;

  public c()
  {
    this("", 0, 0);
  }

  public c(String paramString, byte paramByte, short paramShort)
  {
    this.c = paramString;
    this.a = paramByte;
    this.b = paramShort;
  }

  public final String toString()
  {
    return "<TField name:'" + this.c + "' type:" + this.a + " field-id:" + this.b + ">";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.protocol.c
 * JD-Core Version:    0.6.0
 */