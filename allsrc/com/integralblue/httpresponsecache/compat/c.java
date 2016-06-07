package com.integralblue.httpresponsecache.compat;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public final class c
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122 };
  private static final char[] b = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };

  public static final String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, Charset paramCharset)
  {
    try
    {
      String str = new String(paramArrayOfByte, 0, paramInt2, paramCharset.name());
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new IllegalArgumentException(localUnsupportedEncodingException);
  }

  public static String a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int i = 0;
    char[] arrayOfChar1 = a;
    char[] arrayOfChar2 = new char[paramArrayOfByte.length << 1];
    int j = paramArrayOfByte.length;
    int k = 0;
    while (i < j)
    {
      int m = paramArrayOfByte[i];
      int n = k + 1;
      arrayOfChar2[k] = arrayOfChar1[(0xF & m >> 4)];
      k = n + 1;
      arrayOfChar2[n] = arrayOfChar1[(m & 0xF)];
      i++;
    }
    return new String(arrayOfChar2);
  }

  public static final boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  public static byte[] a(String paramString, Charset paramCharset)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes(paramCharset.name());
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new IllegalArgumentException(localUnsupportedEncodingException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.c
 * JD-Core Version:    0.6.0
 */