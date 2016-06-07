package org.mozilla.universalchardet.prober.a;

public final class d extends b
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((0xFF & paramArrayOfByte[paramInt]) == 130)
    {
      int i = 0xFF & paramArrayOfByte[(paramInt + 1)];
      if ((i >= 159) && (i <= 241))
        return i - 159;
    }
    return -1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.a.d
 * JD-Core Version:    0.6.0
 */