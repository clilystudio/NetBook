package com.d.a.a.a;

import java.io.UnsupportedEncodingException;

public class a
{
  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    int j;
    int k;
    int m;
    label73: int n;
    while (true)
    {
      int i;
      d locald;
      try
      {
        i = paramArrayOfByte.length;
        locald = new d(paramInt);
        j = i / 3 << 2;
        if (locald.c)
        {
          if (i % 3 <= 0)
            continue;
          j += 4;
          if ((!locald.d) || (i <= 0))
            break label171;
          k = 1 + (i - 1) / 57;
          if (!locald.e)
            break label206;
          m = 2;
          break;
          locald.a = new byte[n];
          locald.a(paramArrayOfByte, i);
          if ((a) || (locald.b == n))
            break label152;
          throw new AssertionError();
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new AssertionError(localUnsupportedEncodingException);
      }
      switch (i % 3)
      {
      case 0:
        label152: String str = new String(locald.a, "US-ASCII");
        return str;
        label171: n = j;
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      n = j + m * k;
      break label73;
      break;
      j += 2;
      break;
      j += 3;
      break;
      label206: m = 1;
    }
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    int i = arrayOfByte1.length;
    c localc = new c(new byte[i * 3 / 4]);
    if (!localc.a(arrayOfByte1, i))
      throw new IllegalArgumentException("bad base-64");
    if (localc.b == localc.a.length)
      return localc.a;
    byte[] arrayOfByte2 = new byte[localc.b];
    System.arraycopy(localc.a, 0, arrayOfByte2, 0, localc.b);
    return arrayOfByte2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.a.a.a
 * JD-Core Version:    0.6.0
 */