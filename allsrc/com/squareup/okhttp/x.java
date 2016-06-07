package com.squareup.okhttp;

import java.net.IDN;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public final class x
{
  String a;
  String b = "";
  String c = "";
  String d;
  final List<String> e = new ArrayList();
  List<String> f;
  String g;
  private int h = -1;

  public x()
  {
    this.e.add("");
  }

  private static String a(String paramString)
  {
    try
    {
      String str = IDN.toASCII(paramString).toLowerCase(Locale.US);
      boolean bool = str.isEmpty();
      if (bool)
        return null;
      return str;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return null;
  }

  private void a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2)
      return;
    int i = paramString.charAt(paramInt1);
    label51: int j;
    label54: int k;
    int m;
    label80: String str;
    int n;
    label117: int i1;
    if ((i == 47) || (i == 92))
    {
      this.e.clear();
      this.e.add("");
      paramInt1++;
      j = paramInt1;
      if (j < paramInt2)
      {
        k = w.a(paramString, j, paramInt2, "/\\");
        if (k >= paramInt2)
          break label275;
        m = 1;
        str = w.a(paramString, j, k, " \"<>^`{}|/\\?#", true, false);
        if ((!str.equals(".")) && (!str.equalsIgnoreCase("%2e")))
          break label281;
        n = 1;
        if (n == 0)
        {
          if ((!str.equals("..")) && (!str.equalsIgnoreCase("%2e.")) && (!str.equalsIgnoreCase(".%2e")) && (!str.equalsIgnoreCase("%2e%2e")))
            break label287;
          i1 = 1;
          label165: if (i1 == 0)
            break label308;
          if ((!((String)this.e.remove(-1 + this.e.size())).isEmpty()) || (this.e.isEmpty()))
            break label293;
          this.e.set(-1 + this.e.size(), "");
        }
      }
    }
    label393: 
    while (true)
    {
      if (m != 0)
        k++;
      j = k;
      break label54;
      break;
      this.e.set(-1 + this.e.size(), "");
      break label51;
      label275: m = 0;
      break label80;
      label281: n = 0;
      break label117;
      label287: i1 = 0;
      break label165;
      label293: this.e.add("");
      continue;
      label308: if (((String)this.e.get(-1 + this.e.size())).isEmpty())
        this.e.set(-1 + this.e.size(), str);
      while (true)
      {
        if (m == 0)
          break label393;
        this.e.add("");
        break;
        this.e.add(str);
      }
    }
  }

  private static int b(String paramString, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    if (i < paramInt2);
    switch (paramString.charAt(i))
    {
    default:
    case '[':
      while (true)
      {
        i++;
        break label46;
        break;
        label46: i++;
        if (i >= paramInt2)
          continue;
        if (paramString.charAt(i) != ']')
          continue;
      }
      i = paramInt2;
    case ':':
    }
    return i;
  }

  private static String c(String paramString, int paramInt1, int paramInt2)
  {
    String str1 = w.a(paramString, paramInt1, paramInt2);
    String str3;
    if ((str1.startsWith("[")) && (str1.endsWith("]")))
    {
      InetAddress localInetAddress = d(str1, 1, -1 + str1.length());
      str3 = null;
      if (localInetAddress != null)
        str3 = localInetAddress.getHostAddress();
    }
    String str2;
    int i;
    int j;
    do
    {
      do
      {
        return str3;
        str2 = a(str1);
        str3 = null;
      }
      while (str2 == null);
      i = str2.length();
      j = w.a(str2, 0, i, "");
      str3 = null;
    }
    while (j != i);
    return str2;
  }

  private static InetAddress d(String paramString, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[16];
    int i = 0;
    int j = -1;
    int k = -1;
    int m = 1;
    if (m < paramInt2)
    {
      if (i == 16)
        return null;
      if ((m + 2 <= paramInt2) && (paramString.regionMatches(m, "::", 0, 2)))
      {
        if (j != -1)
          return null;
        m += 2;
        j = i + 2;
        if (m != paramInt2)
          break label509;
        i = j;
      }
    }
    else
    {
      if (i == 16)
        break label490;
      if (j != -1)
        break label455;
      return null;
    }
    if (i != 0)
    {
      if (!paramString.regionMatches(m, ":", 0, 1))
        break label161;
      m++;
    }
    while (true)
    {
      int n = 0;
      int i1 = m;
      while (true)
        if (i1 < paramInt2)
        {
          int i5 = w.a(paramString.charAt(i1));
          if (i5 != -1)
          {
            n = i5 + (n << 4);
            i1++;
            continue;
            label161: if (paramString.regionMatches(m, ".", 0, 1))
            {
              int i6 = i - 2;
              int i7 = i6;
              int i8 = k;
              int i9;
              if (i8 < paramInt2)
                if (i7 == 16)
                  i9 = 0;
              while (true)
              {
                if (i9 != 0)
                  break label383;
                return null;
                if (i7 != i6)
                {
                  if (paramString.charAt(i8) != '.')
                  {
                    i9 = 0;
                    continue;
                  }
                  i8++;
                }
                int i10 = 0;
                for (int i11 = i8; ; i11++)
                {
                  if (i11 >= paramInt2)
                    break label324;
                  int i13 = paramString.charAt(i11);
                  if ((i13 < 48) || (i13 > 57))
                    break label324;
                  if ((i10 == 0) && (i8 != i11))
                  {
                    i9 = 0;
                    break;
                  }
                  i10 = -48 + (i13 + i10 * 10);
                  if (i10 <= 255)
                    continue;
                  i9 = 0;
                  break;
                }
                label324: if (i11 - i8 == 0)
                {
                  i9 = 0;
                  continue;
                }
                int i12 = i7 + 1;
                arrayOfByte[i7] = (byte)i10;
                i7 = i12;
                i8 = i11;
                break;
                if (i7 != i6 + 4)
                {
                  i9 = 0;
                  continue;
                }
                i9 = 1;
              }
              label383: i += 2;
              break;
            }
            return null;
          }
        }
      int i2 = i1 - m;
      if ((i2 == 0) || (i2 > 4))
        return null;
      int i3 = i + 1;
      arrayOfByte[i] = (byte)(n >>> 8);
      i = i3 + 1;
      arrayOfByte[i3] = (byte)n;
      int i4 = i1;
      k = m;
      m = i4;
      break;
      label455: System.arraycopy(arrayOfByte, j, arrayOfByte, 16 - (i - j), i - j);
      Arrays.fill(arrayOfByte, j, j + (16 - i), 0);
      try
      {
        label490: InetAddress localInetAddress = InetAddress.getByAddress(arrayOfByte);
        return localInetAddress;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        throw new AssertionError();
      }
      label509: i = j;
    }
  }

  private static int e(String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      int i = Integer.parseInt(w.a(paramString, paramInt1, paramInt2, "", false, false));
      if ((i > 0) && (i <= 65535))
        return i;
      return -1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return -1;
  }

  final int a()
  {
    if (this.h != -1)
      return this.h;
    return w.a(this.a);
  }

  final w a(w paramw, String paramString)
  {
    int i = paramString.length();
    int j = 0;
    label72: int k;
    label80: int m;
    label150: int n;
    if (j < i)
      switch (paramString.charAt(j))
      {
      default:
        k = -1 + paramString.length();
        if (k < j)
          break;
        switch (paramString.charAt(k))
        {
        default:
          m = k + 1;
          if (m - j >= 2)
          {
            int i18 = paramString.charAt(j);
            if (((i18 < 97) || (i18 > 122)) && ((i18 < 65) || (i18 > 90)))
            {
              n = -1;
              label198: if (n == -1)
                break label428;
              if (!paramString.regionMatches(true, j, "https:", 0, 6))
                break label397;
              this.a = "https";
            }
          }
        case '\t':
        case '\n':
        case '\f':
        case '\r':
        case ' ':
        }
      case '\t':
      case '\n':
      case '\f':
      case '\r':
      case ' ':
      }
    int i2;
    for (int i1 = j + 6; ; i1 = j + 5)
    {
      i2 = 0;
      for (int i3 = i1; i3 < m; i3++)
      {
        int i17 = paramString.charAt(i3);
        if ((i17 != 92) && (i17 != 47))
          break;
        i2++;
      }
      j++;
      break;
      j = i;
      break label72;
      k--;
      break label80;
      m = j;
      break label150;
      for (n = j + 1; ; n++)
      {
        if (n >= m)
          break label391;
        int i19 = paramString.charAt(n);
        if (((i19 >= 97) && (i19 <= 122)) || ((i19 >= 65) && (i19 <= 90)) || (i19 == 43) || (i19 == 45) || (i19 == 46))
          continue;
        if (i19 == 58)
          break;
        n = -1;
        break;
      }
      label391: n = -1;
      break label198;
      label397: if (!paramString.regionMatches(true, j, "http:", 0, 5))
        break label426;
      this.a = "http";
    }
    label426: return null;
    label428: return null;
    int i4 = i1 + i2;
    int i5 = 0;
    int i6 = 0;
    int i7 = i4;
    int i8 = w.a(paramString, i7, m, "@/\\?#");
    if (i8 != m);
    int i14;
    for (int i9 = paramString.charAt(i8); ; i9 = -1)
      switch (i9)
      {
      default:
        break;
      case -1:
      case 35:
      case 47:
      case 63:
      case 92:
        i14 = b(paramString, i7, i8);
        if (i14 + 1 >= i8)
          break label779;
        this.d = c(paramString, i7, i14);
        this.h = e(paramString, i14 + 1, i8);
        if (this.h != -1)
          break label802;
        return null;
      case 64:
      }
    int i11;
    int i10;
    if (i5 == 0)
    {
      int i13 = w.a(paramString, i7, i8, ":");
      String str = w.a(paramString, i7, i13, " \"':;<=>@[]^`{}|/\\?#", true, false);
      if (i6 != 0)
        str = this.b + "%40" + str;
      this.b = str;
      if (i13 != i8)
      {
        i5 = 1;
        this.c = w.a(paramString, i13 + 1, i8, " \"':;<=>@[]\\^`{}|/\\?#", true, false);
      }
      i11 = 1;
      i10 = i5;
    }
    while (true)
    {
      int i12 = i8 + 1;
      i5 = i10;
      i6 = i11;
      i7 = i12;
      break;
      this.c = (this.c + "%40" + w.a(paramString, i7, i8, " \"':;<=>@[]\\^`{}|/\\?#", true, false));
      i10 = i5;
      i11 = i6;
    }
    label779: this.d = c(paramString, i7, i14);
    this.h = w.a(this.a);
    label802: if (this.d == null)
      return null;
    int i15 = w.a(paramString, i8, m, "?#");
    a(paramString, i8, i15);
    int i16;
    if ((i15 < m) && (paramString.charAt(i15) == '?'))
    {
      i16 = w.a(paramString, i15, m, "#");
      this.f = w.b(w.a(paramString, i15 + 1, i16, " \"'<>#", true, true));
    }
    while (true)
    {
      if ((i16 < m) && (paramString.charAt(i16) == '#'))
        this.g = w.a(paramString, i16 + 1, m, "", true, false);
      if (this.a == null)
        throw new IllegalStateException("scheme == null");
      if (this.d == null)
        throw new IllegalStateException("host == null");
      return new w(this, 0);
      i16 = i15;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append("://");
    if ((!this.b.isEmpty()) || (!this.c.isEmpty()))
    {
      localStringBuilder.append(this.b);
      if (!this.c.isEmpty())
      {
        localStringBuilder.append(':');
        localStringBuilder.append(this.c);
      }
      localStringBuilder.append('@');
    }
    if (this.d.indexOf(':') != -1)
    {
      localStringBuilder.append('[');
      localStringBuilder.append(this.d);
      localStringBuilder.append(']');
    }
    while (true)
    {
      int i = a();
      if (i != w.a(this.a))
      {
        localStringBuilder.append(':');
        localStringBuilder.append(i);
      }
      w.a(localStringBuilder, this.e);
      if (this.f != null)
      {
        localStringBuilder.append('?');
        w.b(localStringBuilder, this.f);
      }
      if (this.g != null)
      {
        localStringBuilder.append('#');
        localStringBuilder.append(this.g);
      }
      return localStringBuilder.toString();
      localStringBuilder.append(this.d);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.x
 * JD-Core Version:    0.6.0
 */