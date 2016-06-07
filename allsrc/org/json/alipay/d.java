package org.json.alipay;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class d
{
  private int a;
  private Reader b;
  private char c;
  private boolean d;

  private d(Reader paramReader)
  {
    if (paramReader.markSupported());
    while (true)
    {
      this.b = paramReader;
      this.d = false;
      this.a = 0;
      return;
      paramReader = new BufferedReader(paramReader);
    }
  }

  public d(String paramString)
  {
    this(new StringReader(paramString));
  }

  private String a(int paramInt)
  {
    if (paramInt == 0)
      return "";
    char[] arrayOfChar = new char[paramInt];
    boolean bool = this.d;
    int i = 0;
    if (bool)
    {
      this.d = false;
      arrayOfChar[0] = this.c;
      i = 1;
    }
    while (i < paramInt)
      try
      {
        int j = this.b.read(arrayOfChar, i, paramInt - i);
        if (j == -1)
          break;
        i += j;
      }
      catch (IOException localIOException)
      {
        throw new JSONException(localIOException);
      }
    this.a = (i + this.a);
    if (i < paramInt)
      throw a("Substring bounds error");
    this.c = arrayOfChar[(paramInt - 1)];
    return new String(arrayOfChar);
  }

  public final JSONException a(String paramString)
  {
    return new JSONException(paramString + toString());
  }

  public final void a()
  {
    if ((this.d) || (this.a <= 0))
      throw new JSONException("Stepping back two steps is not supported");
    this.a = (-1 + this.a);
    this.d = true;
  }

  public final char b()
  {
    if (this.d)
    {
      this.d = false;
      if (this.c != 0)
        this.a = (1 + this.a);
      return this.c;
    }
    int i;
    try
    {
      i = this.b.read();
      if (i <= 0)
      {
        this.c = '\000';
        return '\000';
      }
    }
    catch (IOException localIOException)
    {
      throw new JSONException(localIOException);
    }
    this.a = (1 + this.a);
    this.c = (char)i;
    return this.c;
  }

  public final char c()
  {
    int i;
    do
      while (true)
      {
        i = b();
        if (i == 47)
        {
          switch (b())
          {
          default:
            a();
            return '/';
          case '/':
            int m;
            do
            {
              m = b();
              if ((m == 10) || (m == 13))
                break;
            }
            while (m != 0);
            break;
          case '*':
          }
          int k;
          do
          {
            if (k == 42)
            {
              if (b() == '/')
                break;
              a();
            }
            k = b();
          }
          while (k != 0);
          throw a("Unclosed comment");
        }
        if (i != 35)
          break;
        int j;
        do
        {
          j = b();
          if ((j == 10) || (j == 13))
            break;
        }
        while (j != 0);
      }
    while ((i != 0) && (i <= 32));
    return i;
  }

  public final Object d()
  {
    char c1 = c();
    StringBuffer localStringBuffer2;
    char c4;
    switch (c1)
    {
    default:
      localStringBuffer2 = new StringBuffer();
      c4 = c1;
    case '"':
    case '\'':
    case '{':
    case '(':
    case '[':
    }
    while ((c4 >= ' ') && (",:]}/\\\"[{;=#".indexOf(c4) < 0))
    {
      localStringBuffer2.append(c4);
      c4 = b();
      continue;
      StringBuffer localStringBuffer1 = new StringBuffer();
      while (true)
      {
        char c2 = b();
        switch (c2)
        {
        default:
          if (c2 != c1)
            break;
          return localStringBuffer1.toString();
        case '\000':
        case '\n':
        case '\r':
          throw a("Unterminated string");
        case '\\':
          char c3 = b();
          switch (c3)
          {
          default:
            localStringBuffer1.append(c3);
            break;
          case 'b':
            localStringBuffer1.append('\b');
            break;
          case 't':
            localStringBuffer1.append('\t');
            break;
          case 'n':
            localStringBuffer1.append('\n');
            break;
          case 'f':
            localStringBuffer1.append('\f');
            break;
          case 'r':
            localStringBuffer1.append('\r');
            break;
          case 'u':
            localStringBuffer1.append((char)Integer.parseInt(a(4), 16));
            break;
          case 'x':
            localStringBuffer1.append((char)Integer.parseInt(a(2), 16));
          }
          break;
        }
        localStringBuffer1.append(c2);
      }
      a();
      return new b(this);
      a();
      return new a(this);
    }
    a();
    String str = localStringBuffer2.toString().trim();
    if (str.equals(""))
      throw a("Missing value");
    if (str.equalsIgnoreCase("true"))
      return Boolean.TRUE;
    if (str.equalsIgnoreCase("false"))
      return Boolean.FALSE;
    if (str.equalsIgnoreCase("null"))
      return b.a;
    if (((c1 >= '0') && (c1 <= '9')) || (c1 == '.') || (c1 == '-') || (c1 == '+'))
    {
      if (c1 == '0')
      {
        if ((str.length() <= 2) || ((str.charAt(1) != 'x') && (str.charAt(1) != 'X')))
          break label601;
        try
        {
          Integer localInteger3 = new Integer(Integer.parseInt(str.substring(2), 16));
          return localInteger3;
        }
        catch (Exception localException5)
        {
        }
      }
      while (true)
      {
        try
        {
          Integer localInteger1 = new Integer(str);
          return localInteger1;
        }
        catch (Exception localException1)
        {
          try
          {
            Long localLong = new Long(str);
            return localLong;
          }
          catch (Exception localException2)
          {
            try
            {
              Double localDouble = new Double(str);
              return localDouble;
            }
            catch (Exception localException3)
            {
              return str;
            }
          }
        }
        try
        {
          label601: Integer localInteger2 = new Integer(Integer.parseInt(str, 8));
          return localInteger2;
        }
        catch (Exception localException4)
        {
        }
      }
    }
    return str;
  }

  public final String toString()
  {
    return " at character " + this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.json.alipay.d
 * JD-Core Version:    0.6.0
 */