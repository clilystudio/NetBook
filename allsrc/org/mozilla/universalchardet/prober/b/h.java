package org.mozilla.universalchardet.prober.b;

public final class h extends g
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0xFF & paramArrayOfByte[paramInt];
    if ((i >= 129) && (i <= 159));
    for (int j = 188 * (i - 129); ; j = 188 * (31 + (i - 224)))
    {
      int k = 0xFF & paramArrayOfByte[(paramInt + 1)];
      int m = j + (k - 64);
      if (k >= 128)
        m--;
      return m;
      if ((i < 224) || (i > 239))
        break;
    }
    return -1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.b.h
 * JD-Core Version:    0.6.0
 */