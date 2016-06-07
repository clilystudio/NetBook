package org.mozilla.universalchardet.prober.a;

public final class a extends b
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((0xFF & paramArrayOfByte[paramInt]) == 164)
    {
      int i = 0xFF & paramArrayOfByte[(paramInt + 1)];
      if ((i >= 161) && (i <= 243))
        return i - 161;
    }
    return -1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.a.a
 * JD-Core Version:    0.6.0
 */