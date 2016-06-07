package org.mozilla.universalchardet.prober.b;

public final class c extends g
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0xFF & paramArrayOfByte[paramInt];
    if (i >= 161)
      return -161 + ((0xFF & paramArrayOfByte[(paramInt + 1)]) + 94 * (i - 161));
    return -1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.b.c
 * JD-Core Version:    0.6.0
 */