package org.mozilla.universalchardet.prober.c;

public abstract class l
{
  private short[] a;
  private byte[] b;
  private float c;
  private String d;

  public l(short[] paramArrayOfShort, byte[] paramArrayOfByte, float paramFloat, boolean paramBoolean, String paramString)
  {
    this.a = paramArrayOfShort;
    this.b = paramArrayOfByte;
    this.c = paramFloat;
    this.d = paramString;
  }

  public final byte a(int paramInt)
  {
    return this.b[paramInt];
  }

  public final float a()
  {
    return this.c;
  }

  public final short a(byte paramByte)
  {
    int i = paramByte & 0xFF;
    return this.a[i];
  }

  public final String b()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.c.l
 * JD-Core Version:    0.6.0
 */