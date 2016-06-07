package com.xiaomi.smack.d;

import android.text.TextUtils;
import com.xiaomi.a.a.d.a;
import java.util.Random;

public final class g
{
  private static final char[] a = "&quot;".toCharArray();
  private static final char[] b = "&apos;".toCharArray();
  private static final char[] c = "&amp;".toCharArray();
  private static final char[] d = "&lt;".toCharArray();
  private static final char[] e = "&gt;".toCharArray();
  private static Random f = new Random();
  private static char[] g = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

  public static String a(int paramInt)
  {
    char[] arrayOfChar = new char[5];
    for (int i = 0; i < 5; i++)
      arrayOfChar[i] = g[f.nextInt(71)];
    return new String(arrayOfChar);
  }

  public static String a(String paramString)
  {
    int i = 0;
    if (paramString == null)
      paramString = null;
    char[] arrayOfChar;
    StringBuilder localStringBuilder;
    int k;
    label101: 
    do
    {
      return paramString;
      arrayOfChar = paramString.toCharArray();
      int j = arrayOfChar.length;
      localStringBuilder = new StringBuilder((int)(1.3D * j));
      k = 0;
      if (k >= j)
        continue;
      int m = arrayOfChar[k];
      if (m <= 62)
      {
        if (m != 60)
          break label101;
        if (k > i)
          localStringBuilder.append(arrayOfChar, i, k - i);
        i = k + 1;
        localStringBuilder.append(d);
      }
      while (true)
      {
        k++;
        break;
        if (m == 62)
        {
          if (k > i)
            localStringBuilder.append(arrayOfChar, i, k - i);
          i = k + 1;
          localStringBuilder.append(e);
          continue;
        }
        if (m == 38)
        {
          if (k > i)
            localStringBuilder.append(arrayOfChar, i, k - i);
          if ((j > k + 5) && (arrayOfChar[(k + 1)] == '#') && (Character.isDigit(arrayOfChar[(k + 2)])) && (Character.isDigit(arrayOfChar[(k + 3)])) && (Character.isDigit(arrayOfChar[(k + 4)])) && (arrayOfChar[(k + 5)] == ';'))
            continue;
          i = k + 1;
          localStringBuilder.append(c);
          continue;
        }
        if (m == 34)
        {
          if (k > i)
            localStringBuilder.append(arrayOfChar, i, k - i);
          i = k + 1;
          localStringBuilder.append(a);
          continue;
        }
        if (m != 39)
          continue;
        if (k > i)
          localStringBuilder.append(arrayOfChar, i, k - i);
        i = k + 1;
        localStringBuilder.append(b);
      }
    }
    while (i == 0);
    if (k > i)
      localStringBuilder.append(arrayOfChar, i, k - i);
    return localStringBuilder.toString();
  }

  private static String a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null)
      paramString1 = null;
    int i;
    do
    {
      return paramString1;
      i = paramString1.indexOf(paramString2, 0);
    }
    while (i < 0);
    char[] arrayOfChar1 = paramString1.toCharArray();
    char[] arrayOfChar2 = paramString3.toCharArray();
    int j = paramString2.length();
    StringBuilder localStringBuilder = new StringBuilder(arrayOfChar1.length);
    localStringBuilder.append(arrayOfChar1, 0, i).append(arrayOfChar2);
    int k = i + j;
    for (int m = k; ; m = k)
    {
      int n = paramString1.indexOf(paramString2, m);
      if (n <= 0)
        break;
      localStringBuilder.append(arrayOfChar1, k, n - k).append(arrayOfChar2);
      k = n + j;
    }
    localStringBuilder.append(arrayOfChar1, k, arrayOfChar1.length - k);
    return localStringBuilder.toString();
  }

  public static String a(byte[] paramArrayOfByte)
  {
    return String.valueOf(a.a(paramArrayOfByte));
  }

  public static final String b(String paramString)
  {
    return a(a(a(a(a(paramString, "&lt;", "<"), "&gt;", ">"), "&quot;", "\""), "&apos;", "'"), "&amp;", "&");
  }

  public static String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return paramString;
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    int i = 0;
    if (i < paramString.length())
    {
      int j = paramString.charAt(i);
      if (((j >= 32) && (j <= 55295)) || ((j >= 57344) && (j <= 65533)) || ((j >= 65536) && (j <= 1114111)) || (j == 9) || (j == 10) || (j == 13));
      for (int k = 1; ; k = 0)
      {
        if (k != 0)
          localStringBuilder.append(j);
        i++;
        break;
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.d.g
 * JD-Core Version:    0.6.0
 */