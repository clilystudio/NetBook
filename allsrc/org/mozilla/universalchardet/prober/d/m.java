package org.mozilla.universalchardet.prober.d;

public abstract class m
{
  private k a;
  private int b;
  private k c;
  private int[] d;
  private String e;

  public m(k paramk1, int paramInt, k paramk2, int[] paramArrayOfInt, String paramString)
  {
    this.a = paramk1;
    this.b = paramInt;
    this.c = paramk2;
    this.d = paramArrayOfInt;
    this.e = paramString;
  }

  public final int a(byte paramByte)
  {
    int i = paramByte & 0xFF;
    return this.a.a(i);
  }

  public final int a(int paramInt)
  {
    return this.d[paramInt];
  }

  public final int a(int paramInt1, int paramInt2)
  {
    return this.c.a(paramInt1 + paramInt2 * this.b);
  }

  public final String a()
  {
    return this.e;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.d.m
 * JD-Core Version:    0.6.0
 */