package com.xiaomi.push.service;

import com.xiaomi.a.a.d.a;

public final class W
{
  private byte[] a = new byte[256];
  private int b = 0;
  private int c = 0;
  private int d = -666;

  private static int a(byte paramByte)
  {
    if (paramByte >= 0)
      return paramByte;
    return paramByte + 256;
  }

  public static String a(byte[] paramArrayOfByte, String paramString)
  {
    return String.valueOf(a.a(a(paramArrayOfByte, paramString.getBytes())));
  }

  private static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfByte[paramInt1];
    paramArrayOfByte[paramInt1] = paramArrayOfByte[paramInt2];
    paramArrayOfByte[paramInt2] = i;
  }

  public static byte[] a(String paramString1, String paramString2)
  {
    int i = 0;
    byte[] arrayOfByte1 = a.a(paramString1);
    byte[] arrayOfByte2 = paramString2.getBytes();
    byte[] arrayOfByte3 = new byte[1 + arrayOfByte1.length + arrayOfByte2.length];
    for (int j = 0; j < arrayOfByte1.length; j++)
      arrayOfByte3[j] = arrayOfByte1[j];
    arrayOfByte3[arrayOfByte1.length] = 95;
    while (i < arrayOfByte2.length)
    {
      arrayOfByte3[(i + (1 + arrayOfByte1.length))] = arrayOfByte2[i];
      i++;
    }
    return arrayOfByte3;
  }

  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[paramArrayOfByte2.length];
    W localW = new W();
    int j = paramArrayOfByte1.length;
    for (int k = 0; k < 256; k++)
      localW.a[k] = (byte)k;
    localW.c = 0;
    for (localW.b = 0; localW.b < 256; localW.b = (1 + localW.b))
    {
      localW.c = ((localW.c + a(localW.a[localW.b]) + a(paramArrayOfByte1[(localW.b % j)])) % 256);
      a(localW.a, localW.b, localW.c);
    }
    localW.c = 0;
    localW.b = 0;
    while (i < paramArrayOfByte2.length)
    {
      int m = paramArrayOfByte2[i];
      localW.b = ((1 + localW.b) % 256);
      localW.c = ((localW.c + a(localW.a[localW.b])) % 256);
      a(localW.a, localW.b, localW.c);
      arrayOfByte[i] = (byte)(m ^ localW.a[((a(localW.a[localW.b]) + a(localW.a[localW.c])) % 256)]);
      i++;
    }
    return arrayOfByte;
  }

  public static byte[] b(byte[] paramArrayOfByte, String paramString)
  {
    return a(paramArrayOfByte, a.a(paramString));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.W
 * JD-Core Version:    0.6.0
 */