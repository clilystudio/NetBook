package com.alipay.android.phone.mrpc.core;

import android.text.format.Time;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class p
{
  private static final Pattern a = Pattern.compile("([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])");
  private static final Pattern b = Pattern.compile("[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})");

  public static long a(String paramString)
  {
    int i = 1;
    Matcher localMatcher1 = a.matcher(paramString);
    int j;
    int m;
    Object localObject;
    int n;
    if (localMatcher1.find())
    {
      int i1 = b(localMatcher1.group(i));
      j = c(localMatcher1.group(2));
      m = d(localMatcher1.group(3));
      localObject = e(localMatcher1.group(4));
      n = i1;
      if (m < 2038)
        break label194;
      m = 2038;
      j = 0;
    }
    while (true)
    {
      Time localTime = new Time("UTC");
      localTime.set(((q)localObject).c, ((q)localObject).b, ((q)localObject).a, i, j, m);
      return localTime.toMillis(false);
      Matcher localMatcher2 = b.matcher(paramString);
      if (localMatcher2.find())
      {
        j = c(localMatcher2.group(i));
        int k = b(localMatcher2.group(2));
        q localq = e(localMatcher2.group(3));
        m = d(localMatcher2.group(4));
        localObject = localq;
        n = k;
        break;
      }
      throw new IllegalArgumentException();
      label194: i = n;
    }
  }

  private static int b(String paramString)
  {
    if (paramString.length() == 2)
      return 10 * ('￐' + paramString.charAt(0)) + ('￐' + paramString.charAt(1));
    return '￐' + paramString.charAt(0);
  }

  private static int c(String paramString)
  {
    int i = -291 + (Character.toLowerCase(paramString.charAt(0)) + Character.toLowerCase(paramString.charAt(1)) + Character.toLowerCase(paramString.charAt(2)));
    int j = 0;
    switch (i)
    {
    default:
      throw new IllegalArgumentException();
    case 10:
      j = 1;
    case 22:
      return j;
    case 29:
      return 2;
    case 32:
      return 3;
    case 36:
      return 4;
    case 42:
      return 5;
    case 40:
      return 6;
    case 26:
      return 7;
    case 37:
      return 8;
    case 35:
      return 9;
    case 48:
      return 10;
    case 9:
    }
    return 11;
  }

  private static int d(String paramString)
  {
    if (paramString.length() == 2)
    {
      int i = 10 * ('￐' + paramString.charAt(0)) + ('￐' + paramString.charAt(1));
      if (i >= 70)
        return i + 1900;
      return i + 2000;
    }
    if (paramString.length() == 3)
      return 1900 + (100 * ('￐' + paramString.charAt(0)) + 10 * ('￐' + paramString.charAt(1)) + ('￐' + paramString.charAt(2)));
    if (paramString.length() == 4)
      return 1000 * ('￐' + paramString.charAt(0)) + 100 * ('￐' + paramString.charAt(1)) + 10 * ('￐' + paramString.charAt(2)) + ('￐' + paramString.charAt(3));
    return 1970;
  }

  private static q e(String paramString)
  {
    int i = '￐' + paramString.charAt(0);
    int j;
    if (paramString.charAt(1) != ':')
    {
      int i5 = i * 10;
      j = 2;
      i = i5 + ('￐' + paramString.charAt(1));
    }
    while (true)
    {
      int k = j + 1;
      int m = k + 1;
      int n = 10 * ('￐' + paramString.charAt(k));
      int i1 = m + 1;
      int i2 = n + ('￐' + paramString.charAt(m));
      int i3 = i1 + 1;
      int i4 = i3 + 1;
      return new q(i, i2, 10 * ('￐' + paramString.charAt(i3)) + ('￐' + paramString.charAt(i4)));
      j = 1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.p
 * JD-Core Version:    0.6.0
 */