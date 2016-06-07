package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;

public abstract class CharsetProber
{
  private static boolean a(byte paramByte)
  {
    return (paramByte & 0x80) == 0;
  }

  private static boolean b(byte paramByte)
  {
    int i = paramByte & 0xFF;
    return (i < 65) || ((i > 90) && (i < 97)) || (i > 122);
  }

  public abstract String a();

  public abstract CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract float b();

  public final ByteBuffer b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramInt2);
    int i = paramInt1 + paramInt2;
    int j = paramInt1;
    int k = 0;
    if (paramInt1 < i)
    {
      byte b = paramArrayOfByte[paramInt1];
      if (!a(b))
        k = 1;
      while (true)
      {
        paramInt1++;
        break;
        if (!b(b))
          continue;
        if ((k != 0) && (paramInt1 > j))
        {
          localByteBuffer.put(paramArrayOfByte, j, paramInt1 - j);
          localByteBuffer.put(32);
          j = paramInt1 + 1;
          k = 0;
          continue;
        }
        j = paramInt1 + 1;
      }
    }
    if ((k != 0) && (paramInt1 > j))
      localByteBuffer.put(paramArrayOfByte, j, paramInt1 - j);
    return localByteBuffer;
  }

  public final ByteBuffer c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramInt2);
    int i = paramInt1 + paramInt2;
    int j = paramInt1;
    int k = 0;
    if (paramInt1 < i)
    {
      byte b = paramArrayOfByte[paramInt1];
      if (b == 62)
        k = 0;
      while (true)
      {
        if ((a(b)) && (b(b)))
        {
          if ((paramInt1 > j) && (k == 0))
          {
            localByteBuffer.put(paramArrayOfByte, j, paramInt1 - j);
            localByteBuffer.put(32);
          }
          j = paramInt1 + 1;
        }
        paramInt1++;
        break;
        if (b != 60)
          continue;
        k = 1;
      }
    }
    if ((k == 0) && (paramInt1 > j))
      localByteBuffer.put(paramArrayOfByte, j, paramInt1 - j);
    return localByteBuffer;
  }

  public abstract CharsetProber.ProbingState c();

  public abstract void d();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.CharsetProber
 * JD-Core Version:    0.6.0
 */